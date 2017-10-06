context("canvasXpress Web Charts - Donnut")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXdonut1", {
    result <- cXdonnut1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXdonut2", {
    result <- cXdonnut2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
