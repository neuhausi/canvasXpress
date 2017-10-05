context("canvasXpress Web Charts - Sunburst")
ifelse(interactive(), source("tests/cX-function.R"), source("../cX-function.R"))


test_that("cXsunburst1", {
    result <- cXsunburst1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsunburst2", {
    result <- cXsunburst2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsunburst3", {
    result <- cXsunburst3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXsunburst4", {
    result <- cXsunburst4()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
