context("canvasXpress table view")

barplot_y <- read.table(get_data("cX-simple-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
barplot_x <- read.table(get_data("cX-simple-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_y <- read.table(get_data("cX-toothgrowth-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
boxplot_x <- read.table(get_data("cX-toothgrowth-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

get_plot_title <- function(plot) {
    paste(plot, "- Table view")
}

test_that("scatterplot tableView", {

    y = read.table(get_data("cX-scatterR3-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z = read.table(get_data("cX-scatterR3-var.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(
        data            = y,
        varAnnot        = z,
        colorBy         = "Group",
        graphType       = "Scatter2D",
        title           = get_plot_title("Scatterplot"),
        view            = "table"
    )
    check_ui_test(result)
})

test_that("barplot tableView", {

    result <-  canvasXpress(
        data                    = barplot_y,
        smpAnnot                = barplot_x,
        colorBy                 = "Drug Sensitivity",
        graphOrientation        = "vertical",
        graphType               = "Bar",
        title                   = get_plot_title("Barplot"),
        view                    = "table"
    )
    check_ui_test(result)
})

test_that("boxplot tableView", {

    result <-  canvasXpress(
        data                    = boxplot_y,
        smpAnnot                = boxplot_x,
        colorBy                 = "dose",
        graphOrientation        = "vertical",
        graphType               = "Boxplot",
        groupingFactors         = list("dose"),
        showLegend              = TRUE,
        smpTitle                = "dose",
        stringSampleFactors     = list("dose"),
        title                   = get_plot_title("Boxplot"),
        view                    = "table"
    )
    check_ui_test(result)
})

test_that("dotplot tableView", {

    result <-  canvasXpress(
        data                    = boxplot_y,
        smpAnnot                = boxplot_x,
        colorBy                 = "dose",
        stringSampleFactors     = list("dose"),
        groupingFactors         = list("supp"),
        graphOrientation        = "vertical",
        graphType               = "Dotplot",
        title                   = get_plot_title("Dotplot"),
        view                    = "table"
    )
    check_ui_test(result)
})

test_that("heatmap tableView", {

    y  <- read.table(get_data("cX-multidimensionalheatmap-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    y2 <- read.table(get_data("cX-multidimensionalheatmap-dat3.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = list(y = y, data2 = y2),
        shapeBy                 = "Shape",
        shapeByData             = "data2",
        graphType               = "Heatmap",
        title                   = get_plot_title("Heatmap"),
        view                    = "table"
    )
    check_ui_test(result)
})
