# helper functions for tests
library(canvasXpress.data)
library(htmlwidgets)

if (interactive()) {
    library(testthat)
    library(canvasXpress)
}
source(system.file("cX-ui-functions.R", package = "canvasXpress.data"))

check_ui_test <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
