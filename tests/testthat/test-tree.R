context("canvasXpress Web Charts - Tree")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXtree1", {
    result <- cXtree1()

    if (interactive()) { print(result) }
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXtree2", {
    result <- cXtree2()

    if (interactive()) { print(result) }
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXtree3", {
    result <- cXtree3()

    if (interactive()) { print(result) }
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXtree4", {
    result <- cXtree4()

    if (interactive()) { print(result) }
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

