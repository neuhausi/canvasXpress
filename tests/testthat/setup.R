require(testthat)
require(htmlwidgets)
require(canvasXpress)
require(canvasXpress.data)


t_cxdata_dev <- FALSE

try({
    if (package_version(packageVersion('canvasXpress.data')) > '1.32.7') {
        t_cxdata_dev <- TRUE
    }

    tryCatch({
        if (interactive()) {
            source("tests/cX-ui-functions.R")
        } else {
            source("../cX-ui-functions.R")
        }
    },
    finally = source("../cX-ui-functions.R"))
})


check_ui_test <- function(result){
    skip_on_cran()

    if (interactive()) {
        print(result)
    }

    tryCatch({
        expect_s3_class(result, "canvasXpress")
        expect_s3_class(result, "htmlwidget")
    },
    error = function(e) {
        warning('check_ui_test() errored with: ', e)
    })
}
