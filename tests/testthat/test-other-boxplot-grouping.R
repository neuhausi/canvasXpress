context("canvasXpress boxplot grouping")


test_that("boxplot - grouping", {
    tryCatch({
        x <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x$prop2 <- c( rep(c("A", "B"), 30) )
        y <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphType               = "Boxplot",
                           graphOrientation        = "vertical",
                           groupingFactors         = list("dose", "supp"),
                           stringSampleFactors     = list("dose"),
                           showBoxplotOriginalData = TRUE,
                           outlineWidth            = 2,
                           boxplotMedianWidth      = 4,
                           dataPointSize           = 50,
                           smpLabelRotate          = 90,
                           colorBy                 = "prop2",
                           shapeBy                 = "prop2",
                           title                   = "Boxplot - grouping",
                           subtitle                = "when colorby property is set to other than groupingFactors",
                           xAxisTitle              = "len")

    check_ui_test(result)
})
