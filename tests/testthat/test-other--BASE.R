context("canvasXpress BASE")

# Data preparation
data1.df  <- data.frame(a         = c(1:3),
                        b         = c("A", "B", "C"),
                        row.names = c("row1", "row2", "row3"))
data1.m   <- matrix(1:20, nrow = 5)
data1.l   <- list(y = data1.df, data2 = data1.df)

data1.var <- data.frame(row1 = c(10:12), row2 = c(20:22), row3 = c(30:32))
data1.smp <- data.frame(a = c(30:32), b = c(40:42))

# Positive Tests

test_that("Object Structure Tests", {
    testobj <- canvasXpress(data = data1.df)

    expect_equal(testobj$width, 600)
    expect_equal(testobj$height, 400)
    expect_equivalent(class(testobj), c("canvasXpress", "htmlwidget"))

    expect_true("data"      %in% names(testobj$x))
    expect_true("config"    %in% names(testobj$x))
    expect_true("isR"       %in% names(testobj$x$config))
    expect_true("graphType" %in% names(testobj$x$config))
})

test_that("Allowed Null Data GraphTypes", {
    expect_silent(canvasXpress(data = NULL, graphType = "Map"))
})

test_that("Correct Data Types", {
    expect_silent(canvasXpress(data = data1.df))
    expect_silent(canvasXpress(data = data1.m))
    expect_silent(canvasXpress(data = data1.l))
})

# Negative Tests

test_that("Missing Data", {
    expect_error(canvasXpress(data = NULL),
                 regexp =  "data cannot be NULL!")
})

test_that("Incorrect Data Types", {
    expect_error(canvasXpress(data = "'Test'"))
    expect_error(canvasXpress(data = c(1, 2, 3)),
                 regexp = "data must be a data.frame, matrix, or named list")
})

test_that("Missing GraphType", {
    expect_error(canvasXpress(data = data1.df, graphType = NULL),
                 regexp = "graphType cannot be NULL!")
})

test_that("Incorrect GraphType", {
    expect_error(canvasXpress(data = data1.df, graphType = ""),
                 regexp = "graphType is invalid, must be one of <.*")
    expect_error(canvasXpress(data = data1.df, graphType = "Scatter4d"),
                 regexp = "graphType is invalid, must be one of <.*")
})

test_that("Name mismatches", {
    expect_error(canvasXpress(data     = data1.df,
                              smpAnnot = data1.var),
                 regexp = "Row names in smpAnnot are different from column names in data")
    expect_silent(canvasXpress(data     = data1.df,
                               smpAnnot = data1.smp))

    expect_error(canvasXpress(data     = data1.df,
                              varAnnot = data1.smp),
                 regexp = "Row names in varAnnot are different from row names in data")
    expect_silent(canvasXpress(data     = data1.df,
                               varAnnot = data1.var))
})

# Shiny Functionality

test_that("Shiny Render", {
    expect_s3_class(renderCanvasXpress(NULL), "shiny.render.function")
})

test_that("Shiny Examples", {
    expect_error(cxShinyExample("badexample"),
                 regexp = "Valid examples are: 'example_events', 'example1', 'example2', 'example3'")
    expect_message(cxShinyExample(NULL),
                 regexp = "Valid examples are: 'example_events', 'example1', 'example2', 'example3'")
})


test_that("Shiny Input", {
    skip_if_not_installed("htmlwidgets", "1.6")

    expect_equal(as.character(canvasXpressOutput("test_id")),
                 '<div class="canvasXpress html-widget html-widget-output shiny-report-size html-fill-item-overflow-hidden html-fill-item" id="test_id" style="width:100%;height:400px;"></div>')
})
