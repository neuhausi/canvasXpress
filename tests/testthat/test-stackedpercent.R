context("canvasXpress Web Charts - StackedPercent")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXstackedpercent1", {
    result <- cXstackedpercent1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXstackedpercent2", {
    result <- cXstackedpercent2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXstackedpercent3", {
    result <- cXstackedpercent3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXstackedpercent4", {
    result <- cXstackedpercent4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
