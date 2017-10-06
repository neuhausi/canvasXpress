context("canvasXpress Web Charts - Correlation")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXcorrelation1", {
    result <- cXcorrelation1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXcorrelation2", {
    result <- cXcorrelation2()
    if (interactive()) { print(result) }
    
    warning('no legend showing')
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
