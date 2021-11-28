assertDataCorrectness <- function(data, graphType, config) {

    validGraphTypes <- c("Area", "AreaLine", "Bar", "BarLine", "Boxplot",
                         "Circular", "Correlation", "Dotplot", "DotLine",
                         "Fish", "Genome", "Heatmap", "Line", "Map", "Meter", "Network",
                         "Pie", "ParallelCoordinates", "Sankey", "Scatter2D",
                         "Scatter3D", "ScatterBubble2D", "Stacked",
                         "StackedPercent", "StackedLine", "StackedPercentLine",
                         "Tree", "Treemap", "TagCloud", "Venn", "Gantt")
    noDataNecessary  <- c("Map")

    if (is.null(graphType)) stop("graphType cannot be NULL!")

    if (!(graphType %in% validGraphTypes)) {
        stop("graphType is invalid, must be one of <",
             paste(validGraphTypes, collapse = ", "), ">")
    }

    # Implement data in URL
	if (is.character(data) && graphType != "Network") {
		if (httr::http_error(data)) {
			message("Unable to validate URL")
		}
	}
	# for backwards compatibility we accept both data and vennData
	else if (graphType == "Venn") {
        vdata <- data

        if (is.null(vdata)) {
            if (!("vennData" %in% names(config))) {
                stop("vennData cannot be NULL!")
            }
            else {
                vdata <- config$vennData
            }
        }

        if (!inherits(vdata, c("data.frame", "matrix", "list"))) {
            stop("vennData must be a data.frame, matrix, or named list")
        }

        if (inherits(vdata, c("list")) & (length(vdata) > 1)) {
            stop("Venn diagrams do not support multiple datasets")
        }
        else if (is.null(vdata[[1]])) {
            stop("vennData cannot be NULL!")
        }

        if (!("vennLegend" %in% names(config)) |
            !("vennGroups" %in% names(config))) {
            stop("Venn diagrams must specify both the <vennLegend> and <vennGroups> parameters")
        }
    }
    else if (graphType == "Network") {
        # Implement data in URL or file
        if (is.character(data)) {
            if (file.exists(data)) {
                data <- paste(readLines(data), collapse = '\n')
            }
            else if (httr::http_error(data)) {
                message(data, " may not a valid file location or URL - unable to verify.")
            }
        }
        else {
            ndata <- NULL
            edata <- NULL
            if (!is.null(data)) {
                if (!("nodeData" %in% names(data)) & !("edgeData" %in% names(data))) {
                    stop("Network diagrams must specify both <nodeData> and <edgeData> as parameters or named data list items")
                }
                ndata <- data$nodeData
                edata <- data$edgeData
            }
            else {
                if (!("nodeData" %in% names(config)) |
                    !("edgeData" %in% names(config))) {
                    stop("Network diagrams must specify both <nodeData> and <edgeData> as parameters or named data list items")
                }
                ndata <- config$nodeData
                edata <- config$edgeData
            }

            if (is.null(ndata)) {
                stop("nodeData cannot be NULL!")
            }

            if (is.null(edata)) {
                stop("edgeData cannot be NULL!")
            }

            if (!inherits(ndata, c("data.frame", "matrix", "list"))) {
                stop("nodeData must be a data.frame or matrix or named list")
            }

            if (!inherits(edata, c("data.frame", "matrix", "list"))) {
                stop("edgeData must be a data.frame or matrix or named list")
            }
        }
    }
    else if (graphType == "Genome") {
        message("The Genome graphType is an advanced chart, data is passed as-is to the JS library")
    }
    else if (!(graphType %in% noDataNecessary)) {
        if (is.null(data)) {
            stop("data cannot be NULL!")
        }

        if (!inherits(data, c("data.frame", "matrix", "list"))) {
            stop("data must be a data.frame, matrix, or named list")
        }

        if (inherits(data, c("list"))) {
            if (length(data) < 1) {
                stop("data specified as a list must contain at least one item")
            }

            precalcBoxplot  <- FALSE
            precalcBarchart <- FALSE

            if (length(data) > 1 ) {
                if (is.null(names(data))) {
                    stop("data specified as a list of multiple items must have named elements")
                }
                else if (graphType == "Boxplot") {
                    req <- c("iqr1", "qtl1", "median", "qtl3", "iqr3")
                    precalcBoxplot <- (length(intersect(names(data), req)) == 5 ||
                                       length(intersect(rownames(data), req)) == 5)

                    if (!precalcBoxplot && !("y" %in% names(data))) {
                        stop("data specified as a list of multiple items must contain a <y> element")
                    }
                }
                else if (graphType == "Bar") {
                    req <- c("mean", "stdev")
                    precalcBarchart <- (length(intersect(names(data), req)) == 2 ||
                                        length(intersect(rownames(data), req)) == 2)
                    if (!precalcBarchart && !("y" %in% names(data))) {
                        stop("data specified as a list of multiple items must contain a <y> element")
                    }
                }
                else if (!("y" %in% names(data))) {
                    stop("data specified as a list of multiple items must contain a <y> element")
                }
            }

            fail <- vector(mode = "character", length = 0)

            for (name in names(data)) {
                if (!inherits(data[[name]], c("data.frame", "matrix"))) {
                    fail <- c(fail, name)
                }
            }
            if (!precalcBoxplot && !precalcBarchart && length(fail) > 0) {
                stop("data list elements <", paste(fail, collapse = ", "),
                     "> are not data.frame or matrix elements")
            }
        }
    }

} #assertDataCorrectness


assignCanvasXpressColnames <- function(x) {
    if (is.null(colnames(x))) {
        names <- paste("V", seq(length = ncol(x)), sep = "")
    } else {
        names <- colnames(x)
    }
    return(names)
}


assignCanvasXpressRownames <- function(x) {
    if (is.null(rownames(x))) {
        names <- paste("V", seq(length = nrow(x)), sep = "")
    } else {
        names <- rownames(x)
    }
    return(names)
}


convertRowsToList <- function(x) {
    seq_row <- function(x) {
        # From BBmisc
        seq_len(nrow(x))
    }

    # From BBmisc
    res = lapply(seq_row(x), function(i) stats::setNames(x[i,], NULL))
    stats::setNames(res, rownames(x))
}


setup_y <- function(data) {

    y <- NULL

    if (inherits(data, "list")) {
        if (length(data) > 1) {
            y      <- lapply(data, as.matrix, dimnames = list())
            y$smps <- as.list(assignCanvasXpressColnames(data$y))
            y$vars <- as.list(assignCanvasXpressRownames(data$y))

            #rename y to data for canvasXpress
            y$data <- y$y
            y$y    <- NULL
        }
        else {
            y <- list(vars = as.list(assignCanvasXpressRownames(data[[1]])),
                      smps = as.list(assignCanvasXpressColnames(data[[1]])),
                      data = as.matrix(data[[1]], dimnames = list()))
        }
    }
    else {
        y <- list(vars = as.list(assignCanvasXpressRownames(data)),
                  smps = as.list(assignCanvasXpressColnames(data)),
                  data = as.matrix(data, dimnames = list()))
    }

    y
}

setup_x <- function(y_smps, smpAnnot) {
    x <- NULL

    if (!is.null(smpAnnot)) {
        test <- as.list(assignCanvasXpressRownames(smpAnnot))

        if (!identical(test, y_smps)) {
            smpAnnot <- t(smpAnnot)
            test <- as.list(assignCanvasXpressRownames(smpAnnot))
        }

        if (!identical(test, y_smps)) {
            stop("Row names in smpAnnot are different from column names in data")
        }

        x <- lapply(convertRowsToList(t(smpAnnot)), function(d) if (length(d) > 1) d else list(d))
    }

    x
}

setup_z <- function(y_vars, varAnnot) {
    z <- NULL

    if (!is.null(varAnnot)) {
        test <- as.list(assignCanvasXpressRownames(varAnnot))

        if (!identical(test, y_vars)) {
            varAnnot <- t(varAnnot)
            test <- as.list(assignCanvasXpressRownames(varAnnot))
        }

        if (!identical(test, y_vars)) {
            stop("Row names in varAnnot are different from row names in data")
        }

        z <- lapply(convertRowsToList(t(varAnnot)), function(d) if (length(d) > 1) d else list(d))
    }

    z
}

