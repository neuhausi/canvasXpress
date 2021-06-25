context("canvasXpress Charts - Differentiated groups")


test_that("differentiated groups in boxplot 1", {
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
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x$Gene <- c(rep(c("Gene1", "Gene2"), 30))
    },
    error = function(e) {
        skip('Unable to read data files')
    })

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
})
