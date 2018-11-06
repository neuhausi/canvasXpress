context("canvasXpress webshotPrint")

temp.html  <- 'test.html'
result.png <- 'test.png'

test_that("scatterplot webshotPrint", {

    y <- read.table(system.file("extdata", "cX-ageheightt-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-ageheightt-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    result <- canvasXpress(data    = y,
                       smpAnnot    = x,
                       graphType   = "Scatter2D",
                       title       = "Scatterplot - webshot print")

    # export to PNG and print in viewer
    htmlwidgets::saveWidget(result, file = temp.html)
    expect_true(file.exists(temp.html))

    webshot::webshot(temp.html,
                     file    = result.png,
                     vwidth  = result$width,
                     vheight = result$height)

    expect_true(file.exists(result.png))
    grid::grid.raster(png::readPNG(result.png))
})

# cleanup temp files
file.remove(c(temp.html, result.png))
