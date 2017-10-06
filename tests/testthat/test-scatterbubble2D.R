context("canvasXpress Web Charts - ScatterBubble2D")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXscatterbubble2d1", {
    result <- cXscatterbubble2d1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatterbubble2d2", {
    result <- cXscatterbubble2d2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXscatterbubble2d3", {
    result <- cXscatterbubble2d3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
