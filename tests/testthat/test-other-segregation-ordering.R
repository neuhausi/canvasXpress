context("canvasXpress Charts - Segregation Ordering")

y <- read.table(get_data("cX-toothgrowth-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(get_data("cX-toothgrowth-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("segregation ordering - Samples", {
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
                           afterRender             = list(list('sortSamplesByCategory', list("dose")))
    )

    check_ui_test(result)
})

