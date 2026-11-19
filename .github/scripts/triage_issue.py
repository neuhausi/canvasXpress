#!/usr/bin/env python3
"""Triage a freshly opened GitHub issue with Claude.

Reads the issue from the environment (populated by the workflow), asks Claude to
decide whether it is a well-defined, meritorious issue, then acts via the `gh`
CLI:

  * needs-info  -> post a comment asking for the specific missing detail and add
                   the `needs-more-info` label.
  * valid       -> add the `bug` or `enhancement` label and assign @neuhausi.

The model is instructed to return a single strict-JSON object so we never parse
prose. Any failure (missing key, bad JSON, API error) is non-fatal: we leave the
issue untouched and exit 0 so a transient hiccup never blocks a contributor.
"""

import json
import os
import subprocess
import sys

import anthropic

# ---- Decision contract ------------------------------------------------------
# Claude must return exactly this shape. Keeping it tiny makes it reliable.
SYSTEM_PROMPT = """\
You triage incoming GitHub issues for an open-source software project. Judge ONLY
the issue as written against the repository context. Decide:

1. Is it well-defined? A well-defined issue states what happened or what is wanted
   clearly enough to act on. A BUG report needs: what was done, what was expected,
   and what happened instead (ideally a reproducer, code, version, or error text).
   A FEATURE request needs: the capability wanted and why / the use case.
2. Does it have merit? It is on-topic for THIS repository and is not spam, a
   duplicate-looking one-liner, a support question better asked elsewhere, or empty.

Return a SINGLE JSON object, no markdown fence, with these fields:
  "decision": "valid" | "needs_info"
  "type": "bug" | "feature" | null        // the kind, when decision is "valid"; else null
  "reasons": [string, ...]                // brief, why you decided this
  "comment": string                       // the GitHub comment body to post (see below)

Rules for "comment":
  * If decision is "needs_info": write a friendly, specific request listing exactly
    what the reporter should add (e.g. a minimal reproducer, the exact input/prompt,
    expected vs actual output, versions, error text). Reference what IS present so it
    does not feel generic. Markdown is fine.
  * If decision is "valid": write a short acknowledgement confirming it was triaged
    as a bug or feature and assigned for review. One or two sentences.
Never invent facts about the project. Be concise and kind.
"""


def getenv(name, default=""):
    return os.environ.get(name, default) or default


def run_gh(args):
    """Run a `gh` command, returning (ok, output). Never raises."""
    try:
        result = subprocess.run(
            ["gh"] + args,
            capture_output=True,
            text=True,
            check=False,
        )
        if result.returncode != 0:
            sys.stderr.write("gh %s failed: %s\n" % (" ".join(args), result.stderr.strip()))
            return False, result.stderr
        return True, result.stdout
    except FileNotFoundError:
        sys.stderr.write("gh CLI not found on runner\n")
        return False, ""


def ensure_label(repo, name, color, description):
    """Create the label if it does not already exist (idempotent)."""
    run_gh([
        "label", "create", name,
        "--repo", repo,
        "--color", color,
        "--description", description,
        "--force",  # update color/description if it exists, don't error
    ])


def ask_claude(model, repo_context, title, body):
    """Return the parsed decision dict, or None on any failure."""
    client = anthropic.Anthropic()  # reads ANTHROPIC_API_KEY from env
    user_content = (
        "Repository context:\n%s\n\n"
        "Issue title:\n%s\n\n"
        "Issue body:\n%s\n"
    ) % (repo_context, title, body or "(empty)")

    try:
        message = client.messages.create(
            model=model,
            max_tokens=1024,
            system=SYSTEM_PROMPT,
            messages=[{"role": "user", "content": user_content}],
        )
    except Exception as exc:  # noqa: BLE001 - triage must never hard-fail
        sys.stderr.write("Anthropic API error: %s\n" % exc)
        return None

    text = "".join(block.text for block in message.content if block.type == "text").strip()
    # Tolerate an accidental ```json fence.
    if text.startswith("```"):
        text = text.strip("`")
        text = text[text.find("{"): text.rfind("}") + 1]

    try:
        decision = json.loads(text)
    except json.JSONDecodeError:
        sys.stderr.write("Could not parse model JSON:\n%s\n" % text)
        return None

    if decision.get("decision") not in ("valid", "needs_info"):
        sys.stderr.write("Unexpected decision value: %r\n" % decision.get("decision"))
        return None
    return decision


def main():
    repo = getenv("GITHUB_REPOSITORY")
    number = getenv("ISSUE_NUMBER")
    title = getenv("ISSUE_TITLE")
    body = getenv("ISSUE_BODY")
    assignee = getenv("ASSIGNEE", "neuhausi")
    model = getenv("TRIAGE_MODEL", "claude-sonnet-5-5")
    repo_context = getenv("REPO_CONTEXT", "A CanvasXpress companion repository.")

    if not repo or not number:
        sys.stderr.write("Missing GITHUB_REPOSITORY or ISSUE_NUMBER; nothing to do.\n")
        return 0

    decision = ask_claude(model, repo_context, title, body)
    if decision is None:
        # Soft-fail: leave the issue for a human rather than guessing.
        return 0

    comment = decision.get("comment") or ""
    print("Decision: %s (type=%s)" % (decision.get("decision"), decision.get("type")))
    for reason in decision.get("reasons", []):
        print("  - %s" % reason)

    # Make sure the labels we use exist, with friendly colors.
    ensure_label(repo, "needs-more-info", "d4c5f9", "Awaiting more detail from the reporter")
    ensure_label(repo, "bug", "d73a4a", "Something isn't working")
    ensure_label(repo, "enhancement", "a2eeef", "New feature or request")

    if decision["decision"] == "needs_info":
        if comment:
            run_gh(["issue", "comment", number, "--repo", repo, "--body", comment])
        run_gh(["issue", "edit", number, "--repo", repo, "--add-label", "needs-more-info"])
        return 0

    # decision == "valid"
    label = "bug" if decision.get("type") == "bug" else "enhancement"
    run_gh(["issue", "edit", number, "--repo", repo, "--add-label", label])
    run_gh(["issue", "edit", number, "--repo", repo, "--add-assignee", assignee])
    if comment:
        run_gh(["issue", "comment", number, "--repo", repo, "--body", comment])
    return 0


if __name__ == "__main__":
    sys.exit(main())
