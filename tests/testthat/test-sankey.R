context("canvasXpress Web Charts - Sankey")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXsankey1", {
    result <- cXsankey1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsankey2", {
    result <- cXsankey2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsankey3", {
    result <- cXsankey3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsankey4", {
    result <- cXsankey4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
