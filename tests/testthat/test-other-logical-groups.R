context("canvasXpress Charts - logical groups")

vals  <- c(0.41,0.39,0.49,0.34,0.34,0.38)
vars  <- c("QC_PercentDuplication")
smps  <- c("1","2","3","4","5","6")
data  <- as.data.frame(matrix(vals, nrow = 1, ncol = 6, byrow = TRUE, dimnames = list(vars, smps)))
varx  <- c("PlatformType")
valx  <- c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE)
datx  <- as.data.frame(matrix(valx, nrow = 1, ncol = 6, byrow = TRUE, dimnames = list(varx, smps)))

annot_data <- datx %>%
    t() %>%
    as.data.frame() %>%
    mutate(NumericVar  = 1.5:6.5,
           CategoryVar = c("A", "B", "A", "B", "A", "B"))

# logical metadata only
annot_data1 <- select(annot_data, PlatformType)

# logical + numeric metadata -- we have to convert the logical field to character ("TRUE" and "FALSE")
# to prevent CX from converting it to numeric (0 and 1)
annot_data2 <- annot_data %>%
    mutate(PlatformType = as.character(PlatformType)) %>%
    select(PlatformType, NumericVar)

# logical + character metadata
annot_data3 <- select(annot_data, PlatformType, CategoryVar)

annot_data_list <- list(annot_data1, annot_data2, annot_data3)
subtitle_list   <- list(NULL,
                        "with additional numeric metadata",
                        "with additional categorical metadata")

test_that("boxplot values are logical", {
    for (i in seq_along(annot_data_list)) {
        result <- canvasXpress(
            data             = data,
            smpAnnot         = annot_data_list[[i]],
            graphType        = "Boxplot",
            graphOrientation = "vertical",
            groupingFactors  = list("PlatformType"),
            colorBy          = "PlatformType",
            title            = "BoxPlot uses logical True and False",
            subtitle         = subtitle_list[[i]])

        check_ui_test(result)
    }
})

test_that("dotplot values are logical", {
    for (i in seq_along(annot_data_list)) {
        result <- canvasXpress(
            data             = data,
            smpAnnot         = annot_data_list[[i]],
            graphType        = "Dotplot",
            graphOrientation = "vertical",
            groupingFactors  = list("PlatformType"),
            colorBy          = "PlatformType",
            title            = "DotPlot uses logical True and False",
            subtitle         = subtitle_list[[i]])

        check_ui_test(result)
    }
})

test_that("bar plot values are logical", {
    for (i in seq_along(annot_data_list)) {
        result <- canvasXpress(
            data             = data,
            smpAnnot         = annot_data_list[[i]],
            graphType        = "Bar",
            graphOrientation = "vertical",
            groupingFactors  = list("PlatformType"),
            colorBy          = "PlatformType",
            title            = "Bar plot uses logical True and False",
            subtitle         = subtitle_list[[i]])

        check_ui_test(result)
    }
})

test_that("pre-calculated bar plot values are logical", {
    precalc_data <- data.frame(mean      = c(5, 10),
                               stdev     = c(0.5, 1),
                               row.names = c(FALSE, TRUE)) %>%
        t() %>%
        as.data.frame()

    precalc_annot <- data.frame(NumericVar  = c(1.5, 2.5),
                                CategoryVar = c("A", "B"))
    rownames(precalc_annot) <- c(FALSE, TRUE)

    precalc_annot_list <- list(NULL,
                               select(precalc_annot, NumericVar),
                               select(precalc_annot, CategoryVar))

    for (i in seq_along(precalc_annot_list)) {
        result <- canvasXpress(
            data             = precalc_data,
            smpAnnot         = precalc_annot_list[[i]],
            graphType        = "Bar",
            graphOrientation = "vertical",
            colorBy          = "PlatformType",
            title            = "Pre-calculated bar plot uses logical True and False",
            subtitle         = subtitle_list[[i]])

        check_ui_test(result)
    }


})

test_that("histogram values are logical", {
    hist_data <- data.frame("TRUE" = vals, "FALSE" = vals, check.names = FALSE)

    hist_annot_list <- list(NULL,
                            select(annot_data, NumericVar),
                            select(annot_data, CategoryVar))

    for (i in seq_along(annot_data_list)) {
        result <- canvasXpress(
            data           = hist_data,
            varAnnot       = hist_annot_list[[i]],
            graphType      = "Scatter2D",
            title          = "Histogram uses logical True and False",
            subtitle       = subtitle_list[[i]],
            xAxisTitle     = "Some Metric",
            yAxisTitle     = "Frequency",
            citation       = "To view metadata, remove histogram before viewing table",
            afterRender    = list(list("createHistogram")))

        check_ui_test(result)
    }
})
