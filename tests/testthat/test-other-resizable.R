context("canvasXpress resizable")


y <- read.table("http://www.canvasxpress.org/data/cX-mtcars-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot resizable", {

    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        stringVariableFactors   = list("cyl"),
        title                   = "Scatterplot - resizable",
        resizable               = TRUE
    )
    check_ui_test(result)

    warning("Increasing the canvas size by dragging the mouse over the edges doesn't work initially (does work after clicking Minimize/Maximize)")
})

test_that("scatterplot resizable width", {

    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        stringVariableFactors   = list("cyl"),
        title                   = "Scatterplot - resizable width",
        resizableX              = TRUE,
        resizableY              = FALSE
    )
    check_ui_test(result)

    warning("Increasing the canvas width by dragging the mouse over the edges doesn't work initially (does work after clicking Minimize/Maximize)")
})

test_that("scatterplot resizable height", {

    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        stringVariableFactors   = list("cyl"),
        title                   = "Scatterplot - resizable height",
        resizableY              = TRUE,
        resizableX              = FALSE
    )
    check_ui_test(result)

    warning("Increasing the canvas height by dragging the mouse over the edges doesn't work initially (does work after clicking Minimize/Maximize)")
})

test_that("scatterplot not resizable", {

    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        stringVariableFactors   = list("cyl"),
        title                   = "Scatterplot - resizable height",
        resizable               = FALSE
    )
    check_ui_test(result)
})

test_that("bar chart not resizable", {

    y <- read.table(system.file("extdata", "cX-basic-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <-  canvasXpress(
        data                    = y,
        graphOrientation        = "vertical",
        graphType               = "Bar",
        title                   = "Barplot - not resizable",
        resizable               = FALSE
    )
    check_ui_test(result)
})

