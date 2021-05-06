context("canvasXpress regressionLines")


y = read.table("https://www.canvasxpress.org/data/cX-ageheightt-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x = read.table("https://www.canvasxpress.org/data/cX-ageheightt-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot overall regressionLine", {

    result <-  canvasXpress(data                    = y,
                            smpAnnot                = x,
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - regressionLine",
                            afterRender             = list(list("addRegressionLine")))

    check_ui_test(result)
})

test_that("scatterplot per-sample regressionLine", {

    y = read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per sample regressionLine",
                            showRegressionFullRange = TRUE,
                            stringVariableFactors   = list("cyl"),
                            xAxis                   = list("wt"),
                            yAxis                   = list("mpg"),
                            afterRender             = list(list("addRegressionLine", list("cyl"))))

    check_ui_test(result)
})


data_y = read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
data_z = read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot per variable regressionLine", {

    result <-  canvasXpress(data                    = data_y,
                            varAnnot                = data_z,
                            colorBy                 = "Species",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per variable regressionLine",
                            showRegressionFullRange = TRUE,
                            scatterPlotMatrix       = TRUE,
                            afterRender             = list(list("addRegressionLine")))

    check_ui_test(result)
})

test_that("scatterplot per variable and sample regressionLine", {

    result <-  canvasXpress(data                    = data_y,
                            varAnnot                = data_z,
                            colorBy                 = "Species",
                            graphType               = "Scatter2D",
                            title                   = "Scatterplot - per variable and sample regressionLine",
                            showRegressionFullRange = TRUE,
                            scatterPlotMatrix       = TRUE,
                            afterRender             = list(list("addRegressionLine", list("Species"))))

    check_ui_test(result)
})
