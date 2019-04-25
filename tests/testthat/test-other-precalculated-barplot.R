context("canvasXpress Charts - Precalculated Barplot")

precalc.data <- data.frame(mean = c(5, 50, 250, 100, NA),
                           stdev = c(20, 10, 20, 15, NA),
                           stringsAsFactors = F,
                           row.names = c("Group1", "Group2", "Group3", "Group4", "Missing"))

precalc.data.l <- as.list(precalc.data)
precalc.data   <- as.data.frame(t(precalc.data))

smp.data <- data.frame(level = c("Lev1", "Lev2", "Lev3", "Lev4", "NA"), stringsAsFactors = F)
rownames(smp.data) <- colnames(precalc.data)


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
                           smpAnnot              = smp.data,
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

test_that("precalculated barplot - list data", {
    result <- canvasXpress(data                  =  precalc.data.l,
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    #with smpannot names
    result <- canvasXpress(data                  =  precalc.data.l,
                           smpAnnot              =  colnames(precalc.data),
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # with smpAnnot data
    result <- canvasXpress(data                  = precalc.data.l,
                           smpAnnot              = smp.data,
                           graphType             = "Bar",
                           graphOrientation      = "vertical",
                           smpLabelFontStyle     = "italic",
                           smpLabelRotate        = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated barplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

