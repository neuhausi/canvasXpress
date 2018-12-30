context("canvasXpress Charts - Segregation Titles")

y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("segregation xAxis2Title", {
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
                           smpLabelRotate          = 90,
                           smpTitle                = "dose",
                           title                   = "xAxis2 title and legend should be readable",
                           xAxisTitle              = "len",
                           xAxis2Title             = "xAxis2 Custom title")

    check_ui_test(result)
})

test_that("segregation smpTitle", {
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
                           smpLabelRotate          = 90,
                           smpTitle                = "dose",
                           title                   = "smpTitle and legend should be readable",
                           xAxisTitle              = "len",
                           smpTitle                = "smpTitle Custom title")

    check_ui_test(result)
})
