# helper functions for tests

if (interactive()) {
    library(testthat)
    library(canvasXpress)
    library(htmlwidgets)

    source("tests/cX-ui-functions.R")
} else {
    library(htmlwidgets)

    source("../cX-ui-functions.R")
}

check_ui_test <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
