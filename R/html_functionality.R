#' Stand-Alone HTML Page Creation
#'
#' This function creates and returns a stand-alone HTML page containing
#' the given canvasXpress object.  Width and height can be inferred from
#' the canvasXpress object (default) or overridden for the page output.
#'
#' @param chartObject a canvasXpress plot object
#' @param width       plot width override for the HTML page (valid CSS units)  - default = NULL
#' @param height      plot height override for the HTML page (valid CSS units) - default = NULL
#'
#' @return a character string containing a self-contained html page
#'
#' @examples
#' my_chart <- canvasXpress(data      = data.frame(Sample1 = c(33, 48),
#'                                                 Sample2 = c(44, 59),
#'                                                 Sample3 = c(55, 6)),
#'                          graphType = "Bar",
#'                          title     = "Example Bar Chart",
#'                          width     = "600px")
#'
#' # create a page using the chart dimensions on my_chart
#' html_page <- cxHtmlPage(my_chart)
#'
#' # or change the chart width/height for this page:
#' html_page <- cxHtmlPage(my_chart, width = "100%", height = "70vh")
#'
#' # save page for viewing/sharing
#' writeLines(html_page, tempfile(fileext = ".html"))
#'
#' @export
cxHtmlPage <- function(chartObject, width = NULL, height = NULL) {
    if (any(is.null(chartObject),
            is.na(chartObject),
            !inherits(chartObject, "canvasXpress"))) {
        stop("chartObject must be supplied and be a canvasXpress object")
    }

    tryCatch({
        if (!is.null(width))  htmltools::validateCssUnit(width)
        if (!is.null(height)) htmltools::validateCssUnit(height)
    },
    error = function(e) {
        stop("If width or height are specified they must be valid CSS units.")
    })

    result <- NULL

    tryCatch({
        if (!is.null(width)) {
            chartObject$width <- width
        }

        if (!is.null(height)) {
            chartObject$height <- height
        }

        tmp_widget <- tempfile('temp_widget_', fileext = '.html')
        tmp_md     <- tempfile('temp_md_',     fileext = ".md")
        tmp_html   <- tempfile('temp_html_',   fileext = ".html")

        page_rmd <- c("---",
                      "title: '&nbsp;'",
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

        # we do not want a title on the HTML page, so are suppressing the warning about it
        rmarkdown::render(input          = tmp_md,
                          output_format  = rmarkdown::html_document(pandoc_args = c("--self-contained")),
                          output_file    = tmp_html,
                          quiet          = TRUE)

        result <- paste(readLines(tmp_html), collapse = "\n")

        try({
            unlink(c(tmp_widget, tmp_md, tmp_html))
        }, silent = TRUE)
    },
    error = function(e) {
        warning("Unable to create page due to: ", e)
    })

    result
}
