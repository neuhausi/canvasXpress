#' Create Shiny Example Application
#'
#' This function runs one of the available shiny example applications.  To see the 
#' list of available example applications run the function with no inputs
#' 
#' @param example character name of a valid example application.
#'
#' @return Launches a running shiny example application
#' 
#' @seealso \link[canvasXpress]{canvasXpressOutput}
#' @seealso \link[canvasXpress]{renderCanvasXpress}
#' 
#' @export
cxShinyExample <- function(example = NULL) {
    # locate all the shiny app examples that exist
    validExamples <- list.files(system.file("shiny-examples", package = "canvasXpress"))
    
    validExamplesMsg <- paste0("Valid examples are: '", 
                               paste(validExamples, collapse = "', '"), 
                               "'")

    if (is.null(example)) {
        message(validExamplesMsg)
        return(invisible(NULL))
    }
    else if (missing(example) || !nzchar(example) ||
        !example %in% validExamples) {
        stop(validExamplesMsg, call. = FALSE)
    }
    
    # find and launch the app
    appDir <- system.file("shiny-examples", example, package = "canvasXpress")
    shiny::runApp(appDir, display.mode = "showcase")
}
