context("canvasXpress Web Charts - DotLine")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXdotline1", {
    result <- cXdotline1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdotline2", {
    result <- cXdotline2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdotline3 ", {
    result <- cXdotline3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
