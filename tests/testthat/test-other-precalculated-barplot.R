context("canvasXpress Charts - Precalculated Barplot")

precalc.data <- data.frame(mean = c(5, 50, 250, 100, NA),
                           stdev = c(20, 10, 20, 15, NA),
                           level = c("Lev1", "Lev2", "Lev3", "Lev4", "NA"),
                           stringsAsFactors = F,
                           row.names = c("Group1", "Group2", "Group3", "Group4", "Missing"))

precalc.data.l <- as.list(precalc.data)

precalc.data   <- as.data.frame(t(precalc.data))


test_that("precalculated barplot - dataframe data", {
    result <- canvasXpress(data                  = precalc.data,
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    result <- canvasXpress(data                  = precalc.data,
                           smpAnnot              = precalc.data["level", ],
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    fail("The bars are almost not visible, scaling is off")
})

test_that("precalculated barplot - list data", {
    result <- canvasXpress(data                  =  precalc.data.l,
                           smpAnnot              =  colnames(precalc.data),
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # with smpAnnot data
    result <- canvasXpress(data                  = precalc.data.l,
                           smpAnnot              = precalc.data["level",],
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # without smpAnnot
    result <- canvasXpress(data                  =  precalc.data.l,
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    fail("The error bar of the first group is not totally visible")
})

