context("canvasXpress Web Charts - Dotplot")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXdotplot1", {
    result <- cXdotplot1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdotplot2", {
    result <- cXdotplot2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdotplot3", {
    result <- cXdotplot3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdotplot4", {
    result <- cXdotplot4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

