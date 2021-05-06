context("canvasXpress segregation for violin plot")


test_that("violinplot with grouping and segregation", {

    y <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- data.frame(Gene = c("Gene1"), stringsAsFactors = FALSE)
    rownames(z) <- rownames(y)

    result <-  canvasXpress(data                 = y,
                            smpAnnot             = x,
                            varAnnot             = z,
                            graphType            = "Boxplot",
                            graphOrientation     = "vertical",
                            colorBy              = "supp",
                            title                = "Violinplot with segregation and grouping should work",
                            showViolinBoxplot    = TRUE,
                            groupingFactors      = list("supp"),
                            segregateVariablesBy = list("Gene"),
                            afterRender          = list(list("switchNumericToString", list("supp", TRUE))))

    check_ui_test(result)
})
