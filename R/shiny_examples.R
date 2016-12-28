#' @export
cxShinyExample <- function(example) {
    # locate all the shiny app examples that exist
    validExamples <- list.files(system.file("shiny-examples", package = "canvasXpress"))
    
    validExamplesMsg <- paste0("Valid examples are: '", 
                               paste(validExamples, collapse = "', '"), 
                               "'")
    
    # invalid example
    if (missing(example) || !nzchar(example) ||
        !example %in% validExamples) {
        stop(
            paste('Please run `runExample()` with a valid example app', 
                  'as an argument.'),
            validExamplesMsg,
            call. = FALSE)
    }
    
    # find and launch the app
    appDir <- system.file("shiny-examples", example, package = "canvasXpress")
    shiny::runApp(appDir, display.mode = "normal")
}
