context("canvasXpress model-evaluation plots")

# Known reference case: sklearn roc_auc_score(c(0,0,1,1), c(0.1,0.4,0.35,0.8)) == 0.75
# and average_precision_score(...) == 0.8333.
df <- data.frame(truth = c(0, 0, 1, 1), score = c(0.1, 0.4, 0.35, 0.8))

test_that("cx_roc builds a Scatter2D ROC curve with the right AUC and axes", {
    x <- cx_roc(df, truth, score, positive = 1)

    expect_equal(x$x$config$graphType, "Scatter2D")
    expect_equal(x$x$config$scatterType, "line")
    expect_match(x$x$config$title, "AUC = 0.750")
    expect_equal(unlist(x$x$data$y$smps), c("FPR", "TPR"))
    # TPR/FPR step curve: (0,0) start, (1,1) end
    dat <- x$x$data$y$data
    expect_equal(as.numeric(dat[1, ]), c(0, 0))
    expect_equal(as.numeric(dat[nrow(dat), ]), c(1, 1))
    # chance diagonal reference line present
    expect_equal(length(x$x$config$decorations$line), 1L)
})

test_that("cx_pr builds a precision-recall curve with the right AP", {
    x <- cx_pr(df, truth, score, positive = 1)

    expect_equal(x$x$config$graphType, "Scatter2D")
    expect_match(x$x$config$title, "AP = 0.833")
    expect_equal(unlist(x$x$data$y$smps), c("Recall", "Precision"))
    # conventional starting vertex: recall 0 at precision 1
    expect_equal(as.numeric(x$x$data$y$data[1, ]), c(0, 1))
})

test_that("cx_confusion counts (actual, predicted) pairs into a heatmap", {
    cf <- data.frame(t = c("a", "a", "b", "b", "a"),
                     p = c("a", "b", "b", "b", "a"))
    x <- cx_confusion(cf, t, p)

    expect_equal(x$x$config$graphType, "Heatmap")
    expect_equal(unlist(x$x$data$y$vars), c("Actual a", "Actual b"))
    expect_equal(unlist(x$x$data$y$smps), c("Pred a", "Pred b"))
    # actual a -> pred a = 2, pred b = 1; actual b -> pred b = 2
    expect_equal(as.numeric(x$x$data$y$data[1, ]), c(2, 1))
    expect_equal(as.numeric(x$x$data$y$data[2, ]), c(0, 2))
    # one cell-text label per cell
    expect_equal(length(x$x$config$heatmapCellText), 4L)
})

test_that("cx_roc / cx_pr error when truth has a single class", {
    one <- data.frame(truth = c(1, 1, 1), score = c(0.1, 0.2, 0.3))
    expect_error(cx_roc(one, truth, score, positive = 1), "both classes")
    expect_error(cx_pr(one, truth, score, positive = 1), "both classes")
})

test_that("cx_importance sorts descending, caps at top, and is horizontal", {
    d <- data.frame(f = c("age", "bmi", "bp", "sex"), imp = c(0.1, 0.5, 0.3, 0.05))
    x <- cx_importance(d, f, imp, top = 3)

    expect_equal(x$x$config$graphType, "Bar")
    expect_equal(x$x$config$graphOrientation, "horizontal")
    expect_equal(unlist(x$x$data$y$smps), c("bmi", "bp", "age"))
    expect_equal(as.numeric(x$x$data$y$data), c(0.5, 0.3, 0.1))
})

test_that("cx_calibration bins probabilities with a perfect-calibration diagonal", {
    set.seed(1)
    p <- (0:99) / 100
    y <- as.integer(stats::runif(100) < p)
    x <- cx_calibration(data.frame(truth = y, prob = p), truth, prob, positive = 1, bins = 5)

    expect_equal(x$x$config$graphType, "Scatter2D")
    expect_match(x$x$config$title, "ECE =")
    expect_equal(unlist(x$x$data$y$smps), c("Predicted", "Observed"))
    expect_equal(nrow(x$x$data$y$data), 5L)
    expect_equal(length(x$x$config$decorations$line), 1L)
})

test_that("cx_learning_curve draws training and validation lines over size", {
    d <- data.frame(s = c(10, 50, 100, 500), tr = c(.7, .85, .9, .95), va = c(.6, .75, .82, .88))
    x <- cx_learning_curve(d, s, tr, va)

    expect_equal(x$x$config$graphType, "Line")
    expect_equal(unlist(x$x$data$y$vars), c("Training score", "Validation score"))
    expect_equal(unlist(x$x$data$y$smps), c("10", "50", "100", "500"))
})

test_that("cx_shap builds a grouped, colour-by beeswarm from a SHAP matrix", {
    set.seed(2)
    sh <- matrix(stats::rnorm(30), nrow = 10, dimnames = list(NULL, c("age", "bmi", "bp")))
    vl <- matrix(stats::runif(30, 20, 80), nrow = 10, dimnames = list(NULL, c("age", "bmi", "bp")))
    x <- cx_shap(sh, vl)

    expect_equal(x$x$config$graphType, "Dotplot")
    expect_equal(unlist(x$x$config$groupingFactors), "Feature")
    expect_equal(x$x$config$colorBy, "Feature value")
    expect_equal(length(as.numeric(x$x$data$y$data)), 30L)   # 10 samples x 3 features
    expect_true(all(c("Feature", "Feature value") %in% names(x$x$data$x)))
})
