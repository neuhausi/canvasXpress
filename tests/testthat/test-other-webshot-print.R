context("canvasXpress webshotPrint")

temp.html  <- tempfile('test', fileext = '.html')
result.png <- tempfile('test', fileext = '.png')

test_that("scatterplot webshotPrint", {

    y <- read.table(system.file("extdata", "cX-ageheightt-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-ageheightt-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    result <- canvasXpress(data    = y,
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
file.remove(c(temp.html, result.png))
