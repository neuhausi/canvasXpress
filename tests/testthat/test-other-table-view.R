context("canvasXpress table view")


get_plot_title <- function(plot) {
    paste(plot, "- Table view")
}

test_that("scatterplot tableView", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/r/cX-scatterR3-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z = read.table("https://www.canvasxpress.org/data/r/cX-scatterR3-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data            = y,
                           varAnnot        = z,
                           colorBy         = "Group",
                           graphType       = "Scatter2D",
                           title           = get_plot_title("Scatterplot"),
                           view            = "table")

    check_ui_test(result)
})

test_that("barplot tableView", {
    tryCatch({
        barplot_x <- read.table("https://www.canvasxpress.org/data/r/cX-simple-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        barplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-simple-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = barplot_y,
                            smpAnnot                = barplot_x,
                            colorBy                 = "Drug Sensitivity",
                            graphOrientation        = "vertical",
                            graphType               = "Bar",
                            title                   = get_plot_title("Barplot"),
                            view                    = "table")

    check_ui_test(result)
})

test_that("boxplot tableView", {
    tryCatch({
        boxplot_x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        boxplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = boxplot_y,
                            smpAnnot                = boxplot_x,
                            colorBy                 = "dose",
                            graphOrientation        = "vertical",
                            graphType               = "Boxplot",
                            groupingFactors         = list("dose"),
                            showLegend              = TRUE,
                            smpTitle                = "dose",
                            stringSampleFactors     = list("dose"),
                            title                   = get_plot_title("Boxplot"),
                            view                    = "table")

    check_ui_test(result)
})

test_that("dotplot tableView", {
    tryCatch({
        boxplot_x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        boxplot_y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = boxplot_y,
                            smpAnnot                = boxplot_x,
                            colorBy                 = "dose",
                            stringSampleFactors     = list("dose"),
                            groupingFactors         = list("supp"),
                            graphOrientation        = "vertical",
                            graphType               = "Dotplot",
                            title                   = get_plot_title("Dotplot"),
                            view                    = "table")

    check_ui_test(result)
})

test_that("heatmap tableView", {
    tryCatch({
        y  <- read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        y2 <- read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat3.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <-  canvasXpress(data                    = list(y = y, data2 = y2),
                            shapeBy                 = "Shape",
                            shapeByData             = "data2",
                            graphType               = "Heatmap",
                            title                   = get_plot_title("Heatmap"),
                            view                    = "table")

    check_ui_test(result)
})
