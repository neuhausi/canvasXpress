require(testthat)
require(htmlwidgets)
require(canvasXpress)
require(canvasXpress.data)

t_data_latest <- FALSE

try({
    if (package_version(packageVersion('canvasXpress.data')) > '1.30.5') {
        t_data_latest <- TRUE
    }
})


if (interactive()) {
    source("tests/cX-ui-functions.R")
} else {
    source("../cX-ui-functions.R")
}


check_ui_test <- function(result){
    if (interactive()) {
        print(result)
    }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
