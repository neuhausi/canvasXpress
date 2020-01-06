context("canvasXpress Charts - Differentiated groups")

y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("differentiated groups in boxplot 1", {
    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphOrientation        = "vertical",
                           graphType               = "Boxplot",
                           colorBy                 = "dose",
                           groupingFactors         = list("dose", "supp"),
                           stringSampleFactors     = list("dose"),
                           showBoxplotOriginalData = TRUE,
                           boxplotConnect          = TRUE,
                           showLegend              = TRUE,
                           smpLabelRotate          = 90,
                           smpTitle                = "Supplement",
                           title                   = "Test Grouping",
                           xAxisTitle              = "len",
                           afterRender             = list(list("pivotX", list("dose"))))

    check_ui_test(result)
})

test_that("differentiated groups in boxplot 2", {
    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphOrientation        = "vertical",
                           graphType               = "Boxplot",
                           colorBy                 = "supp",
                           groupingFactors         = list("supp", "dose"),
                           stringSampleFactors     = list("dose"),
                           showBoxplotOriginalData = TRUE,
                           boxplotConnect          = TRUE,
                           showLegend              = TRUE,
                           smpLabelRotate          = 90,
                           smpTitle                = "Dose",
                           title                   = "Test Grouping",
                           xAxisTitle              = "len",
                           afterRender             = list(list("pivotX", list("supp"))))

    check_ui_test(result)
})

test_that("differentiated groups in boxplot 3", {

    x$Gene <- c(rep(c("Gene1", "Gene2"), 30))
    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphOrientation        = "vertical",
                           graphType               = "Boxplot",
                           colorBy                 = "supp",
                           groupingFactors         = list("supp", "dose"),
                           stringSampleFactors     = list("dose"),
                           segregateSamplesBy      = list("Gene"),
                           showBoxplotOriginalData = TRUE,
                           boxplotConnect          = TRUE,
                           showLegend              = TRUE,
                           smpLabelRotate          = 90,
                           smpTitle                = "Dose",
                           title                   = "Test Grouping with segregation",
                           xAxisTitle              = "len",
                           afterRender             = list(list("pivotX", list("supp"))))

    check_ui_test(result)
    warning('Data points are not appearing on the chart (as of 25.9) unless it is resized manually or refreshed')
})
