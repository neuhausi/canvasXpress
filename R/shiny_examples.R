#' @export
runExample <- function(examplename = NULL) {
    appDir <- system.file("shiny-examples", "myapp", package = "mypackage")
    if (appDir == "") {
        stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
    }
    
    shiny::runApp(appDir, display.mode = "normal")
}
