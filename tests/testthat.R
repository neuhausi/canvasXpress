library(testthat)
library(canvasXpress)

#NOTE: temporary until canvasXpress.data is on CRAN
get_data <- function(file_name) {
    system.file("extdata", file_name, package = "canvasXpress")
}


test_check("canvasXpress")

