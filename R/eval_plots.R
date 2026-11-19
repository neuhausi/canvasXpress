## Model-evaluation plot builders for R.
##
## Thin wrappers that turn a data frame of classifier results (a truth column
## plus a score or prediction column) into canvasXpress charts, mirroring the
## JavaScript engine's CanvasXpress.rocConfig / prConfig / confusionConfig
## builders. The ROC/PR sweep, AUC and average precision are computed here in
## base R (no external dependency) so the charts render the same server-side as
## they do client-side. Pass a data frame and name the columns, e.g.
## cx_roc(results, truth, score).

## Resolve a column reference against a data frame. Accepts a bare column name,
## a quoted name, or a variable holding one; falls back to evaluating the
## expression (so an inline vector also works).
.cxEvalCol <- function(data, q, env) {
    if (is.character(q) && length(q) == 1 && q %in% names(data)) {
        return(data[[q]])
    }
    nm <- tryCatch(as.character(q), error = function(e) NULL)
    if (!is.null(nm) && length(nm) == 1 && nm %in% names(data)) {
        return(data[[nm]])
    }
    val <- eval(q, envir = data, enclos = env)
    if (length(val) == 1 && is.character(val) && val %in% names(data)) {
        return(data[[val]])
    }
    val
}

## Decide the positive class label. An explicit `positive` wins; otherwise the
## conventional truthy tokens are preferred, falling back to the greater label.
.cxEvalPositive <- function(truth, positive = NULL) {
    if (!is.null(positive)) {
        return(positive)
    }
    lv <- unique(truth)
    preferred <- c(1, "1", TRUE, "TRUE", "yes", "positive", "pos", "Y")
    for (p in preferred) {
        hit <- which(as.character(lv) == as.character(p))
        if (length(hit)) {
            return(lv[hit[1]])
        }
    }
    lv <- sort(lv)
    lv[length(lv)]
}

## Sweep distinct score thresholds high to low, collapsing ties, returning the
## cumulative true/false-positive counts (with a leading 0,0) plus class totals.
.cxEvalSweep <- function(truth, score, positive) {
    score <- as.numeric(score)
    pos   <- truth == positive
    ord   <- order(score, decreasing = TRUE)
    score <- score[ord]
    pos   <- pos[ord]
    totalPos <- sum(pos)
    totalNeg <- length(pos) - totalPos
    if (totalPos == 0 || totalNeg == 0) {
        return(NULL)
    }
    tp <- 0; fp <- 0
    tps <- 0; fps <- 0
    i <- 1
    n <- length(score)
    while (i <= n) {
        at <- score[i]
        while (i <= n && score[i] == at) {
            if (pos[i]) tp <- tp + 1 else fp <- fp + 1
            i <- i + 1
        }
        tps <- c(tps, tp)
        fps <- c(fps, fp)
    }
    list(tp = tps, fp = fps, P = totalPos, N = totalNeg)
}

#' ROC curve for a binary classifier
#'
#' Builds a canvasXpress ROC curve from a data frame holding binary truth and
#' continuous scores, computing the TPR/FPR sweep and the trapezoidal AUC and
#' drawing the chance diagonal as a reference line.
#'
#' @param data   a data frame of classifier results
#' @param truth  column of observed binary class labels (bare or quoted name)
#' @param score  column of decision scores / positive-class probabilities
#' @param positive the label treated as the positive class (default: inferred)
#' @param title  chart title (default: "ROC curve (AUC = ...)")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
#' @examples
#' \dontrun{
#' df <- data.frame(truth = c(0,0,1,1), score = c(0.1,0.4,0.35,0.8))
#' cx_roc(df, truth, score)
#' }
cx_roc <- function(data, truth, score, positive = NULL, title = NULL, ...) {
    env    <- parent.frame()
    y_true  <- .cxEvalCol(data, substitute(truth), env)
    y_score <- .cxEvalCol(data, substitute(score), env)
    positive <- .cxEvalPositive(y_true, positive)
    sw <- .cxEvalSweep(y_true, y_score, positive)
    if (is.null(sw)) stop("cx_roc: truth must contain both classes")
    fpr <- sw$fp / sw$N
    tpr <- sw$tp / sw$P
    auc <- sum(diff(fpr) * (utils::head(tpr, -1) + utils::tail(tpr, -1)) / 2)
    if (is.null(title)) title <- sprintf("ROC curve (AUC = %.3f)", auc)
    mat <- matrix(c(fpr, tpr), ncol = 2,
                  dimnames = list(paste0("t", seq_along(fpr) - 1), c("FPR", "TPR")))
    decorations <- list(line = list(list(x = 0, y = 0, x2 = 1, y2 = 1,
                        color = "#999999", width = 1, type = "dashed", label = "Chance")))
    canvasXpress(mat, graphType = "Scatter2D", scatterType = "line",
                 xAxis = list("FPR"), yAxis = list("TPR"),
                 setMinX = 0, setMaxX = 1, setMinY = 0, setMaxY = 1,
                 xAxisTitle = "False positive rate", yAxisTitle = "True positive rate",
                 title = title, showLoessFit = FALSE, decorations = decorations, ...)
}

#' Precision-recall curve for a binary classifier
#'
#' Builds a canvasXpress precision-recall curve from a data frame holding binary
#' truth and continuous scores, computing precision/recall at each threshold and
#' the average precision (AP) and drawing the no-skill baseline.
#'
#' @param data   a data frame of classifier results
#' @param truth  column of observed binary class labels (bare or quoted name)
#' @param score  column of decision scores / positive-class probabilities
#' @param positive the label treated as the positive class (default: inferred)
#' @param title  chart title (default: "Precision-Recall (AP = ...)")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
cx_pr <- function(data, truth, score, positive = NULL, title = NULL, ...) {
    env     <- parent.frame()
    y_true  <- .cxEvalCol(data, substitute(truth), env)
    y_score <- .cxEvalCol(data, substitute(score), env)
    positive <- .cxEvalPositive(y_true, positive)
    sw <- .cxEvalSweep(y_true, y_score, positive)
    if (is.null(sw)) stop("cx_pr: truth must contain both classes")
    tp <- sw$tp[-1]; fp <- sw$fp[-1]
    recall    <- tp / sw$P
    precision <- ifelse((tp + fp) > 0, tp / (tp + fp), 1)
    recall    <- c(0, recall)
    precision <- c(1, precision)
    ap <- sum(diff(recall) * precision[-1])
    if (is.null(title)) title <- sprintf("Precision-Recall (AP = %.3f)", ap)
    baseline <- sw$P / (sw$P + sw$N)
    mat <- matrix(c(recall, precision), ncol = 2,
                  dimnames = list(paste0("t", seq_along(recall) - 1), c("Recall", "Precision")))
    decorations <- list(line = list(list(x = 0, y = baseline, x2 = 1, y2 = baseline,
                        color = "#999999", width = 1, type = "dashed", label = "No skill")))
    canvasXpress(mat, graphType = "Scatter2D", scatterType = "line",
                 xAxis = list("Recall"), yAxis = list("Precision"),
                 setMinX = 0, setMaxX = 1, setMinY = 0, setMaxY = 1,
                 xAxisTitle = "Recall", yAxisTitle = "Precision",
                 title = title, showLoessFit = FALSE, decorations = decorations, ...)
}

#' Confusion matrix for a classifier
#'
#' Builds a canvasXpress confusion-matrix heatmap from a data frame holding
#' observed and predicted labels, counting every (actual, predicted) pair over
#' the sorted union of labels. Counts are colour-encoded and printed in each cell.
#'
#' @param data   a data frame of classifier results
#' @param truth  column of observed class labels (bare or quoted name)
#' @param pred   column of predicted class labels (bare or quoted name)
#' @param labels optional ordered vector of class labels
#' @param title  chart title (default: "Confusion matrix")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
#' @examples
#' \dontrun{
#' df <- data.frame(truth = c("a","a","b","b"), pred = c("a","b","b","b"))
#' cx_confusion(df, truth, pred)
#' }
cx_confusion <- function(data, truth, pred, labels = NULL, title = NULL, ...) {
    env    <- parent.frame()
    y_true <- .cxEvalCol(data, substitute(truth), env)
    y_pred <- .cxEvalCol(data, substitute(pred), env)
    if (is.null(labels)) labels <- sort(unique(c(y_true, y_pred)))
    rowNames <- paste("Actual", labels)
    colNames <- paste("Pred", labels)
    counts <- matrix(0, nrow = length(labels), ncol = length(labels),
                     dimnames = list(rowNames, colNames))
    ti <- match(as.character(y_true), as.character(labels))
    pj <- match(as.character(y_pred), as.character(labels))
    for (k in seq_along(ti)) {
        if (!is.na(ti[k]) && !is.na(pj[k])) counts[ti[k], pj[k]] <- counts[ti[k], pj[k]] + 1
    }
    cellText <- list()
    for (r in seq_along(rowNames)) {
        for (cc in seq_along(colNames)) {
            cellText[[length(cellText) + 1]] <- list(variable = rowNames[r],
                                                     sample = colNames[cc],
                                                     text = as.character(counts[r, cc]))
        }
    }
    if (is.null(title)) title <- "Confusion matrix"
    canvasXpress(counts, graphType = "Heatmap", varTitle = "Actual", smpTitle = "Predicted",
                 heatmapCellBox = TRUE, heatmapCellText = cellText, title = title, ...)
}

## mean |SHAP| per column, used to order features by importance.
.cxShapOrder <- function(shap) {
    imp <- apply(abs(shap), 2, mean)
    order(imp, decreasing = TRUE)
}

#' Feature importance bar chart
#'
#' Builds a horizontal canvasXpress bar chart of feature importances from a data
#' frame, sorted by descending importance (optionally capped at `top`).
#'
#' @param data a data frame of feature importances
#' @param feature column of feature names (bare or quoted name)
#' @param importance column of importance values (bare or quoted name)
#' @param top optional number of top features to keep
#' @param title chart title (default: "Feature importance")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
cx_importance <- function(data, feature, importance, top = NULL, title = NULL, ...) {
    env <- parent.frame()
    names_v  <- as.character(.cxEvalCol(data, substitute(feature), env))
    values_v <- as.numeric(.cxEvalCol(data, substitute(importance), env))
    ord <- order(values_v, decreasing = TRUE)
    names_v <- names_v[ord]; values_v <- values_v[ord]
    if (!is.null(top) && top > 0 && top < length(values_v)) {
        names_v <- names_v[seq_len(top)]; values_v <- values_v[seq_len(top)]
    }
    mat <- matrix(values_v, nrow = 1, dimnames = list("Importance", names_v))
    if (is.null(title)) title <- "Feature importance"
    canvasXpress(mat, graphType = "Bar", graphOrientation = "horizontal",
                 smpTitle = "Feature", xAxisTitle = "Importance", showLegend = FALSE,
                 title = title, ...)
}

#' Calibration (reliability) curve
#'
#' Builds a canvasXpress calibration curve from a data frame of binary truth and
#' predicted probabilities. Probabilities are grouped into equal-width bins; each
#' non-empty bin is plotted at (mean predicted probability, observed frequency),
#' with the perfect-calibration diagonal and the expected calibration error (ECE)
#' in the title.
#'
#' @param data a data frame of classifier results
#' @param truth column of observed binary class labels (bare or quoted name)
#' @param prob  column of predicted positive-class probabilities in [0,1]
#' @param positive the label treated as the positive class (default: inferred)
#' @param bins number of probability bins (default 10)
#' @param title chart title (default: "Calibration (ECE = ...)")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
cx_calibration <- function(data, truth, prob, positive = NULL, bins = 10, title = NULL, ...) {
    env     <- parent.frame()
    y_true  <- .cxEvalCol(data, substitute(truth), env)
    y_prob  <- as.numeric(.cxEvalCol(data, substitute(prob), env))
    positive <- .cxEvalPositive(y_true, positive)
    idx <- pmin(bins, pmax(1, floor(y_prob * bins) + 1))
    meanp <- obs <- numeric(0); ids <- character(0); ece <- 0; n <- length(y_prob)
    for (b in seq_len(bins)) {
        sel <- idx == b
        cnt <- sum(sel)
        if (cnt == 0) next
        mp <- mean(y_prob[sel]); of <- mean(y_true[sel] == positive)
        meanp <- c(meanp, mp); obs <- c(obs, of); ids <- c(ids, paste0("b", b))
        ece <- ece + (cnt / n) * abs(mp - of)
    }
    if (is.null(title)) title <- sprintf("Calibration (ECE = %.3f)", ece)
    mat <- matrix(c(meanp, obs), ncol = 2, dimnames = list(ids, c("Predicted", "Observed")))
    decorations <- list(line = list(list(x = 0, y = 0, x2 = 1, y2 = 1,
                        color = "#999999", width = 1, type = "dashed", label = "Perfect")))
    canvasXpress(mat, graphType = "Scatter2D", scatterType = "line",
                 xAxis = list("Predicted"), yAxis = list("Observed"),
                 setMinX = 0, setMaxX = 1, setMinY = 0, setMaxY = 1,
                 xAxisTitle = "Mean predicted probability", yAxisTitle = "Observed frequency",
                 title = title, showLoessFit = FALSE, decorations = decorations, ...)
}

#' Learning curve
#'
#' Builds a canvasXpress learning curve from a data frame of training-set sizes and
#' the matching training and validation scores, drawn as two lines over the size axis.
#'
#' @param data a data frame with size, train and validation columns
#' @param size  column of training-set sizes (bare or quoted name)
#' @param train column of training scores (bare or quoted name)
#' @param val   column of validation scores (bare or quoted name)
#' @param title chart title (default: "Learning curve")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
cx_learning_curve <- function(data, size, train, val, title = NULL, ...) {
    env     <- parent.frame()
    sizes_v <- as.character(.cxEvalCol(data, substitute(size), env))
    train_v <- as.numeric(.cxEvalCol(data, substitute(train), env))
    val_v   <- as.numeric(.cxEvalCol(data, substitute(val), env))
    mat <- matrix(c(train_v, val_v), nrow = 2, byrow = TRUE,
                  dimnames = list(c("Training score", "Validation score"), sizes_v))
    if (is.null(title)) title <- "Learning curve"
    canvasXpress(mat, graphType = "Line", smpTitle = "Training set size",
                 yAxisTitle = "Score", showLegend = TRUE, title = title, ...)
}

#' SHAP summary (beeswarm)
#'
#' Builds a canvasXpress SHAP summary beeswarm from a SHAP-value matrix and the
#' matching feature-value matrix. Every (sample, feature) becomes a jittered point
#' grouped on the feature axis, positioned by its SHAP value and coloured by the
#' underlying feature value. Features are ordered by descending mean absolute SHAP.
#'
#' @param shap   a samples x features matrix or data frame of SHAP values
#' @param values a samples x features matrix or data frame of feature values (for colour)
#' @param features optional feature names (default: column names of `shap`)
#' @param top    optional number of top features to keep
#' @param title  chart title (default: "SHAP summary")
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
cx_shap <- function(shap, values, features = NULL, top = NULL, title = NULL, ...) {
    shap <- as.matrix(shap); values <- as.matrix(values)
    if (is.null(features)) features <- colnames(shap)
    if (is.null(features)) features <- paste0("f", seq_len(ncol(shap)))
    ord <- .cxShapOrder(shap)
    if (!is.null(top) && top > 0 && top < length(ord)) ord <- ord[seq_len(top)]
    n <- nrow(shap)
    ids <- character(0); shap_v <- numeric(0); feat_v <- character(0); val_v <- numeric(0)
    for (fi in ord) {
        ids    <- c(ids, paste0("p", fi, "_", seq_len(n)))
        shap_v <- c(shap_v, shap[, fi])
        feat_v <- c(feat_v, rep(features[fi], n))
        val_v  <- c(val_v, values[, fi])
    }
    mat <- matrix(shap_v, nrow = 1, dimnames = list("SHAP value", ids))
    annot <- data.frame(Feature = feat_v, `Feature value` = val_v,
                        check.names = FALSE, stringsAsFactors = FALSE)
    rownames(annot) <- ids
    if (is.null(title)) title <- "SHAP summary"
    canvasXpress(mat, smpAnnot = annot, graphType = "Dotplot", graphOrientation = "horizontal",
                 xAxis = list("SHAP value"), groupingFactors = list("Feature"),
                 colorBy = "Feature value", colorSpectrum = list("#2166ac", "#f7f7f7", "#b2182b"),
                 jitter = TRUE, xAxisTitle = "SHAP value (impact on model output)",
                 showLegend = TRUE, title = title, ...)
}
