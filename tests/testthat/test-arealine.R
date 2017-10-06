context("canvasXpress Web Charts - AreaLine")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXarealine1", {
    result <- cXarealine1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXarealine2", {
    result <- cXarealine2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXarealine3", {
    result <- cXarealine3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
