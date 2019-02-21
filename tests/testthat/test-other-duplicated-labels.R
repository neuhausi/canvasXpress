context("canvasXpress duplicated labels")

y <- read.table(system.file("extdata", "cX-simple-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- as.matrix(read.table(system.file("extdata", "cX-simple-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE))

test_that("barplot duplicated labels", {

    colnames(y) <- c("S1", "S2", "S4", "S4", "S5", "S1", "S4", "S4")
    rownames(x) <- colnames(y)

    result <- canvasXpress(
        data                      = y,
        smpAnnot                  = x,
        colorBy                   = "IC50",
        graphOrientation          = "vertical",
        graphType                 = "Bar",
        smpOverlays               = list("Drug Sensitivity"),
        smpTitle                  = "Cell Lines",
        title                     = "Duplicated labels should appear correct",
        xAxis2Show                = FALSE
    )
    check_ui_test(result)
})

test_that("boxplot duplicated labels", {

    colnames(y) <- c("S1", "S1", "S1", "S1", "S0", "S1", "S4", "S4")
    rownames(x) <- colnames(y)

    result <- canvasXpress(
        data                      = y,
        smpAnnot                  = x,
        graphOrientation          = "vertical",
        graphType                 = "Boxplot",
        title                     = "Duplicated labels should appear correct",
        xAxis2Show                = FALSE
    )
    check_ui_test(result)
})
