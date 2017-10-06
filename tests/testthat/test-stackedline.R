context("canvasXpress Web Charts - StackedLine")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXstackedline1", {
    result <- cXstackedline1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXstackedline2", {
    result <- cXstackedline2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
