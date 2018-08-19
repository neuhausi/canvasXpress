context("canvasXpress Web Charts - TagCloud")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXtagcloud1", {
    result <- cXtagcloud1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
    warning('Clicking legend gives countdown spinner, doesn\'t happen on the web')
})

