#' CanvasXpress Visualization Package
#'
#' A package to assist in creating visualizations in CanvasXpress in R.
#'
#' CanvasXpress is a standalone JavaScript library for reproducible research
#' with complete tracking of data and end-user modifications stored in a single
#' PNG image that can be played back for an extensive set of visualizations.
#'
#'
#' @section More Information:
#' \url{https://www.canvasxpress.org}
#'
#' \code{browseVignettes(package = "canvasXpress")}
#'
#' @docType package
#' @aliases canvasXpress-package
"_PACKAGE"


#' HTML Widget Creation
#'
#' Custom HTML widget creation function based on widget YAML and JavaScript for
#' use in any html-compatible context
#'
#'
#' @param data data.frame-, matrix-, or list- classed data object
#' @param smpAnnot additional data that applies to samples (columns)
#' @param varAnnot additional data that applies to variables (rows)
#' @param graphType type of graph to be plotted - default = "Scatter2D"
#' @param events user-defined events (e.g. mousemove, mouseout, click and dblclick)
#' @param afterRender event triggered after rendering
#' @param pretty print tagged code (JSON/HTML) nicely - default = FALSE
#' @param digits display digits - default = 4
#' @param width plot width (valid CSS units) - default = 600px
#' @param height plot height (valid CSS units) - default = 400px
#' @param destroy used to indicate removal of a plot - default = FALSE
#' @param ... additional parameters passed to canvasXpress
#'
#' @return htmlwidgets object
#'
#' @export
canvasXpress <- function(data = NULL,
                         smpAnnot = NULL,
                         varAnnot = NULL,
                         #config items
                         graphType = "Scatter2D",
                         # straight-through
                         events = NULL,
                         afterRender=NULL,
                         #htmlwidgets options
                         pretty = FALSE,
                         digits = 4,
                         width  = 600,
                         height = 400,
                         destroy = FALSE,
                         ... ) {

    if (destroy) {
        return(htmlwidgets::createWidget("canvasXpress", list()))
    }

    config <- list(graphType = graphType, isR = TRUE, ...)
    assertDataCorrectness(data, graphType, config)

    x             <- NULL
    y             <- NULL
    z             <- NULL
    dataframe     <- "columns"
    precalc.box   <- c("iqr1", "qtl1", "median", "qtl3", "iqr3", "outliers")
    precalc.bar   <- c("mean", "stdev")

	# Implement data in URL
	if (is.character(data) && (graphType != "Network")) {
		if (httr::http_error(data)) {
		    message("Unable to validate URL")
		}
		# CanvasXpress Object
		cx_object <- list(data        = data,
				          config      = config,
				          events      = events,
				          afterRender = afterRender)
	}
	else if (graphType == "Venn") {
        vdata <- NULL
        if (is.null(data)) {
            if (inherits(config$vennData, "list")) {
                vdata <- config$vennData[[1]]
            }
            else {
                vdata <- config$vennData
            }
        }
        else {
            if (inherits(data, "list")) {
                vdata <- data[[1]]
            }
            else {
                vdata <- data
            }
        }
        legend <- config$vennLegend

        # Config - remove venn items
        config <- config[!(names(config) %in% c("vennData", "vennLegend"))]

        # CanvasXpress Object
        cx_object <- list(data        = list(venn = list(data = vdata, legend = legend)),
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    }
    else if (graphType == "Map" &&
             (is.null(data) || (inherits(data, "logical") && data == FALSE))) {

        # CanvasXpress Object
        cx_object <- list(data        = FALSE,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    }
    else if (graphType == "Network") {
        if (is.character(data)) {
            if (file.exists(data)) {
                data <- paste(readLines(data), collapse = '\n')
            }
            else if (httr::http_error(data)) {
                message(data, " may not a valid file location or URL - unable to verify.")
            }

            #optionally read appendNetworkData for config
            nd <- config$appendNetworkData
            if (!is.null(nd) && (is.list(nd) || is.character(nd))) {
                nd <- as.list(nd)
                nd.new <- list()
                for (x in nd) {
                    if (is.character(x)) {
                        if (file.exists(x)) {
                            nd.new <- append(nd.new, paste(readLines(x), collapse = '\n'))
                        }
                        else {
                            if (httr::http_error(x)) {
                                message("Unable to validate URL")
                            }
                            nd.new <- append(nd.new, x)
                        }
                    }
                    else {
                        nd.new <- append(nd.new, list(x))
                    }
                }
                config$appendNetworkData <- nd.new
            }

            # CanvasXpress Object
            cx_object <- list(data        = data,
                              config      = config,
                              events      = events,
                              afterRender = afterRender)

        }
        else {
            ndata     <- NULL
            edata     <- NULL
            dataframe <- "rows"

            if (is.null(data)) {
                ndata <- config$nodeData
                edata <- config$edgeData
                config <- config[!(names(config) %in% c("nodeData", "edgeData"))]
            }
            else {
                ndata <- data$nodeData
                edata <- data$edgeData
            }

            # CanvasXpress Object
            cx_object <- list(data        = list(nodes = ndata, edges = edata),
                              config      = config,
                              events      = events,
                              afterRender = afterRender)
        }
    }
    else if (graphType == "Genome") {
        cx_object <- list(data        = data,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
        digits <- 16
    }
    else if (graphType == "Boxplot" &&
             ((length(intersect(names(data), precalc.box[1:5])) == 5) ||
              (length(intersect(rownames(data), precalc.box[1:5])) == 5))) {

        if (inherits(data, "list")) {
            data.names <- names(data)
            iqr1       <- as.matrix(t(data[["iqr1"]]));   dimnames(iqr1)   <- NULL
            iqr3       <- as.matrix(t(data[["iqr3"]]));   dimnames(iqr3)   <- NULL
            median     <- as.matrix(t(data[["median"]])); dimnames(median) <- NULL
            qtl1       <- as.matrix(t(data[["qtl1"]]));   dimnames(qtl1)   <- NULL
            qtl3       <- as.matrix(t(data[["qtl3"]]));   dimnames(qtl3)   <- NULL

            if (!is.null(smpAnnot)) {
                if (inherits(smpAnnot, "character")) {
                    smps <- smpAnnot
                }
                else {
                    smps <- rownames(smpAnnot)
                }
            } else {
                smps <- make.names(1:length(data[["iqr1"]]))
            }

            y <- list(smps   = as.list(smps),
                      vars   = as.list("precalculated BoxPlot"),
                      iqr1   = iqr1,
                      iqr3   = iqr3,
                      median = median,
                      qtl1   = qtl1,
                      qtl3   = qtl3)
            if ("outliers" %in% data.names) {
                out <- t(as.matrix(data[["outliers"]]))
                out.new <- sapply(out, strsplit, ",")
                out.new <- unname(sapply(out.new, as.numeric))
                out.new <- sapply(out.new, as.list)
                y$out <- list(out.new)
            }
        }
        else {
            data.names <- rownames(data)
            iqr1   <- as.matrix(data["iqr1",]);   dimnames(iqr1)   <- NULL
            iqr3   <- as.matrix(data["iqr3",]);   dimnames(iqr3)   <- NULL
            median <- as.matrix(data["median",]); dimnames(median) <- NULL
            qtl1   <- as.matrix(data["qtl1",]);   dimnames(qtl1)   <- NULL
            qtl3   <- as.matrix(data["qtl3",]);   dimnames(qtl3)   <- NULL

            y <- list(smps   = as.list(assignCanvasXpressColnames(data)),
                      vars   = as.list("precalculated BoxPlot"),
                      iqr1   = iqr1,
                      iqr3   = iqr3,
                      median = median,
                      qtl1   = qtl1,
                      qtl3   = qtl3)
            if ("outliers" %in% data.names) {
                if ("outliers" %in% data.names) {
                    out <- t(as.matrix(data["outliers",]))
                    out.new <- sapply(out, strsplit, ",")
                    out.new <- unname(sapply(out.new, as.numeric))
                    out.new <- sapply(out.new, as.list)
                    y$out <- list(out.new)
                }
            }
        }

        if (!is.null(smpAnnot)) {
            if (!inherits(data, "list")) {
                test <- as.list(assignCanvasXpressRownames(smpAnnot))

                if (!identical(test, y$smps)) {
                    smpAnnot <- t(smpAnnot)
                    test <- as.list(assignCanvasXpressRownames(smpAnnot))
                }

                if (!identical(test, y$smps)) {
                    stop("Row names in smpAnnot are different from column names in data")
                }
            }
            if (!inherits(smpAnnot, "character")) {
                x <- lapply(convertRowsToList(t(smpAnnot)), function(d) if (length(d) > 1) d else list(d))
            }
        }

        # NOTE: z should always be null with a boxplot chart

        # CanvasXpress Object
        cx_object <- list(data        = list(y = y, x = x, z = z),
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    }
    else if (graphType == "Bar" &&
             ((length(intersect(names(data), precalc.bar[1:2])) == 2) ||
              (length(intersect(rownames(data), precalc.bar[1:2])) == 2))) {

        if (inherits(data, "list")) {
            data.names <- names(data)
            mean       <- as.matrix(t(data[["mean"]]));   dimnames(mean)   <- NULL
            stdev      <- as.matrix(t(data[["stdev"]]));  dimnames(stdev)  <- NULL

            if (!is.null(smpAnnot)) {
                if (inherits(smpAnnot, "character")) {
                    smps <- smpAnnot
                }
                else {
                    smps <- rownames(smpAnnot)
                }
            } else {
                smps <- make.names(1:length(data[["mean"]]))
            }

            y <- list(smps   = as.list(smps),
                      vars   = as.list("precalculated BarChart"),
                      mean   = mean,
                      stdev  = stdev)
        }
        else {
            data.names <- rownames(data)
            mean   <- as.matrix(data["mean",]);   dimnames(mean)   <- NULL
            stdev  <- as.matrix(data["stdev",]);  dimnames(stdev)  <- NULL

            y <- list(smps   = as.list(assignCanvasXpressColnames(data)),
                      vars   = as.list("precalculated BarChart"),
                      mean   = mean,
                      stdev  = stdev)
        }

        if (!is.null(smpAnnot)) {
            if (!inherits(data, "list")) {
                test <- as.list(assignCanvasXpressRownames(smpAnnot))

                if (!identical(test, y$smps)) {
                    smpAnnot <- t(smpAnnot)
                    test <- as.list(assignCanvasXpressRownames(smpAnnot))
                }

                if (!identical(test, y$smps)) {
                    stop("Row names in smpAnnot are different from column names in data")
                }
            }
            if (!inherits(smpAnnot, "character")) {
                x <- lapply(convertRowsToList(t(smpAnnot)), function(d) if (length(d) > 1) d else list(d))
            }
        }

        z <- setup_z(y$vars, varAnnot)

        # CanvasXpress Object
        cx_object <- list(data        = list(y = y, x = x, z = z),
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    }
    # standard graph
    else {
        y <- setup_y(data)
        x <- setup_x(y$smps, smpAnnot)
        z <- setup_z(y$vars, varAnnot)

        # CanvasXpress Object
        cx_object <- list(data        = list(y = y, x = x, z = z),
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    } #standard graph

    attr(cx_object, 'TOJSON_ARGS') <- list(dataframe = dataframe,
                                           pretty    = pretty,
                                           digits    = digits)

    htmlwidgets::createWidget(name = "canvasXpress",
                              cx_object,
                              width  = width,
                              height = height,
                              package = "canvasXpress")
}


#' HTML Widget Creation using JSON input
#'
#' Custom HTML widget creation function based on widget YAML and JavaScript for
#' use in any html-compatible context using raw JSON input.  Validation of data
#' and configuration is deferred completely to the canvasXpress JavaScript library.
#'
#' For the formatting of the JSON input object see
#'
#' **Note:** this function is intended for use by advanced users who are experimenting
#' with or need to utilize the json-formatted input to canvasXpress and are comfortable
#' debugging chart issues in a browser (JavaScript) context instead of in R.
#'
#' @param json JSON string or object
#' @param pretty print tagged code (JSON/HTML) nicely - default = FALSE
#' @param digits display digits - default = 4
#' @param width plot width (valid CSS units) - default = 600px
#' @param height plot height (valid CSS units) - default = 400px
#' @param destroy used to indicate removal of a plot - default = FALSE
#'
#' @section More Information:
#' \url{https://www.canvasxpress.org}
#'
#' @examples
#'
#' my_json <- '{ "data": {"y": { "vars": ["Performance"],
#'                               "smps": ["January"],
#'                               "data": [[85]] }},
#'               "config": { "graphType": "Meter",
#'                           "meterType": "gauge" }}'
#'
#' canvasXpress.json(my_json)
#'
#' @return htmlwidgets object
#'
#' @export
canvasXpress.json <- function(json,
                              #htmlwidgets options
                              pretty = FALSE,
                              digits = 4,
                              width  = 600,
                              height = 400,
                              destroy = FALSE) {
    if (destroy) {
        return(htmlwidgets::createWidget("canvasXpress", list()))
    }

    if (any(is.null(json),
            is.na(json),
            !(class(json) %in% c("character", "json")),
            length(json) < 1)) {
        stop("json must be supplied and be a character or json object")
    }

    htmlwidgets::createWidget(name    = "canvasXpress",
                              x       = jsonlite::minify(json),
                              width   = width,
                              height  = height,
                              package = "canvasXpress")
}
