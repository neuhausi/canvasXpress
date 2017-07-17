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
#' \emph{(rows are referred to as variables; columns are refered to as samples)}
#' @param decorData decoration/annotation data for the chart
#' @param smpAnnot additional data that applies to samples (columns)
#' @param varAnnot additional data that applies to variables (rows)
#' @param nodeData network visualization data nodes
#' @param edgeData network visualization data edges
#' @param vennData venn visualization data
#' @param vennLegend venn visualization legend
#' @param genomeData genome visualization data
#' @param newickData dendrogram data in Newick format
#' @param graphType type of graph to be plotted - default = 'Scatter2D'
#' @param events user-defined events (e.g. mousemove, mouseout, click and dblclick)
#' @param afterRender event triggered after rendering
#' @param width plot width (valid CSS units) - default = 600px
#' @param height plot height (valid CSS units) - default = 400px
#' @param pretty print tagged code (json/html) nicely - default = FALSE
#' @param digits display digits - default = 4
#' @param ... additional configuration options passed to canvasXpress
#' @param boxplotGroupData character label for grouped boxplot data.  If there is a 
#' non-null value and graphType is 'Boxplot' pre-calculated boxplot data is used from
#' the variables (iqr1, iqr3, qtl1, qtl3, median) and optionally the variable (outliers)
#' in the data parameter.  Note: Boxplot outliers should be specified as 
#' comma-separated string values in the outliers variable.
#' 
#' @return htmlwidget object
#'
#' @export
canvasXpress <- function(data = NULL,       decorData = NULL, 
                         smpAnnot = NULL,   varAnnot = NULL, 
                         nodeData = NULL,   edgeData = NULL, 
                         vennData = NULL,   vennLegend = NULL, 
                         genomeData = NULL, newickData = NULL,
                         graphType ='Scatter2D', events = NULL, afterRender=NULL, 
                         width  = 600, height=400, pretty = FALSE, digits=4, ..., 
                         boxplotGroupData = NULL) {
    
    assertCanvasXpressData(graphType, data, 
                           nodeData, edgeData, 
                           vennData, vennLegend, 
                           genomeData, boxplotGroupData)
    assertCanvasXpressDataFrame(graphType, data, 
                                smpAnnot, varAnnot, 
                                nodeData, edgeData, 
                                vennData, vennLegend, 
                                genomeData)
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
        
        if (graphType == 'Boxplot' && !is.null(boxplotGroupData)) {
            iqr1 = as.matrix(data["iqr1", ])
            dimnames(iqr1) <- NULL
            
            iqr3 = as.matrix(data["iqr3" ,])
            dimnames(iqr3) <- NULL
            
            median = as.matrix(data["median" ,])
            dimnames(median) <- NULL
            
            qtl1 = as.matrix(data["qtl1" ,])
            dimnames(qtl1) <- NULL
            
            qtl3 = as.matrix(data["qtl3" ,])
            dimnames(qtl3) <- NULL
            
            y <- list(vars = as.list(boxplotGroupData),
                      smps = smps,
                      iqr1 = iqr1, 
                      iqr3 = iqr3, 
                      median = median,
                      qtl1 = qtl1,
                      qtl3 = qtl3
            )
            if ("outliers" %in% vars) {
                out <- t(as.matrix(data["outliers", ]))

                out.new <- sapply(out, strsplit, ",")
                out.new <- unname(sapply(out.new, as.numeric))
                out.new <- sapply(out.new, as.list)

                y$out <- list(out.new)
            }
        } #boxplot with summarized data
        else {
            dy <- as.matrix(data)
            dimnames(dy) <- NULL
            y <- list(vars = vars, smps = smps, data = dy)
        }
        
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
        
        data <- list(y = y, x = x, z = z)
        
        if (!is.null(decorData)) {
            data[["d"]] <- decorData
        } 
        
        if (!is.null(newickData)) {
            data[["t"]] <- newickData
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
    widget <- htmlwidgets::createWidget("canvasXpress", cx, 
                              width = width, 
                              height = height)
    widget
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
