context("canvasXpress Web Charts - StackedPercentLine")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXstackedpercentline1", {
    result <- cXstackedpercentline1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXstackedpercentline2", {
    result <- cXstackedpercentline2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
