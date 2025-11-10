context("canvasXpress segregation for violin plot")
skip_if_offline(host = "www.canvasxpress.org")


test_that("violinplot with grouping and segregation", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z <- data.frame(Gene = c("Gene1"), stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

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
