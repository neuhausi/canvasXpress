context("canvasXpress Charts - logical groups")

vals <- c(0.41,0.39,0.49,0.34,0.34,0.38)
vars <- c("QC_PercentDuplication")
smps <- c("1","2","3","4","5","6")
data <- as.data.frame(matrix(vals, nrow = 1, ncol = 6, byrow = TRUE, dimnames = list(vars, smps)))
varx <- c("PlatformType")
valx <- c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE)
datx <- as.data.frame(matrix(valx, nrow = 1, ncol = 6, byrow = TRUE, dimnames = list(varx, smps)))


test_that("boxplot values are logical", {
    result <- canvasXpress(
        data             = data,
        smpAnnot         = datx,
        graphType        = "Boxplot",
        graphOrientation = "vertical",
        groupingFactors  = list("PlatformType"),
        colorBy          = "PlatformType",
        title            = "BoxPlot uses logical True and False")

    check_ui_test(result)
})

test_that("bar plot values are logical", {
    result <- canvasXpress(
        data             = data,
        smpAnnot         = datx,
        graphType        = "Bar",
        graphOrientation = "vertical",
        groupingFactors  = list("PlatformType"),
        colorBy          = "PlatformType",
        title            = "Bar plot uses logical True and False")

    check_ui_test(result)
})

test_that("pre-calculated bar plot values are logical", {
    precalc.data <- data.frame(mean      = c(5, 10),
                               stdev     = c(0.5, 1),
                               row.names = c(FALSE, TRUE)) %>%
        t() %>%
        as.data.frame()

    result <- canvasXpress(
        data             = precalc.data,
        graphType        = "Bar",
        graphOrientation = "vertical",
        colorBy          = "PlatformType",
        title            = "Pre-calculated bar plot uses logical True and False")

    check_ui_test(result)
})

test_that("histogram values are logical", {
    hist.data <- data.frame("TRUE" = vals, "FALSE" = vals)

    result <- canvasXpress(
        data           = hist.data,
        graphType      = "Scatter2D",
        title          = "Histogram uses logical True and False",
        xAxisTitle     = "Some Metric",
        yAxisTitle     = "Frequency",
        afterRender    = list(list("createHistogram")))

    check_ui_test(result)
})


