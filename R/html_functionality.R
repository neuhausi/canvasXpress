#' cxHtmlPage - create a stand-alone HTML page with embedded canvasXpress widget
#'
#' #TODO
#'
#' @return Stand-alone HTML page with embedded canvasXpress chart
#'
#' @export
cxHtmlPage <- function(chartObject, width = "100%", height = "70vh") {
    if (any(is.null(chartObject),
            is.na(chartObject),
            !inherits(chartObject, "canvasXpress"))) {
        stop("chartObject must be supplied and be a canvasXpress object")
    }

    tryCatch({
        htmltools::validateCssUnit(width)
        htmltools::validateCssUnit(height)
    },
    error = function(e) {
        stop("width and height must be valid CSS units")
    })

    tmp_widget <- tempfile('temp_widget_', fileext = '.html')
    tmp_md     <- tempfile('temp_md_',     fileext = ".md")
    tmp_html   <- tempfile('temp_html_',   fileext = ".html")

    page_rmd <- c("---",
                  "output: ",
                  "  html_document",
                  "---",
                  "",
                  "```{r echo = FALSE}",
                  paste0("htmltools::includeHTML('", tmp_widget, "')"),
                  "```")

    htmlwidgets::saveWidget(chartObject, tmp_widget)

    knitr::knit(text   = page_rmd,
                output = tmp_md,
                envir  = new.env(),
                quiet  = TRUE)

    suppressWarnings({
        # we do not want a title on the HTML page, so are suppressing the warning about it
        rmarkdown::render(input          = tmp_md,
                          output_format  = rmarkdown::html_document(pandoc_args = c("--self-contained")),
                          output_file    = tmp_html,
                          quiet          = TRUE)
    })

    html_file <- paste(readLines(tmp_html), collapse = "\n")

    try({
        unlink(c(tmp_widget, tmp_md, tmp_html))
    }, silent = TRUE)

    html_file
}
