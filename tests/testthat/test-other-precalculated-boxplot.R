context("canvasXpress Charts - Precalculated Boxplot")


precalc.data <- data.frame(iqr1   = c(45,   7.3, 8, NA),     qtl1     = c(109, 14.9, 4, NA),
                           median = c(159, 20.1, 7.25, NA),  qtl3     = c(249, 26.2, 11.3, NA),
                           iqr3   = c(337, 40.6, 17.4, NA),  outliers = c("", "44.5, 46", "", ""),
                           stringsAsFactors = F,
                           row.names = c("Assault", "Rape", "Murder", "Missing"))

precalc.data.l <- as.list(precalc.data)
precalc.data   <- as.data.frame(t(precalc.data))

smp.data <- data.frame(type = c("A", "B", "C", "D"), stringsAsFactors = F)
rownames(smp.data) <- colnames(precalc.data)

test_that("precalculated boxplot - dataframe data", {
    result <- canvasXpress(data                  = precalc.data,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    result <- canvasXpress(data                  = precalc.data,
                           smpAnnot              = smp.data,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

test_that("precalculated boxplot - list data", {
    result <- canvasXpress(data                  =  precalc.data.l,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data without smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # with smpAnnot names
    result <- canvasXpress(data                  = precalc.data.l,
                           smpAnnot              = colnames(precalc.data),
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)

    # with smpAnnot data
    result <- canvasXpress(data                  = precalc.data.l,
                           smpAnnot              = smp.data,
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - list data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})
