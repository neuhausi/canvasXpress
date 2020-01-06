context("canvasXpress null data")

get_plot_title <- function(plot) {
    paste(plot, "- Null Data should be dropped (not turn 0)")
}

set_NA_data <- function(y) {
    y[1, (2/5 * ncol(y)):(4/5 * ncol(y))] <- NA
    y
}

test_that("scatter2D null data", {

    y <- read.table(system.file("extdata", "cX-scatterR3-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table(system.file("extdata", "cX-scatterR3-var.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    y <- y[y$`logFC-X` > 1 & y$`logFC-Y` > 1, ]
    # Set some rows with X values NA, then rows with Y values NA, then both NA, followed by normal values
    y[1:(0.2*nrow(y)), 1]             <- NA
    y[(0.2*nrow(y)):(0.4*nrow(y)), 2] <- NA
    y[(0.4*nrow(y)):(0.6*nrow(y)), ]  <- NA
    z <- z[rownames(y), ]

    result <- canvasXpress(
        data            = y,
        varAnnot        = z,
        colorBy         = "Group",
        graphType       = "Scatter2D",
        title           = get_plot_title("Scatter2D"),
        setMinX         = 0,
        setMinY         = 0
    )
    check_ui_test(result)
})

test_that("Scatter3D null data", {

    y <- read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)[, 1:3]
    z <- read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    # Set some rows with X values NA, then rows with Y values NA, then both NA, followed by normal values
    y[1:(0.2*nrow(y)), 1]             <- NA
    y[(0.2*nrow(y)):(0.4*nrow(y)), 2] <- NA
    y[(0.4*nrow(y)):(0.6*nrow(y)), 3] <- NA
    y[(0.6*nrow(y)):(0.8*nrow(y)), ]  <- NA

    result <- canvasXpress(
        data            = y,
        varAnnot        = z,
        graphType       = "Scatter3D",
        title           = get_plot_title("Scatter3D"),
        xAxis           = list("Sepal.Length"),
        yAxis           = list("Sepal.Width"),
        zAxis           = list("Petal.Length"),
        setMinX         = 0,
        setMinY         = 0,
        setMinZ         = 0
    )
    check_ui_test(result)
})

test_that("barplot null data", {

    y <- read.table(system.file("extdata", "cX-simple-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-simple-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    y <- set_NA_data(y)

    result <-  canvasXpress(
        data                    = y,
        smpAnnot                = x,
        colorBy                 = "Drug Sensitivity",
        graphOrientation        = "vertical",
        graphType               = "Bar",
        title                   = get_plot_title("Barplot")
    )
    check_ui_test(result)
})

test_that("boxplot null data", {

    y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    y <- set_NA_data(y)
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
                           title                   = get_plot_title("Boxplot"),
                           xAxisTitle              = "len",
                           afterRender             = list(list("pivotX", list("supp"))))

    check_ui_test(result)
})

test_that("boxplot null smpdata", {

    y <- read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    # make some supp values NA
    x[c(1, 3, 5, 8, 10), "supp"] <- NA

    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphType               = "Boxplot",
                           smpTitle                = "Supp",
                           groupingFactors         = list("supp"),
                           colorBy                 = list("supp"),
                           title                   = "Sample Data with NA, should not cause the plot to crash")

    check_ui_test(result)
})
