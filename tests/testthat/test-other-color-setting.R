context("canvasXpress color setting")

test_that("barplot line color", {
    y = read.table(get_data("cX-simple-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x = read.table(get_data("cX-simple-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(data             = y,
                           smpAnnot         = x,
                           decorations      = list(line = list(list(color = "green", value = 50, width = 2))),
                           graphOrientation = "vertical",
                           graphType        = "Bar",
                           title            = "Barplot - Decoration (Line: Green)"

    )
    check_ui_test(result)
})

test_that("barplot annotations color", {
    y <- read.table(get_data( "cX-basic2-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(
        data                    = y,
        graphType               = "Bar",
        graphOrientation        = "vertical",
        title                   = "Barplot - Annotations (Sample1: Blue, Sample2: Green)",
        decorations             = list(marker = list(list(fontSize = 15, sample = "Sample1", color = "blue", text = "Blue Text", type = "annotation", variable = "Variable1"),
                                                     list(fontSize = 15, sample = "Sample2", color = "green", text = "Green Text", type = "annotation", variable = "Variable1")))
    )
    check_ui_test(result)
})

test_that("scatter2d ColorScheme", {
    y = read.table(get_data("cX-spider-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z = read.table(get_data("cX-spider-var.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(data           = y,
                           varAnnot       = z,
                           graphType      = "Scatter2D",
                           colorBy        = "Response",
                           colorScheme    = "Set1",
                           legendBox      = TRUE,
                           legendInside   = TRUE,
                           legendPosition = "topRight",
                           spiderBy       = "Subject",
                           title          = "ScatterPlot2d - ColorScheme: Set1"
    )
    check_ui_test(result)

})

test_that("boxplot ColorScheme", {
    y = read.table(get_data("cX-toothgrowth-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x = read.table(get_data("cX-toothgrowth-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(data                     = y,
                           smpAnnot                 = x,
                           axisTitleScaleFontFactor = 1.8,
                           colorBy                  = "dose",
                           colorScheme              = "Set2",
                           graphType                = "Boxplot",
                           groupingFactors          = list("dose"),
                           smpTitleScaleFontFactor  = 1.8,
                           stringSampleFactors      = list("dose"),
                           title                    = "Boxplot - ColorScheme: Set1"
    )
    check_ui_test(result)
})
