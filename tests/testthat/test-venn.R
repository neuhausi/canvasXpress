context("canvasXpress Web Charts - Venn")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXvenn1", {
    result <- cXvenn1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXvenn2", {
    result <- cXvenn2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXvenn3", {
    result <- cXvenn3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
