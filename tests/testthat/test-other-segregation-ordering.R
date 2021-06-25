context("canvasXpress Charts - Segregation Ordering")


test_that("segregation ordering - Samples", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
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
                           showLegend              = FALSE,
                           smpLabelRotate          = 90,
                           smpTitle                = "dose",
                           title                   = "Sorting descending by dose",
                           xAxisTitle              = "len",
                           sortDir                 = "descending",
                           afterRender             = list(list('sortSamplesByCategory', list("dose"))))

    check_ui_test(result)
})
