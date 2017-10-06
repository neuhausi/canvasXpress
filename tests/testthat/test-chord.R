context("canvasXpress Web Charts - Chord")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXchord1", {
    result <- cXchord1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXchord2", {
    result <- cXchord2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXchord3", {
    result <- cXchord3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
