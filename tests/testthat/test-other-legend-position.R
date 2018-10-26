context("canvasXpress LegendPosition")

default_legend_position <- "right"
all_legend_positions    <- c("topRight", "right", "bottomRight", "bottom", "bottomLeft", "left", "topLeft", "top")
test_legend_positions   <- setdiff(all_legend_positions, default_legend_position)
test_sample_size        <- 3

get_sample_legend_positions <- function() {
    sample(test_legend_positions, test_sample_size)
}

barplot_y <- read.table(system.file("extdata", "cX-basic-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)


test_that("scatterplot legendposition", {

    y <- read.table(system.file("extdata", "cX-mtcars-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    legend_inside <- FALSE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = y,
            asSampleFactors         = list("cyl"),
            colorBy                 = "cyl",
            graphType               = "Scatter2D",
            stringVariableFactors   = list("cyl"),
            title                   = paste("Scatterplot - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )
        check_ui_test(result)
    }
})

test_that("barplot legendposition", {

    legend_inside <- TRUE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = barplot_y,
            graphOrientation        = "vertical",
            graphType               = "Bar",
            title                   = paste("Barplot - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )
        check_ui_test(result)
    }
})

test_that("barplot (segregated) legendposition", {

    z <- data.frame(Plot = "Bar1", stringsAsFactors = F)
    rownames(z) <- rownames(barplot_y)
    legend_inside <- TRUE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = barplot_y,
            varAnnot                = z,
            graphOrientation        = "vertical",
            graphType               = "Bar",
            segregateVariablesBy    = list("Plot"),
            title                   = paste("Barplot (segregated) - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )
        check_ui_test(result)
    }
})

test_that("boxplot legendposition", {

    legend_inside            <- FALSE
    for (legend_pos in get_sample_legend_positions()) {
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
            title                   = paste("Boxplot - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )

        check_ui_test(result)
    }
})

test_that("boxplot (segregated) legendposition", {

    z <- data.frame(Plot = "Box1", stringsAsFactors = F)
    rownames(z) <- rownames(boxplot_y)
    legend_inside            <- FALSE
    for (legend_pos in get_sample_legend_positions()) {
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
            title                   = paste("Boxplot (segregated) - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )

        check_ui_test(result)
    }
})

test_that("Scatterplot matrix legendposition", {

    y <- read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    legend_inside            <- FALSE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = y,
            varAnnot                = z,
            colorBy                 = "Species",
            graphType               = "Scatter2D",
            scatterPlotMatrix       = TRUE,
            title                   = paste("Scatterplot matrix - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )

        check_ui_test(result)
    }
})

test_that("dotplot legendposition", {

    y <- read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    legend_inside            <- TRUE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = y,
            smpAnnot                = x,
            graphOrientation        = "vertical",
            graphType               = "Dotplot",
            afterRender             = list(list("groupSamples", list("Species"))),
            title                   = paste("Dotplot - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )

        check_ui_test(result)
    }
})

test_that("heatmap legendposition", {

    y = read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x = read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z = read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    legend_inside <- FALSE
    for (legend_pos in get_sample_legend_positions()) {
        result <-  canvasXpress(
            data                    = y,
            smpAnnot                = x,
            varAnnot                = z,
            colorBy                 = "dose",
            graphType               = "Heatmap",
            title                   = paste("Heatmap - LegendPosition", legend_pos),
            legendPosition          = legend_pos,
            legendInside            = legend_inside
        )

        check_ui_test(result)
    }
})
