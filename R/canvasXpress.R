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
#' @param data data.frame-, matrix-, list- , or ggplot- classed object
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
#' @section Piping Support:
#'   Piping is supported (both the magrittr '%>%' and native '|>' pipes) when sending an existing
#'   canvasXpress object into data parameter.  Any new parameters will be added to the original configuration
#'   of the object, any parameters with data that existed before will be replaced, and any parameters set
#'   to null will be removed.  It is important to note that primary data changes are not allowed in this
#'   construct - which means that anything specified by using the data, varAnnot, or smpAnnot parameters
#'   cannot be changed from the original values.
#'
#' @return htmlwidgets object
#'
#' @export
canvasXpress <- function(data        = NULL,
                         smpAnnot    = NULL,
                         varAnnot    = NULL,
                         graphType   = "Scatter2D",
                         events      = NULL,
                         afterRender = NULL,
                         pretty      = FALSE,
                         digits      = 4,
                         width       = 600,
                         height      = 400,
                         destroy     = FALSE,
                         ...) {
    if (destroy) {
        return(htmlwidgets::createWidget("canvasXpress", list()))
    }

    config <- list(graphType = graphType, isR = TRUE, ...)

    if (is.null(data) || !(any(c("canvasXpress", "ggplot", "ggsurvplot", "ggmatrix") %in% class(data)))) {
        assertDataCorrectness(data, graphType, config)
    }

    x <- NULL
    y <- NULL
    z <- NULL

    dataframe   <- "columns"
    precalc.box <- c("iqr1", "qtl1", "median", "qtl3", "iqr3", "outliers")
    precalc.bar <- c("mean", "stdev")

    if (!is.null(data) && "canvasXpress" %in% class(data)) {
        # piped in object that will receive changes

        if (!missing(smpAnnot) || !missing(varAnnot)) {
            stop("Primary object data changes are not supported when modifying a canvasXpress object (ie piping) - ie changes to the data, varAnnot or smpAnnot parameters.")
        }

        if (is.null(data$x)) {
            stop("Original canvasXpress object is invalid and cannot be read")
        }

        if (!is.null(data$x$config)) {
            if (missing(graphType)) {
                config$graphType = data$x$config$graphType
            }
            old_config <- data$x$config

            # bring in old config values that are not specified in this object
            for (c in names(old_config)) {
                if (!c %in% names(config)) {
                    config[c] <- old_config[c]
                }
            }
        }

        if (!is.null(data$x$events) && missing(events)) {
            events <- data$x$events
        }

        if (!is.null(data$x$afterRender) && missing(afterRender)) {
            afterRender <- data$x$afterRender
        }

        old_attr <- attr(data$x, "TOJSON_ARGS")
        if (!is.null(old_attr)) {
            if (missing(pretty) && !is.null(old_attr$pretty)) {
                pretty <- old_attr$pretty
            }

            if (missing(digits) && !is.null(old_attr$digits)) {
                digits <- old_attr$digits
            }

            if (!is.null(old_attr$dataframe)) {
                dataframe <- old_attr$dataframe
            }
        }

        if (missing(width)) {
            width <- data$width
        }

        if (missing(height)) {
            height <- data$height
        }

        cx_object <- list(data        = data$x$data,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    } else if (!is.null(data) && ("ggplot" %in% class(data))) {
        if (!(requireNamespace("ggplot2", quietly = TRUE))) {
            stop("The ggplot2 package is required to use this functionality.")
        }
        cx_object <- ggplot.as.list(data, ...)
    } else if (!is.null(data) && ("ggmatrix" %in% class(data))) {
        if (!(requireNamespace("ggplot2", quietly = TRUE))) {
            stop("The ggplot2 package is required to use this functionality.")
        }
        cx_object <- ggplot.as.list(data, ...)
    } else if (!is.null(data) && ("ggsurvplot" %in% class(data))) {
        if (!(requireNamespace("ggplot2", quietly = TRUE))) {
            stop("The ggplot2 package is required to use this functionality.")
        }
        if (!(requireNamespace("survminer", quietly = TRUE))) {
            stop("The survminer package is required to use this functionality.")
        }
        cx_object <- do.call(ggplot.as.list,
                             args = list("o"                         = data$plot,
                                         "kmCxplot"                  = TRUE,
                                         "kmRiskTable"               = ifelse(is.null(data$table), FALSE, TRUE),
                                         "showKMConfidenceIntervals" = data$plot$plot_env$conf.int,
                                         ...))
    } else if (is.character(data) && (graphType != "Network")) {
        if (httr::http_error(data)) {
            message("Unable to validate URL")
        }
        # CanvasXpress Object
        cx_object <- list(data        = data,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    } else if (graphType == "Venn") {
        vdata <- NULL
        if (is.null(data)) {
            if (inherits(config$vennData, "list")) {
                vdata <- config$vennData[[1]]
            } else {
                vdata <- config$vennData
            }
        } else {
            if (inherits(data, "list")) {
                vdata <- data[[1]]
            } else {
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
    } else if (graphType == "Map" && (is.null(data) || (inherits(data, "logical") && data == FALSE))) {
        # CanvasXpress Object
        cx_object <- list(data        = FALSE,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    } else if (graphType == "Network") {
        if (is.character(data)) {
            if (file.exists(data)) {
                data <- paste(readLines(data), collapse = "\n")
            } else if (httr::http_error(data)) {
                message(data, " may not a valid file location or URL - unable to verify.")
            }

            # optionally read appendNetworkData for config
            nd <- config$appendNetworkData
            if (!is.null(nd) && (is.list(nd) || is.character(nd))) {
                nd     <- as.list(nd)
                nd.new <- list()
                for (x in nd) {
                    if (is.character(x)) {
                        if (file.exists(x)) {
                            nd.new <- append(nd.new, paste(readLines(x), collapse = "\n"))
                        } else {
                            if (httr::http_error(x)) {
                                message("Unable to validate URL")
                            }
                            nd.new <- append(nd.new, x)
                        }
                    } else {
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
        } else {
            ndata <- NULL
            edata <- NULL
            gdata <- NULL
            cdata <- NULL
            dataframe <- "rows"

            if (is.null(data)) {
                ndata  <- config$nodeData
                edata  <- config$edgeData
                gdata  <- config$groupData
                cdata  <- config$constraintData
                config <- config[!(names(config) %in% c("nodeData", "edgeData", "groupData", "constraintData"))]
            } else {
                ndata <- data$nodeData
                edata <- data$edgeData
                gdata <- data$groupData
                cdata <- data$constraintData
            }

            # CanvasXpress Object
            cx_object <- list(data        = list(nodes       = ndata,
                                                 edges       = edata,
                                                 groups      = gdata,
                                                 constraints = cdata),
                              config      = config,
                              events      = events,
                              afterRender = afterRender)
        }
    } else if (graphType == "Genome") {
        cx_object <- list(data        = data,
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
        digits <- 16
    } else if (graphType == "Boxplot" &&
               ((length(intersect(names(data), precalc.box[1:5])) == 5) ||
                (length(intersect(rownames(data), precalc.box[1:5])) == 5))) {
        if (inherits(data, "list")) {
            data.names <- names(data)
            iqr1   <- as.matrix(t(data[["iqr1"]]));   dimnames(iqr1) <- NULL
            iqr3   <- as.matrix(t(data[["iqr3"]]));   dimnames(iqr3) <- NULL
            median <- as.matrix(t(data[["median"]])); dimnames(median) <- NULL
            qtl1   <- as.matrix(t(data[["qtl1"]]));   dimnames(qtl1) <- NULL
            qtl3   <- as.matrix(t(data[["qtl3"]]));   dimnames(qtl3) <- NULL

            if (!is.null(smpAnnot)) {
                if (inherits(smpAnnot, "character")) {
                    smps <- smpAnnot
                } else {
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
                out     <- t(as.matrix(data[["outliers"]]))
                out.new <- sapply(out, strsplit, ",")
                out.new <- unname(sapply(out.new, as.numeric))
                out.new <- sapply(out.new, as.list)
                y$out   <- list(out.new)
            }
        } else {
            data.names <- rownames(data)
            iqr1   <- as.matrix(data["iqr1", ]);   dimnames(iqr1) <- NULL
            iqr3   <- as.matrix(data["iqr3", ]);   dimnames(iqr3) <- NULL
            median <- as.matrix(data["median", ]); dimnames(median) <- NULL
            qtl1   <- as.matrix(data["qtl1", ]);   dimnames(qtl1) <- NULL
            qtl3   <- as.matrix(data["qtl3", ]);   dimnames(qtl3) <- NULL

            y <- list(smps   = as.list(assignCanvasXpressColnames(data)),
                      vars   = as.list("precalculated BoxPlot"),
                      iqr1   = iqr1,
                      iqr3   = iqr3,
                      median = median,
                      qtl1   = qtl1,
                      qtl3   = qtl3)
            if ("outliers" %in% data.names) {
                if ("outliers" %in% data.names) {
                    out     <- t(as.matrix(data["outliers", ]))
                    out.new <- sapply(out, strsplit, ",")
                    out.new <- unname(sapply(out.new, as.numeric))
                    out.new <- sapply(out.new, as.list)
                    y$out   <- list(out.new)
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
    } else if (graphType == "Bar" &&
               ((length(intersect(names(data), precalc.bar[1:2])) == 2) ||
                (length(intersect(rownames(data), precalc.bar[1:2])) == 2))) {
        if (inherits(data, "list")) {
            data.names <- names(data)
            mean  <- as.matrix(t(data[["mean"]]));  dimnames(mean) <- NULL
            stdev <- as.matrix(t(data[["stdev"]])); dimnames(stdev) <- NULL

            if (!is.null(smpAnnot)) {
                if (inherits(smpAnnot, "character")) {
                    smps <- smpAnnot
                } else {
                    smps <- rownames(smpAnnot)
                }
            } else {
                smps <- make.names(1:length(data[["mean"]]))
            }

            y <- list(smps  = as.list(smps),
                      vars  = as.list("precalculated BarChart"),
                      mean  = mean,
                      stdev = stdev)
        } else {
            data.names <- rownames(data)
            mean  <- as.matrix(data["mean", ]);  dimnames(mean) <- NULL
            stdev <- as.matrix(data["stdev", ]); dimnames(stdev) <- NULL

            y <- list(smps  = as.list(assignCanvasXpressColnames(data)),
                      vars  = as.list("precalculated BarChart"),
                      mean  = mean,
                      stdev = stdev)
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
    } else {
        # standard graph
        y <- setup_y(data)
        x <- setup_x(y$smps, smpAnnot)
        z <- setup_z(y$vars, varAnnot)

        # CanvasXpress Object
        cx_object <- list(data        = list(y = y, x = x, z = z),
                          config      = config,
                          events      = events,
                          afterRender = afterRender)
    } # standard graph

    attr(cx_object, "TOJSON_ARGS") <- list(
        dataframe = dataframe,
        pretty    = pretty,
        digits    = digits)

    htmlwidgets::createWidget(name    = "canvasXpress",
                              x       = cx_object,
                              width   = width,
                              height  = height,
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
                              pretty  = FALSE,
                              digits  = 4,
                              width   = 600,
                              height  = 400,
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
