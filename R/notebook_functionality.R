# Notebook (Jupyter / IRkernel) display support for CanvasXpress widgets.
#
# repr::repr_html.htmlwidget renders a widget by base64-inlining every one of its
# dependencies. For CanvasXpress that means the 3.8 MB engine and its 157 KB
# stylesheet are embedded in EVERY chart output -- about 5.3 MB per chart, so a
# four-chart notebook is ~21 MB on disk -- even though the chart markup itself is
# roughly 400 bytes.
#
# The method below is registered on load (only when repr is installed) and takes
# S3 precedence over repr's htmlwidget method. It deliberately keeps repr's
# structure: the same document skeleton, and the same base64 inlining for the
# small htmlwidgets runtime and the CanvasXpress binding, so rendering behavior
# is unchanged. Only the engine itself is served from the CDN, which is where a
# browser would fetch it anyway. Output drops from ~5.3 MB to ~55 KB per chart.


CX_NOTEBOOK_JS_URL  <- "https://www.canvasxpress.org/dist/canvasXpress.min.js"
CX_NOTEBOOK_CSS_URL <- "https://www.canvasxpress.org/dist/canvasXpress.css"

# repr's own wrapper, reproduced so the output keeps the shape other frontends
# already expect from an htmlwidget.
CX_NOTEBOOK_SKELETON <- paste0(
    "<!doctype html>\n<html>\n\t<head>\n\t\t<meta charset=\"utf-8\">\n",
    "\t\t%s\n\t</head>\n\t<body>\n\t\t%s\n\t</body>\n</html>\n")


#' Base64 data URI for a dependency file
#'
#' @param path  Path to the file to encode.
#' @param mime  Mime type to declare in the URI.
#'
#' @return A \code{data:} URI as a single string.
#'
#' @noRd
cxDataUri <- function(path, mime) {
    encoded <- jsonlite::base64_enc(readBin(path, "raw", file.size(path)))
    paste0("data:", mime, ";base64,", gsub("[\r\n]", "", encoded))
}


#' Render one html dependency for notebook output
#'
#' The CanvasXpress engine is linked from the CDN; every other dependency is
#' inlined exactly as repr would do it, since together they are only ~40 KB and
#' inlining keeps the widget working without a package path to resolve.
#'
#' @param dependency  An \code{htmltools} html dependency.
#'
#' @return A string of \code{<script>} / \code{<link>} tags, possibly empty.
#'
#' @noRd
cxNotebookDependency <- function(dependency) {
    if (identical(dependency$name, "canvasXpress")) {
        return(paste0(
            "<link href=\"", CX_NOTEBOOK_CSS_URL, "\" rel=\"stylesheet\" />\n",
            "<script src=\"", CX_NOTEBOOK_JS_URL, "\"></script>"))
    }

    tags <- character()
    base <- dependency$src$file

    # A dependency already served over http(s) needs no inlining.
    if (is.null(base)) {
        return("")
    }

    for (script in dependency$script) {
        path <- file.path(base, script)
        if (file.exists(path)) {
            tags <- c(tags, sprintf("<script title=\"%s\" src=\"%s\"></script>",
                                    sub("\"", "", dependency$name),
                                    cxDataUri(path, "application/javascript")))
        }
    }

    for (sheet in dependency$stylesheet) {
        path <- file.path(base, sheet)
        if (file.exists(path)) {
            tags <- c(tags, sprintf("<link href=\"%s\" rel=\"stylesheet\" />",
                                    cxDataUri(path, "text/css;charset-utf-8")))
        }
    }

    paste(tags, collapse = "\n")
}


#' HTML representation of a CanvasXpress widget for Jupyter notebooks
#'
#' Registered as the \code{repr_html} method for CanvasXpress widgets so that
#' notebook output carries a CDN reference to the engine instead of a base64
#' copy of it. Set \code{options(canvasXpress.notebook.selfcontained = TRUE)} to
#' fall back to repr's fully inlined output, which renders with no network
#' access at the cost of several megabytes per chart.
#'
#' @param obj  A CanvasXpress htmlwidget.
#' @param ...  Passed through to \code{htmltools::renderTags}.
#'
#' @return A single string of HTML.
#'
#' @noRd
cxNotebookHtml <- function(obj, ...) {
    if (isTRUE(getOption("canvasXpress.notebook.selfcontained", FALSE))) {
        inlined <- utils::getS3method("repr_html", "htmlwidget",
                                      envir = asNamespace("repr"))
        return(inlined(obj, ...))
    }

    rendered     <- htmltools::renderTags(obj, ...)
    dependencies <- vapply(rendered$dependencies, cxNotebookDependency, character(1))

    sprintf(CX_NOTEBOOK_SKELETON,
            paste(dependencies[nzchar(dependencies)], collapse = "\n"),
            rendered$html)
}


.onLoad <- function(libname, pkgname) {
    # repr is the Jupyter display layer; outside a notebook it need not exist,
    # so the method is registered only when it does.
    if (requireNamespace("repr", quietly = TRUE)) {
        registerS3method("repr_html", "canvasXpress", cxNotebookHtml,
                         envir = asNamespace("repr"))
    }
    invisible()
}
