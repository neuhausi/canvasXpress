context("canvasXpress webshotPrint")
skip_if_offline(host = "www.canvasxpress.org")

temp.html  <- tempfile('test', fileext = '.html')
result.png <- tempfile('test', fileext = '.png')

test_that("scatterplot webshotPrint", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-ageheightt-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/cX-ageheightt-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data        = y,
                           smpAnnot    = x,
                           graphType   = "Scatter2D",
                           title       = "Scatterplot - webshot print")

    if (interactive()) {
        # export to PNG and print in viewer
        htmlwidgets::saveWidget(result, file = temp.html)
        expect_true(file.exists(temp.html))

        webshot::webshot(temp.html,
                         file    = result.png,
                         vwidth  = result$width,
                         vheight = result$height)
        expect_true(file.exists(result.png))
        grid::grid.raster(png::readPNG(result.png))
    }
    else {
        expect_true(TRUE)
    }
})

# cleanup temp files
suppressWarnings({file.remove(c(temp.html, result.png))})
