context("canvasXpress Web Charts - Network")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXnetwork1", {
    result <- cXnetwork1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXnetwork2", {
    result <- cXnetwork2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})


test_that("cXnetwork3", {
    result <- cXnetwork3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})


test_that("cXnetwork4", {
    result <- cXnetwork4()
    if (interactive()) { print(result) }

    warning('not laid out exactly the same, almost a mirror')
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

