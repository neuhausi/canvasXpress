context("canvasXpress zoomDisable")

barplot_y <- read.table(system.file("extdata", "cX-basic-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot zoomDisable", {

    y <- read.table(system.file("extdata", "cX-mtcars-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        stringVariableFactors   = list("cyl"),
        title                   = "Scatterplot - zoomDisable",
        zoomDisable             = TRUE
    )
    check_ui_test(result)
})

test_that("barplot zoomDisable", {

    result <-  canvasXpress(
        data                    = barplot_y,
        graphOrientation        = "vertical",
        graphType               = "Bar",
        title                   = "Barplot - zoomDisable",
        zoomDisable             = TRUE
    )
    check_ui_test(result)
})

test_that("barplot (segregated) zoomDisable", {

    z <- data.frame(Plot = "Bar1", stringsAsFactors = F)
    rownames(z) <- rownames(barplot_y)
    result <-  canvasXpress(
        data                    = barplot_y,
        varAnnot                = z,
        graphOrientation        = "vertical",
        graphType               = "Bar",
        segregateVariablesBy    = list("Plot"),
        title                   = "Barplot (segregated) - zoomDisable",
        zoomDisable             = TRUE
    )
    check_ui_test(result)
})

test_that("boxplot zoomDisable", {

    result <-  canvasXpress(
        data                    = boxplot_y,
        smpAnnot                = boxplot_x,
        colorBy                 = "dose",
        graphOrientation        = "vertical",
        graphType               = "Boxplot",
        groupingFactors         = list("dose"),
        showLegend              = TRUE,
        smpTitle                = "dose",
        stringSampleFactors     = list("dose"),
        title                   = "Boxplot - zoomDisable",
        zoomDisable             = TRUE
    )

    check_ui_test(result)
})

test_that("boxplot (segregated) zoomDisable", {

    z <- data.frame(Plot = "Box1", stringsAsFactors = F)
    rownames(z) <- rownames(boxplot_y)
    result <-  canvasXpress(
        data                    = boxplot_y,
        smpAnnot                = boxplot_x,
        varAnnot                = z,
        colorBy                 = "dose",
        graphOrientation        = "vertical",
        graphType               = "Boxplot",
        segregateVariablesBy    = list("Plot"),
        groupingFactors         = list("dose"),
        showLegend              = TRUE,
        smpTitle                = "dose",
        stringSampleFactors     = list("dose"),
        title                   = "Boxplot (segregated) - zoomDisable",
        zoomDisable             = TRUE
    )

    check_ui_test(result)
})

test_that("Scatterplot matrix zoomDisable", {

    y <- read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    result <-  canvasXpress(
        data                    = y,
        varAnnot                = z,
        colorBy                 = "Species",
        graphType               = "Scatter2D",
        scatterPlotMatrix       = TRUE,
        title                   = "Scatterplot matrix - zoomDisable",
        zoomDisable             = TRUE
    )

    check_ui_test(result)
})

test_that("dotplot zoomDisable", {

    y <- read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    legend_inside            <- TRUE
    result <-  canvasXpress(
        data                    = y,
        smpAnnot                = x,
        graphOrientation        = "vertical",
        graphType               = "Dotplot",
        afterRender             = list(list("groupSamples", list("Species"))),
        title                   = "Dotplot - zoomDisable",
        zoomDisable             = TRUE
    )

    check_ui_test(result)
})

test_that("heatmap zoomDisable", {

    y = read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x = read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z = read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = y,
        smpAnnot                = x,
        varAnnot                = z,
        colorBy                 = "dose",
        graphType               = "Heatmap",
        title                   = "Heatmap - zoomDisable",
        zoomDisable             = TRUE
    )
    check_ui_test(result)
})

