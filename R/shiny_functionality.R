#' Shiny UI function
#'
#' Output creation function for canvasXpressOutput in Shiny applications and
#' interactive Rmd documents
#'
#' @param outputId shiny unique ID
#' @param width width of the element - default = 100\%
#' @param height height of the element - default = 400px
#'
#' @return Output function that enables the use of the widget in applications
#'
#' @seealso \link[canvasXpress]{renderCanvasXpress}
#' @seealso \link[canvasXpress]{cxShinyExample}
#'
#' @export
canvasXpressOutput <- function(outputId, width = "100%", height = "400px") {
    htmlwidgets::shinyWidgetOutput(outputId, "canvasXpress",
                                   width, height,  package = "canvasXpress")
}


#' Shiny Render function
#'
#' Render function for canvasXpressOutput in Shiny applications and
#' interactive Rmd documents
#'
#' @param expr expression used to render the canvasXpressOutput
#' @param env environment to use - default = parent.frame()
#' @param quoted whether the expression is quoted - default = FALSE
#'
#' @return Render function that enables the use of the widget in applications
#'
#' @seealso \link[canvasXpress]{canvasXpressOutput}
#' @seealso \link[canvasXpress]{cxShinyExample}
#'
#' @section Destroy:
#' When there exists a need to visually remove a plot from a Shiny
#' application when it is not being immediately replaced with a new plot use
#' the destroy option as in:
#'
#' \code{renderCanvasXpress({canvasXpress(destroy = TRUE)})}
#'
#' @export
renderCanvasXpress <- function(expr, env = parent.frame(), quoted = FALSE) {
    if (!quoted) {
        expr <- substitute(expr)
    } # force quoted
    htmlwidgets::shinyRenderWidget(expr, canvasXpressOutput, env, quoted = TRUE)
}
