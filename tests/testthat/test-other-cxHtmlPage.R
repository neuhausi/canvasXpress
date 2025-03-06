context("canvasXpress cxHtmlPage creation")
skip_if_offline(host = "www.canvasxpress.org")


test_that("scatterplot cxHtmlPage", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    if (is.null(rmarkdown:::find_pandoc()$dir)) {
        skip('Pandoc not installed')
    }

    result <- canvasXpress(data        = y,
                           smpAnnot    = x,
                           graphType   = "Scatter2D",
                           title       = "Scatterplot - webshot print")

    html_page <- cxHtmlPage(result)
    expect_true(!is.null(html_page))

    expect_error(cxHtmlPage(result, width  = "bad"))
    expect_error(cxHtmlPage(result, height = "bad"))

    expect_true(!is.null(cxHtmlPage(result, width = "50vw", height = "100%")))
    expect_true(!is.null(cxHtmlPage(result, width = "100px", height = "20vh")))
})
