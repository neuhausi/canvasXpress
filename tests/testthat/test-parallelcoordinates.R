context("canvasXpress Web Charts - ParallelCoordinates")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXparallelcoordinates1", {
    result <- cXparallelcoordinates1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXparallelcoordinates2", {
    result <- cXparallelcoordinates2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

