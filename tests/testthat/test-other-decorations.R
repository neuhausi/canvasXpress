context("canvasXpress decorations")

data_y <- read.table(system.file("extdata", "cX-scatterR2-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
data_z <- read.table(system.file("extdata", "cX-scatterR2-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("scatterplot referenceLines", {

    result <-  canvasXpress(
        data                    = data_y,
        varAnnot                = data_z,
        colorBy                 = "Group",
        colors                  = list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
        graphType               = "Scatter2D",
        plotBox                 = FALSE,
        showDecorations         = TRUE,
        sizeBy                  = "FC",
        sizes                   = list(4, 14, 16, 18),
        xAxis                   = list("logFC"),
        yAxis                   = list("-log-pVal"),
        showLegend              = FALSE,
        title                   = "Scatterplot - referenceLines",
        decorations             = list(line = list(list(color = "rgba(205,0,0,0.5)", width = 2, x = 0.5), list(color = "rgba(0,104,139,0.5)", width = 2, x = -0.5)))
    )
    check_ui_test(result)
})

test_that("scatterplot notePoint", {

    result <-  canvasXpress(
        data                    = data_y,
        varAnnot                = data_z,
        colorBy                 = "Group",
        colors                  = list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
        graphType               = "Scatter2D",
        plotBox                 = FALSE,
        showDecorations         = TRUE,
        sizeBy                  = "FC",
        sizes                   = list(4, 14, 16, 18),
        xAxis                   = list("logFC"),
        yAxis                   = list("-log-pVal"),
        showLegend              = FALSE,
        title                   = "Scatterplot - notePoint",
        decorations             = list(marker = list(list(sample = list("logFC", "-log-pVal"), text = "Maybe an Outlier?", variable = "Gene30", x = 0.11, y = 0.45)))
    )

    check_ui_test(result)
})

test_that("barplot annotations", {

    y <- read.table(system.file("extdata", "cX-basic2-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(
        data                    = y,
        graphType               = "Bar",
        graphOrientation        = "vertical",
        title                   = "Barplot - annotations",
        decorations             = list(marker = list(list(fontSize = 12, sample = "Sample1", text = "p < 0.01 ***", type = "annotation", variable = "Variable1"), list(fontSize = 12, sample = "Sample2", text = "p < 0.05 **", type = "annotation", variable = "Variable1")))
    )
    check_ui_test(result)
})

test_that("segregated Boxplot decorations with different values", {

    y <- read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    result <- canvasXpress(
        data               = y,
        smpAnnot           = x,
        graphOrientation   = "vertical",
        graphType          = "Boxplot",
        legendBox          = FALSE,
        smpLabelRotate     = 90,
        smpTitle           = "Species",
        title              = "Segregated Boxplot - decorations with different values for each Species",
        segregateSamplesBy = list("Species"),
        groupingFactors    = list("Species"),
        layoutAdjust       = TRUE,
        decorations        = list(line = list(list(align = "left", color = "rgb(255,0,0)", label = "Cutoff", value = 2, width = 2, scope = "setosa"),
                                              list(align = "left", color = "rgb(255,0,0)", label = "Cutoff", value = 4, width = 2, scope = "versicolor"),
                                              list(align = "left", color = "rgb(255,0,0)", label = "Cutoff", value = 6, width = 2, scope = "virginica")))
        )
    check_ui_test(result)
})
