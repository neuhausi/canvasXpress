context("canvasXpress Web Charts - Oncoprint")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXoncoprint1", {
    result <- cXoncoprint1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXoncoprint2", {
    result <- cXoncoprint2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXoncoprint3", {
    result <- cXoncoprint3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
