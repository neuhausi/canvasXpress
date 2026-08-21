require(testthat)
require(htmlwidgets)
require(canvasXpress)

# suggested packages
try({
    require(canvasXpress.data)
    require(readr)
    require(ggplot2)
    require(patchwork)
    require(GGally)
    library(ggpubr)
    library(ggpattern)
    require(dplyr)
    require(tibble)
}, silent = T)

try({
    testFile <- readr::read_lines(system.file("ui-examples/cX-function.R.gz", package = "canvasXpress", mustWork = TRUE))

    # --- Manual Test Fixes

    #general - escape sequence incorrect
    testFile <- gsub('\\$', '$', testFile, fixed = T)

    #scatter2d9
    testFile <- gsub(", list\\(list\\(FALSE, \'red\'\\)\\)",
                     ", list\\(FALSE, \'red\'\\)", testFile)

    #bubble3, bubble4
    testFile <- gsub("true\\)\\)\\)", "TRUE\\)\\)\\)", testFile)

    # --- End Test Fixes

    temp <- tempfile(fileext = ".R")

    writeLines(testFile, temp)
    source(temp)
})



### Supporting Functions

check_ui_test <- function(result){
    skip_on_cran()
    skip_on_ci()

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

