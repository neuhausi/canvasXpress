context("canvasXpress Web Charts - Scatter3D")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXscatter3d1", {
    result <- cXscatter3d1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter3d2", {
    result <- cXscatter3d2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter3d3", {
    result <- cXscatter3d3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter3d4", {
    result <- cXscatter3d4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter3d5", {
    result <- cXscatter3d5()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatter3d6", {
    warning("scatter3d - plot function missing")
})
