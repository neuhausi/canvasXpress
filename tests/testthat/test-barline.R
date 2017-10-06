context("canvasXpress Web Charts - BarLine")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))

test_that("cXbarline1", {
    result <- cXbarline1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXbarline2", {
    result <- cXbarline2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXbarline3", {
    result <- cXbarline3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
