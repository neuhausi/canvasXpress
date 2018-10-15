# helper functions for tests 

ifelse(interactive(), source("tests/cX-ui-functions.R"), source("../cX-ui-functions.R"))

check_ui_test <- function(result){
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
