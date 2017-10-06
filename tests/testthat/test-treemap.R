context("canvasXpress Web Charts - Treemap")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXtreemap1", {
    result <- cXtreemap1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXtreemap2", {
    result <- cXtreemap2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXtreemap3", {
    result <- cXtreemap3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
