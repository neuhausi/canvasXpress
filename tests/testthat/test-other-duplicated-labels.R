context("canvasXpress duplicated labels")


test_that("segregated barplot duplicated labels", {
    tryCatch({
        data     <- read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        smp_data <- read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        sample_names <- c("S1", "S2", "S4", "S4", "S5", "S1", "S4", "S4")
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    data               <- cbind(data, data)
    smp_data           <- rbind(smp_data, smp_data)
    smp_data$Gene      <- c(rep("Gene1", length(sample_names)), rep("Gene2", length(sample_names)))
    sample_names       <- rep(sample_names, 2)
    smp_data           <- as.matrix(smp_data)
    rownames(smp_data) <- colnames(data) <- sample_names

    result <- canvasXpress(data                      = data,
                           smpAnnot                  = smp_data,
                           colorBy                   = "IC50",
                           graphOrientation          = "vertical",
                           graphType                 = "Bar",
                           smpOverlays               = list("Drug Sensitivity"),
                           segregateSamplesBy        = list("Gene"),
                           smpTitle                  = "Cell Lines",
                           title                     = "Duplicated labels should appear correct for each Gene",
                           xAxis2Show                = FALSE)
    check_ui_test(result)
})

test_that("barplot duplicated labels", {
    tryCatch({
        data     <- read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        smp_data <- read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        sample_names <- c("S1", "S2", "S4", "S4", "S5", "S1", "S4", "S4")
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    smp_data           <- as.matrix(smp_data)
    rownames(smp_data) <- colnames(data) <- sample_names

    result <- canvasXpress(data                      = data,
                           smpAnnot                  = smp_data,
                           colorBy                   = "IC50",
                           graphOrientation          = "vertical",
                           graphType                 = "Bar",
                           smpOverlays               = list("Drug Sensitivity"),
                           smpTitle                  = "Cell Lines",
                           title                     = "Duplicated labels should appear correct",
                           xAxis2Show                = FALSE)
    check_ui_test(result)
})

## Box plot tests

precalc.data <- data.frame(iqr1   = c(45,   7.3, 8, NA),     qtl1     = c(109, 14.9, 4, NA),
                           median = c(159, 20.1, 7.25, NA),  qtl3     = c(249, 26.2, 11.3, NA),
                           iqr3   = c(337, 40.6, 17.4, NA),  outliers = c("", "44.5, 46", "", ""),
                           type   = c("A", "B", "C", "D"),
                           stringsAsFactors = F)
sample_names <- c("Assault", "Rape", "Assault", "Missing")

test_that("segregated boxplot duplicated labels", {

    precalc.data       <- rbind(precalc.data, precalc.data)
    precalc.data$cnty  <- c(rep("Country1", length(sample_names)), rep("Country2", length(sample_names)))
    sample_names       <- rep(sample_names, 2)
    precalc.data       <- as.data.frame(t(precalc.data))
    colnames(precalc.data) <- sample_names

    result <- canvasXpress(data                  = precalc.data,
                           smpAnnot              = precalc.data[c("type", "cnty"), ],
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           segregateSamplesBy    = list("cnty"),
                           title                 = "Precalculated boxplot with segregation - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})

test_that("boxplot duplicated labels", {

    precalc.data <- as.data.frame(t(precalc.data))
    colnames(precalc.data) <- c("Assault", "Rape", "Assault", "Missing")

    result <- canvasXpress(data                  = precalc.data,
                           smpAnnot              = precalc.data["type", ],
                           graphType             = "Boxplot",
                           graphOrientation      = "vertical",
                           smpTextFontStyle      = "italic",
                           smpTextRotate         = 90,
                           showLegend            = FALSE,
                           title                 = "Precalculated boxplot - data with smpAnnot",
                           titleScaleFontFactor  = 0.5)

    check_ui_test(result)
})
