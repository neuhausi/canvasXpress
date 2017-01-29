
assertCanvasXpressData <- function(data = NULL, decorData = NULL, smpAnnot = NULL, varAnnot = NULL, nodeData = NULL, edgeData = NULL, vennData = NULL, vennLegend = NULL, genomeData = NULL, graphType = 'Scatter2D') {
    
    if (graphType == 'Network') {
        if (is.null(nodeData)) {
            stop("Missing nodeData for Network visualization!")
        }
        if (is.null(edgeData)) {
            stop("Missing edgeData for Network visualization!")
        }
    } else if (graphType == 'Venn') {
        if (is.null(vennData)) {
            stop("Missing data for Venn visualization")
        }
        if (is.null(vennLegend)) {
            stop("Missing legend for Venn visualization")
        }
    } else if (graphType == 'Genome') {
        if (is.null(genomeData)) {
            stop("Missing data for Genome visualization")
        }
        stop("Not implemented yet!")
    } else if (is.null(data)) {
        stop("Missing canvasXpress data!")
    }
    
}

assertCanvasXpressDataFrame <- function(data = NULL, decorData = NULL, smpAnnot = NULL, varAnnot = NULL, nodeData = NULL, edgeData = NULL, vennData = NULL, vennLegend = NULL, genomeData = NULL, graphType = 'Scatter2D') {
    
    if (graphType == 'Network') {
        if (!is.null(nodeData) && !is.data.frame(nodeData) && !is.matrix(nodeData)) {
            stop("nodeData must be a data frame or a matrix class object.")
        }
        else {
            if (!"id" %in% colnames(nodeData)) {
                stop("missing 'id' header in nodeData dataframe.")
            }
        }
        if (!is.null(edgeData) && !is.data.frame(edgeData) && !is.matrix(edgeData)) {
            stop("edgeData must be a data frame or a matrix class object.")
        }
        else {
            if (!"id1" %in% colnames(edgeData)) {
                stop("missing 'id1' header in edgeData dataframe.")
            }
            if (!"id2" %in% colnames(edgeData)) {
                stop("missing 'id2' header in edgeData dataframe.")
            }
        }
    } else if (graphType == 'Venn') {
        if (!is.data.frame(vennData) && !is.matrix(vennData)) {
            stop("vennData must be a data frame or a matrix class object.")
        }
        if (length(vennData) == 15) {
            comp = c("A", "B", "C", "D", "AB", "AC", "AD", "BC", "BD", "CD", "ABC", "ABD", "ACD", "BCD", "ABCD")
        } else if (length(vennData) == 7) {
            comp = c("A", "B", "C", "AB", "AC", "BC", "ABC")
        } else {
            comp = c("A", "B", "AB")
        }
        for (c in comp) {
            if (!c %in% colnames(vennData)) {
                stop(cat("missing '", c, "' header in edgeData dataframe.", sep=''))
            }
        }
    } else if (graphType == 'Genome') {
        if (!is.data.frame(genomeData) && !is.matrix(genomeData)) {
            stop("genomeData must be a data frame or a matrix class object.")
        }
    } else {
        if (!is.data.frame(data) && !is.matrix(data)) {
            stop("data must be a data frame or a matrix class object.")
        }
        if (!is.null(smpAnnot) && !is.data.frame(smpAnnot) && !is.matrix(smpAnnot)) {
            stop("smpAnnot must be a data frame or a matrix class object.")
        }
        if (!is.null(varAnnot) && !is.data.frame(varAnnot) && !is.matrix(varAnnot)) {
            stop("varAnnot must be a data frame or a matrix class object.")
        }
    }
    
}

assignCanvasXpressColnames <- function(x) {
    if (is.null(colnames(x))) {
        paste("V", seq(length = ncol(x)), sep = "")
    } else {
        colnames(x)
    }
}

assignCanvasXpressRownames <- function(x) {
    if (is.null(rownames(x))) {
        paste("V", seq(length = nrow(x)), sep = "")
    } else {
        rownames(x)
    }
}


seq_row <- function (x) {
    # From BBmisc
    seq_len(nrow(x))
}

convertRowsToList <- function(x) {
    # From BBmisc
    res = lapply(seq_row(x), function(i) stats::setNames(x[i,], NULL))
    stats::setNames(res, rownames(x))
}
