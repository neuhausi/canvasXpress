context("canvasXpress Charts - Segregation Titles")


test_that("segregation xAxis2Title", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphOrientation        = "horizontal",
                           graphType               = "Boxplot",
                           colorBy                 = "supp",
                           groupingFactors         = list("dose"),
                           segregateSamplesBy      = list("supp"),
                           showBoxplotOriginalData = TRUE,
                           showLegend              = TRUE,
                           legendPosition          = "bottom",
                           smpTextRotate           = 90,
                           smpTitle                = "dose",
                           title                   = "xAxis2 title and legend should be readable",
                           xAxis2Show              = TRUE,
                           xAxisTitle              = "len",
                           xAxis2Title             = "xAxis2 Custom title")

    check_ui_test(result)
})

test_that("segregation smpTitle", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphOrientation        = "vertical",
                           graphType               = "Boxplot",
                           colorBy                 = "supp",
                           groupingFactors         = list("dose"),
                           segregateSamplesBy      = list("supp"),
                           showBoxplotOriginalData = TRUE,
                           showLegend              = TRUE,
                           legendPosition          = "bottom",
                           smpTextRotate           = 90,
                           title                   = "smpTitle and legend should be readable",
                           xAxisTitle              = "len",
                           smpTitle                = "smpTitle Custom title")

    check_ui_test(result)
})
