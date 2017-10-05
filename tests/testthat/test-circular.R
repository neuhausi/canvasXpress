context("canvasXpress Web Charts - Circular")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXcircular1", {
    result <- cXcircular1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXcircular2", {
    result <- cXcircular2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
