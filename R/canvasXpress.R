#' CanvasXpress Visualization Package
#'
#' A package to assist in creating visualizations in CanvasXpress in R. 
#' 
#' CanvasXpress is a standalone JavaScript library for reproducible research
#' with complete tracking of data and end-user modifications stored in a single 
#' PNG image that can be played back.
#'
#'
#' @section More Information:
#' \url{http://canvasxpress.org}  
#' 
#' \code{browseVignettes(package = 'canvasXpress')}
#'
#' @docType package
#' @aliases canvasXpress-package
"_PACKAGE"

#' canvasXpress
#'
#' Custom HTML widget creation function based on widget YAML and JavaScript for 
#' use in any html-compatible context
#'  
#' @param data canvasXpress data frame
#' \emph{(rows are refered to variables; columns are refered to samples)}
#' @param decorData tbd
#' @param smpAnnot additional data that applies to samples (columns)
#' @param varAnnot additional data that applies to variables (rows)
#' @param nodeData network visualization data nodes
#' @param edgeData network visualization data edges
#' @param vennData venn visualization data
#' @param vennLegend venn visualization legend
#' @param genomeData genome visualization data
#' @param graphType type of graph to be plotted - default = 'Scatter2D'
#' @param events user-defined events (eg. mousemove, mouseout, click and dblclick)
#' @param afterRender event triggered after rendering
#' @param width plot width (valid CSS units) - default = 600px
#' @param height plot height (valid CSS units) - default = 400px
#' @param pretty print tagged code (json/html) nicely - default = FALSE
#' @param digits display digits - default = 4
#' @param ... additional configuration options passed to canvasXpress
#' 
#' @return htmlwidget object
#'
#' @export
canvasXpress <- function(data = NULL,     decorData = NULL, 
                         smpAnnot = NULL, varAnnot = NULL, 
                         nodeData = NULL, edgeData = NULL, 
                         vennData = NULL, vennLegend = NULL, 
                         genomeData = NULL, 
                         graphType='Scatter2D', 
                         events=NULL, afterRender=NULL, 
                         width=600, height=400, 
                         pretty=FALSE, digits=4, ...) {
    
    assertCanvasXpressData(data, decorData, 
                           smpAnnot, varAnnot, 
                           nodeData, edgeData, 
                           vennData, vennLegend, 
                           genomeData, 
                           graphType)
    assertCanvasXpressDataFrame(data, decorData, 
                                smpAnnot, varAnnot, 
                                nodeData, edgeData, 
                                vennData, vennLegend, 
                                genomeData, 
                                graphType)
    dataframe = "columns"
    
    if (graphType == 'Network') {
        nodes <- NULL
        edges <- NULL
        if (!is.null(nodeData)) {
            nodes <- nodeData
        }
        if (!is.null(edgeData)) {
            edges <- edgeData
            if (is.null(nodeData)) {
                nodes <- unique(c(
                        as.vector(edgeData[,grep("id1", colnames(edgeData))]), 
                        as.vector(edgeData[,grep("id2", colnames(edgeData))])))
                names(nodes) <- rep("id", length(nodes))
            }
        }
        dataframe = "rows"
        data <- list(nodes = nodes, edges = edges)
    } 
    else if (graphType == 'Venn') {
        dataframe = "columns"
        data <- list(venn = list(data = vennData, legend = vennLegend))
    } 
    else if (graphType == 'Genome') {
        #TBD
    } 
    else {
        vars = as.list(assignCanvasXpressRownames(data))
        smps = as.list(assignCanvasXpressColnames(data))
        dy <- as.matrix(data)
        dimnames(dy) <- NULL
        y <- list(vars = vars, smps = smps, data = dy)
        x <- NULL
        z <- NULL
        if (!is.null(smpAnnot)) {
            vars2 = as.list(assignCanvasXpressRownames(smpAnnot))
            smps2 = as.list(assignCanvasXpressColnames(smpAnnot))
            if (!identical(vars2, smps)) {
                smpAnnot <- t(smpAnnot)
                vars2 = as.list(assignCanvasXpressRownames(smpAnnot))
                smps2 = as.list(assignCanvasXpressColnames(smpAnnot))
            }
            if (!identical(vars2, smps)) {
                stop("Column names in smpAnnot are different from column names in data")
            }
            x <- lapply(convertRowsToList(t(smpAnnot)), function (d) if (length(d) > 1) d else list(d))
        }
        if (!is.null(varAnnot)) {
            vars3 = as.list(assignCanvasXpressRownames(varAnnot))
            smps3 = as.list(assignCanvasXpressColnames(varAnnot))
            if (!identical(vars3, vars)) {
                stop("Row names in varAnnot are different from row names in data")
            }
            z <- lapply(convertRowsToList(t(varAnnot)), function (d) if (length(d) > 1) d else list(d))
        }
        if (!is.null(decorData)) {
            data <- list(y = y, x = x, z = z, d = decorData)
        } else {
            data <- list(y = y, x = x, z = z)
        }
    }
    
    # Config
    config <- list(graphType = graphType, isR = TRUE, ...)
    
    # Events
    # Nothing to do
    
    # After Render
    # Nothing to do
    
    # CanvasXpress Object
    cx = list(data = data, 
              config = config, 
              events = events, 
              afterRender = afterRender)
    
    ## toJSON option
    options(htmlwidgets.TOJSON_ARGS = list(dataframe = dataframe, 
                                           pretty = pretty, 
                                           digits = digits))
    
    # Create the widget
    htmlwidgets::createWidget("canvasXpress", cx, 
                              width = width, 
                              height = height)
}


#' canvasXpressOutput
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
                                   width, height, 
                                   package = "canvasXpress")
}

#' renderCanvasXpress
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
#' @export
renderCanvasXpress <- function(expr, env = parent.frame(), quoted = FALSE) {
    if (!quoted) { 
        expr <- substitute(expr) 
    } # force quoted
    htmlwidgets::shinyRenderWidget(expr, canvasXpressOutput, env, quoted = TRUE)
}
