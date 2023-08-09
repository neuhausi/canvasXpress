context("canvasXpress regressionLines")


test_that("scatterplot overall regressionLine", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-ageheightt-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-ageheightt-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = y,
                            smpAnnot                = x,
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - regressionLine",
                            showRegressionFit       = TRUE)

    check_ui_test(result)
})

test_that("scatterplot per-sample regressionLine", {
    tryCatch({
        y2 = read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = y2,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per sample regressionLine",
                            showRegressionFullRange = TRUE,
                            stringVariableFactors   = list("cyl"),
                            xAxis                   = list("wt"),
                            yAxis                   = list("mpg"),
                            showRegressionFit       = list("cyl"))

    check_ui_test(result)
})

test_that("scatterplot per variable regressionLine", {
    tryCatch({
        data_y = read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        data_z = read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = data_y,
                            varAnnot                = data_z,
                            colorBy                 = "Species",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per variable regressionLine",
                            showRegressionFullRange = TRUE,
                            scatterPlotMatrix       = TRUE,
                            showRegressionFit       = TRUE)

    check_ui_test(result)
})

test_that("scatterplot per variable and sample regressionLine", {
    tryCatch({
        data_y = read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        data_z = read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = data_y,
                            varAnnot                = data_z,
                            colorBy                 = "Species",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per variable and sample regressionLine",
                            showRegressionFullRange = TRUE,
                            scatterPlotMatrix       = TRUE,
                            showRegressionFit       = "Species")

    check_ui_test(result)
})
