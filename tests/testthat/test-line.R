context("canvasXpress Web Charts - Line")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXline1", {
    result <- cXline1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXline2", {
    result <- cXline2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXline3", {
    result <- cXline3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
