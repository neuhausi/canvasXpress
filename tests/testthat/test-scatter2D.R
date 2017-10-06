context("canvasXpress Web Charts - Scatter2D")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXscatter2d1", {
    result <- cXscatter2d1()
   if (interactive()) { print(result) }
    
   expect_s3_class(result, "canvasXpress")
   expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d2", {
    result <- cXscatter2d2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d3", {
    result <- cXscatter2d3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d4", {
    result <- cXscatter2d4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d5", {
    result <- cXscatter2d5()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d6", {
    result <- cXscatter2d6()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d7", {
    result <- cXscatter2d7()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d8", {
    result <- cXscatter2d8()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d9", {
    result <- cXscatter2d9()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter2d10", {
    result <- cXscatter2d10()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

