context("canvasXpress Web Charts - Layout")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXlayout1", {
    result <- cXlayout1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXlayout2", {
    result <- cXlayout2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXlayout3", {
    result <- cXlayout3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXlayout4", {
    result <- cXlayout4()
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})


test_that("cXlayout5", {
    result <- cXlayout5()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})


test_that("cXlayout6", {
    result <- cXlayout6()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXlayout7", {
    result <- cXlayout7()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})


test_that("cXlayout8", {
    result <- cXlayout8()
    if (interactive()) { print(result) }
    
    warning("grouping results in different layout order")
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
