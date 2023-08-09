context("canvasXpress toolbarType")


test_that("Scatterplot toolbarType under", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-spider-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z = read.table("https://www.canvasxpress.org/data/cX-spider-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data           = y,
                            varAnnot       = z,
                            colorBy        = "Response",
                            graphType      = "Scatter2D",
                            legendBox      = TRUE,
                            legendInside   = TRUE,
                            legendPosition = "topRight",
                            spiderBy       = "Subject",
                            theme          = "CanvasXpress",
                            title          = "ScatterPlot  - toolbarType: under",
                            xAxis          = list("Weeks"),
                            yAxis          = list("Change From Baseline %"),
                            toolbarType    = "under")

    check_ui_test(result)
})

test_that("Scatterplot toolbarType over", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            legendBox               = TRUE,
                            showRegressionFullRange = TRUE,
                            stringVariableFactors   = list("cyl"),
                            theme                   = "CanvasXpress",
                            xAxis                   = list("wt"),
                            yAxis                   = list("mpg"),
                            title                   =  "ScatterPlot - toolbarType: over",
                            showRegressionFit       = "cyl",
                            toolbarType             = "over")

    check_ui_test(result)
})

test_that("Scatterplot toolbarType fixed", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-loess2-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                    = y,
                           graphType               = "Scatter2D",
                           showConfidenceIntervals = TRUE,
                           showLoessFit            = TRUE,
                           theme                   = "CanvasXpress",
                           title                   = "ScatterPlot - toolbarType: fixed",
                           xAxis                   = list("E"),
                           yAxis                   = list("NOx"),
                           toolbarType             = "fixed")

    check_ui_test(result)
})

test_that("Barplot segregated toolbarType under", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z = read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data               = y,
                           smpAnnot           = x,
                           varAnnot           = z,
                           graphType          = "Bar",
                           title              = "Segregated BarPlot - toolbarType: under",
                           segregateSamplesBy = list("Factor2"),
                           toolbarType        = "under")

    check_ui_test(result)
})

test_that("Barplot segregated toolbarType over", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                      = y,
                           smpAnnot                  = x,
                           axisTitleFontStyle        = "italic",
                           colorBy                   = "IC50",
                           decorationScaleFontFactor = 1.3,
                           decorations               = list(line = list(list(align = "left", color = "rgb(255,0,0)", label = "Cutoff", value = 50, width = 2))),
                           graphOrientation          = "vertical",
                           graphType                 = "Bar",
                           theme                     = "CanavasXpress",
                           title                     = "Segregated BarPlot - toolbarType: over",
                           segregateSamplesBy        = list("Drug Sensitivity"),
                           toolbarType               = "over")

    check_ui_test(result)
})

test_that("Barplot segregated toolbarType fixed", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-iris-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-iris-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data               = y,
                            smpAnnot           = x,
                            axisTitleFontStyle = "italic",
                            colorScheme        = "CanvasXpress",
                            graphOrientation   = "vertical",
                            graphType          = "Bar",
                            legendColumns      = 2,
                            legendPosition     = "bottom",
                            showTransition     = FALSE,
                            smpLabelRotate     = 90,
                            smpTitle           = "Species",
                            title              = "Segregated BarPlot - toolbarType: fixed",
                            segregateSamplesBy = list("Species"),
                            afterRender        = list(list("groupSamples", list("Species"))),
                            toolbarType        = "fixed")

    check_ui_test(result)
})
