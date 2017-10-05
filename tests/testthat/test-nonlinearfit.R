context("canvasXpress Web Charts - Nonlinearfit")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXnonlinearfit1", {
    result <- cXnonlinearfit1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXnonlinearfit2", {
    result <- cXnonlinearfit2()
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
