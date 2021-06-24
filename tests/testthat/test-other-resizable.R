context("canvasXpress resizable")

try({
    y <- read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
})

test_that("scatterplot resizable", {
    skip_if_not(exists(c('y')))

    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            stringVariableFactors   = list("cyl"),
                            title                   = "Scatterplot - resizable",
                            resizable               = TRUE)

    check_ui_test(result)
})

test_that("scatterplot resizable width", {
    skip_if_not(exists(c('y')))

    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            stringVariableFactors   = list("cyl"),
                            title                   = "Scatterplot - resizable width",
                            resizableX              = TRUE,
                            resizableY              = FALSE)

    check_ui_test(result)

    warning("the plot is shifted to top-left, when clicking on Minimize/Maximize menu button")
})

test_that("scatterplot resizable height", {
    skip_if_not(exists(c('y')))

    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            stringVariableFactors   = list("cyl"),
                            title                   = "Scatterplot - resizable height",
                            resizableY              = TRUE,
                            resizableX              = FALSE)

    check_ui_test(result)

    warning("the plot is shifted to top-left, when clicking on Minimize/Maximize menu button")
})

test_that("scatterplot not resizable", {
    skip_if_not(exists(c('y')))

    result <-  canvasXpress(data                    = y,
                            asSampleFactors         = list("cyl"),
                            colorBy                 = "cyl",
                            graphType               = "Scatter2D",
                            stringVariableFactors   = list("cyl"),
                            title                   = "Scatterplot - not resizable",
                            resizable               = FALSE)

    check_ui_test(result)

    warning("the plot is shifted to top-left, when clicking on Minimize/Maximize menu button")
})

test_that("bar chart not resizable", {

    y2 <- read.table("https://www.canvasxpress.org/data/cX-basic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(data                    = y2,
                            graphOrientation        = "vertical",
                            graphType               = "Bar",
                            title                   = "Barplot - not resizable",
                            resizable               = FALSE)

    check_ui_test(result)

    warning("the plot is shifted to top-left, when clicking on Minimize/Maximize menu button")
})
