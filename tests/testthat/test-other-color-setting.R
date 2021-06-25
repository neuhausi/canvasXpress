context("canvasXpress color setting")


test_that("barplot line color", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data             = y,
                           smpAnnot         = x,
                           decorations      = list(line = list(list(color = "green", value = 50, width = 2))),
                           graphOrientation = "vertical",
                           graphType        = "Bar",
                           title            = "Barplot - Decoration (Line: Green)")

    check_ui_test(result)
})

test_that("barplot annotations color", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-basic2-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data file')
    })

    result <- canvasXpress(data                    = y,
                           graphType               = "Bar",
                           graphOrientation        = "vertical",
                           title                   = "Barplot - Annotations (Sample1: Blue, Sample2: Green)",
                           decorations             = list(marker = list(list(fontSize = 15, sample = "S1", color = "blue", text = "Blue Text", type = "annotation", variable = "V1"),
                                                                        list(fontSize = 15, sample = "S2", color = "green", text = "Green Text", type = "annotation", variable = "V2"))))
    check_ui_test(result)
})

test_that("scatter2d ColorScheme", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-spider-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z = read.table("https://www.canvasxpress.org/data/cX-spider-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data           = y,
                           varAnnot       = z,
                           graphType      = "Scatter2D",
                           colorBy        = "Response",
                           colorScheme    = "Set1",
                           legendBox      = TRUE,
                           legendInside   = TRUE,
                           legendPosition = "topRight",
                           spiderBy       = "Subject",
                           title          = "ScatterPlot2d - ColorScheme: Set1")

    check_ui_test(result)

})

test_that("boxplot ColorScheme", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data                     = y,
                           smpAnnot                 = x,
                           axisTitleScaleFontFactor = 1.8,
                           colorBy                  = "dose",
                           colorScheme              = "Set2",
                           graphType                = "Boxplot",
                           groupingFactors          = list("dose"),
                           smpTitleScaleFontFactor  = 1.8,
                           stringSampleFactors      = list("dose"),
                           title                    = "Boxplot - ColorScheme: Set2")

    check_ui_test(result)
})

test_that("stackedbar custom colors", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z <- data.frame(Category = c("A", "B", "C", "D"), stringsAsFactors = F)
        rownames(z) <- rownames(y)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data             = y,
                           varAnnot         = z,
                           graphOrientation = "horizontal",
                           graphType        = "Stacked",
                           colorBy          = "Category",
                           title            = "Custom colors - should be gray/white/blue/red",
                           colors           = list("gray", "white", "blue", "red"))

    check_ui_test(result)
})
