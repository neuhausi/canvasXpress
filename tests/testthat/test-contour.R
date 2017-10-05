context("canvasXpress Web Charts - Contour")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXcontour1", {
    result <- cXcontour1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
