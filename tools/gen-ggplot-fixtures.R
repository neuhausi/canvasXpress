#!/usr/bin/env Rscript
# Regenerate golden ggplot fixtures for the per-layer pipeline (P0).
#
# For each entry in the corpus (tests/testthat/helper-ggplot-corpus.R) this runs
# ggplot.as.list() and writes the JSON to TWO committed locations so the R and
# JS suites share one artifact and never drift:
#   1. <pkg>/tests/testthat/fixtures/ggplot/<name>.json   (R golden, in-package)
#   2. <repo>/tests/regression/fixtures/ggplot/<name>.json (Playwright input)
#
# The generator is the ONLY writer of these files. Regeneration is deliberate
# (like Playwright --update-snapshots): after changing the converter, run
#   Rscript tools/gen-ggplot-fixtures.R
# from the R/canvasXpress package directory, review the JSON diff, then
#   npx playwright test ggplot-fixtures --update-snapshots
# to refresh the pixel baselines.
#
# See docs/plans/ggplot/perlayer-ggplot-plan.md (S6) for the pipeline.

suppressMessages({
  library(ggplot2)
  library(pkgload)
})

# Locate the package root (dir containing DESCRIPTION) by walking up from getwd.
find_pkg_root <- function(start = getwd()) {
  dir <- normalizePath(start)
  repeat {
    if (file.exists(file.path(dir, "DESCRIPTION"))) {
      return(dir)
    }
    parent <- dirname(dir)
    if (identical(parent, dir)) {
      stop("Could not find package root (DESCRIPTION) above ", start)
    }
    dir <- parent
  }
}

pkg_root  <- find_pkg_root()
repo_root <- normalizePath(file.path(pkg_root, "..", ".."))

pkg_dir <- file.path(pkg_root, "tests", "testthat", "fixtures", "ggplot")
reg_dir <- file.path(repo_root, "tests", "regression", "fixtures", "ggplot")
dir.create(pkg_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(reg_dir, recursive = TRUE, showWarnings = FALSE)

suppressMessages(pkgload::load_all(pkg_root, quiet = TRUE))
source(file.path(pkg_root, "tests", "testthat", "helper-ggplot-corpus.R"))

corpus <- cx_ggplot_corpus()
for (entry in corpus) {
  json <- as.character(ggplot.as.list(entry$plot))
  writeLines(json, file.path(pkg_dir, paste0(entry$name, ".json")))
  writeLines(json, file.path(reg_dir, paste0(entry$name, ".json")))
  cat("wrote", entry$name, "\n")
}
cat("Done:", length(corpus), "fixtures ->\n  ", pkg_dir, "\n  ", reg_dir, "\n")
