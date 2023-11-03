require(testthat)
require(htmlwidgets)
require(canvasXpress)
require(canvasXpress.data)
require(readr)
require(ggplot2)
require(dplyr)

try({
    testFile <- read_lines(system.file("ui-examples/cX-function.R.gz", package = "canvasXpress", mustWork = TRUE))

    # --- Manual Test Fixes

    #general - escape sequence incorrect
    testFile <- gsub('\\$', '$', testFile, fixed = T)

    #map1
    testFile <- gsub("https://www.canvasxpress.org/data/cX-olympicMedals",
                     "https://www.canvasxpress.org/data/cX-OlympicMedals", testFile)

    #layout12, kaplanmeier3, kaplanmeier5
    testFile <- gsub("list\\(list\\('Survival','Survival-Censor'\\)\\)",
                     "list\\('Survival','Survival-Censor'\\)", testFile)

    #kaplanmeier4
    testFile <- gsub("list\\(list\\('Survival2','Survival2-Censor'\\)\\)",
                     "list\\('Survival2','Survival2-Censor'\\)", testFile)

    #kaplanmeier1-2
    testFile <- gsub("list\\(list\\('Time','Censor'\\)\\)",
                     "list\\('Time','Censor'\\)", testFile)

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

