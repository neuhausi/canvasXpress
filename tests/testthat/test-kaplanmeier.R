context("canvasXpress Web Charts - Kaplanmeier")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXkaplanmeier1", {
    result <- cXkaplanmeier1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXkaplanmeier2", {
    result <- cXkaplanmeier2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
