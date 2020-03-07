# helper functions for tests
# library(canvasXpress.data)
library(htmlwidgets)

if (interactive()) {
    library(testthat)
    library(canvasXpress)

    source("tests/cX-ui-functions.R")
} else {
    source("../cX-ui-functions.R")
}

#NOTE: temporary until canvasXpress.data is on CRAN
get_data <- function(file_name) {
    system.file("extdata", file_name, package = "canvasXpress")
}

check_ui_test <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
