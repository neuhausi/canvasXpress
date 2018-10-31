context("canvasXpress legendTitle")

barplot_y <- read.table(system.file("extdata", "cX-simple-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
barplot_x <- read.table(system.file("extdata", "cX-simple-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot LegendTitle", {

    y = read.table(system.file("extdata", "cX-scatterR3-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z = read.table(system.file("extdata", "cX-scatterR3-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(
                data            = y,
                varAnnot        = z,
                colorBy         = "Group",
                graphType       = "Scatter2D",
                title           = "Scatterplot - LegendTitle",
                showLegendTitle = FALSE
    )
    check_ui_test(result)
})

test_that("barplot LegendTitle", {

    result <-  canvasXpress(
        data                    = barplot_y,
        smpAnnot                = barplot_x,
        colorBy                 = "Drug Sensitivity",
        graphOrientation        = "vertical",
        graphType               = "Bar",
        title                   = "Barplot - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("barplot (segregated) LegendTitle", {

    z <- data.frame(Plot = "Bar1", stringsAsFactors = F)
    rownames(z) <- rownames(barplot_y)
    result <-  canvasXpress(
        data                    = barplot_y,
        smpAnnot                = barplot_x,
        varAnnot                = z,
        colorBy                 = "Drug Sensitivity",
        graphOrientation        = "vertical",
        graphType               = "Bar",
        segregateVariablesBy    = list("Plot"),
        title                   = "Barplot (segregated) - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("boxplot LegendTitle", {

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
        title                   = "Boxplot - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("boxplot (segregated) LegendTitle", {

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
        title                   = "Boxplot (segregated) - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("Scatterplot matrix LegendTitle", {

    y <- read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = y,
        varAnnot                = z,
        colorBy                 = "Species",
        graphType               = "Scatter2D",
        scatterPlotMatrix       = TRUE,
        title                   = "Scatterplot matrix - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("dotplot LegendTitle", {

    result <-  canvasXpress(
        data                    = boxplot_y,
        smpAnnot                = boxplot_x,
        colorBy                 = "dose",
        stringSampleFactors     = list("dose"),
        groupingFactors         = list("supp"),
        graphOrientation        = "vertical",
        graphType               = "Dotplot",
        title                   = "Dotplot - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})

test_that("heatmap LegendTitle", {

    y  <- read.table(system.file("extdata", "cX-multidimensionalheatmap-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    y2 <- read.table(system.file("extdata", "cX-multidimensionalheatmap-dat3.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = list(y = y, data2 = y2),
        shapeBy                 = "Shape",
        shapeByData             = "data2",
        graphType               = "Heatmap",
        title                   = "Heatmap - LegendTitle",
        showLegendTitle         = FALSE
    )
    check_ui_test(result)
})
