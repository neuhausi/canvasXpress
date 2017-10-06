context("canvasXpress Web Charts - Histogram")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXhistogram1", {
    result <- cXhistogram1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXhistogram2", {
    result <- cXhistogram2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXhistogram3", {
    result <- cXhistogram3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
