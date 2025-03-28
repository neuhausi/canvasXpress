context("canvasXpress LegendPosition")

try({

    default_legend_position      <- "right"
    all_legend_positions         <- c("topRight", "right", "bottomRight", "bottom", "bottomLeft", "left", "topLeft", "top")
    inside_legend_only_positions <- c("topRight", "bottomRight", "bottomLeft", "topLeft")
    segregated_legend_positions  <- c("right", "bottom", "left", "top")
    test_legend_positions        <- setdiff(all_legend_positions, default_legend_position)
})

test_that("scatterplot legendposition", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside <- FALSE
    for (legend_pos in test_legend_positions) {
        result <-  canvasXpress(data                    = y,
                                asSampleFactors         = list("cyl"),
                                colorBy                 = "cyl",
                                graphType               = "Scatter2D",
                                stringVariableFactors   = list("cyl"),
                                title                   = paste("Scatterplot - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("barplot legendposition", {
    tryCatch({
        barplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-basic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside <- FALSE
    for (legend_pos in test_legend_positions) {
        result <-  canvasXpress(data                    = barplot_y,
                                graphOrientation        = "vertical",
                                graphType               = "Bar",
                                title                   = paste("Barplot - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("barplot (segregated) legendposition", {
    tryCatch({
        barplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-basic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    z <- data.frame(Plot = "Bar1", stringsAsFactors = F)
    rownames(z) <- rownames(barplot_y)
    legend_inside <- FALSE
    for (legend_pos in segregated_legend_positions) {
        result <-  canvasXpress(data                    = barplot_y,
                                varAnnot                = z,
                                graphOrientation        = "vertical",
                                graphType               = "Bar",
                                segregateVariablesBy    = list("Plot"),
                                title                   = paste("Barplot (segregated) - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("boxplot legendposition", {
    tryCatch({
        boxplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        boxplot_x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside            <- FALSE
    for (legend_pos in test_legend_positions) {
        result <-  canvasXpress(data                    = boxplot_y,
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
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("boxplot (segregated) legendposition", {
    tryCatch({
        boxplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        boxplot_x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    z <- data.frame(Plot = "Box1", stringsAsFactors = F)
    rownames(z) <- rownames(boxplot_y)
    legend_inside            <- FALSE
    for (legend_pos in segregated_legend_positions) {
        result <-  canvasXpress(data                    = boxplot_y,
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
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("Scatterplot matrix legendposition", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z <- read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside            <- FALSE
    for (legend_pos in segregated_legend_positions) {
        result <-  canvasXpress(data                    = y,
                                varAnnot                = z,
                                colorBy                 = "Species",
                                graphType               = "Scatter2D",
                                scatterPlotMatrix       = TRUE,
                                title                   = paste("Scatterplot matrix - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))
        check_ui_test(result)
    }
})

test_that("dotplot legendposition", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-iris-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-iris-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside            <- TRUE
    for (legend_pos in test_legend_positions) {
        result <-  canvasXpress(data                    = y,
                                smpAnnot                = x,
                                graphOrientation        = "vertical",
                                graphType               = "Dotplot",
                                afterRender             = list(list("groupSamples", list("Species"))),
                                title                   = paste("Dotplot - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))

        check_ui_test(result)
    }
})

test_that("heatmap legendposition", {
    tryCatch({
        y  <- read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        y2 <- read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat3.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    legend_inside <- FALSE
    for (legend_pos in test_legend_positions) {
        result <-  canvasXpress(data                    = list(y = y, data2 = y2),
                                shapeBy                 = "Shape",
                                shapeByData             = "data2",
                                graphType               = "Heatmap",
                                title                   = paste("Heatmap - LegendPosition", legend_pos),
                                legendPosition          = legend_pos,
                                legendInside            = ifelse(legend_pos %in% inside_legend_only_positions, TRUE, legend_inside))

        check_ui_test(result)
    }
})
