context("canvasXpress Charts - Boxplot")

precalc.data <- data.frame(iqr1   = c(45,   7.3, 8),     qtl1     = c(109, 14.9, 4),
                           median = c(159, 20.1, 7.25),  qtl3     = c(249, 26.2, 11.3),
                           iqr3   = c(337, 40.6, 17.4),  outliers = c("", "44.5, 46", ""),
                           type   = c("A", "B", "C"),
                           stringsAsFactors = F)

precalc.data.l <- as.list(precalc.data)

precalc.data <- as.data.frame(t(precalc.data))
colnames(precalc.data) <- c("Assault", "Rape", "Murder")


test_that("precalculated boxplot - dataframe data", {
    result <- canvasXpress(data                  = precalc.data,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    result <- canvasXpress(data                  = precalc.data,
                           smpAnnot              = precalc.data["type", ],
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

test_that("precalculated boxplot - list data", {
    result <- canvasXpress(data                  =  precalc.data.l,
                           smpAnnot              =  colnames(precalc.data),
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # with smpAnnot data
    result <- canvasXpress(data                  = precalc.data.l,
                           smpAnnot              = precalc.data["type",],
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # without smpAnnot
    result <- canvasXpress(data                  =  precalc.data.l,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

