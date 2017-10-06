context("canvasXpress Web Charts - Pie")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXpie1", {
    result <- cXpie1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXpie2", {
    result <- cXpie2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

