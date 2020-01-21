context("canvasXpress boxplot grouping")

y <- read.table(get_data("cX-toothgrowth-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(get_data("cX-toothgrowth-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

x$prop2 <- c( rep(c("A", "B"), 30) )

test_that("boxplot - grouping", {
    result <- canvasXpress(
        data = y,
        smpAnnot = x,
        graphType = "Boxplot",
        graphOrientation = "vertical",
        groupingFactors = list("dose", "supp"),
        stringSampleFactors = list("dose"),
        showBoxplotOriginalData = TRUE,
        outlineWidth = 2,
        boxplotMedianWidth = 4,
        dataPointSize = 50,
        smpLabelRotate = 90,
        colorBy = "prop2",
        shapeBy = "prop2",
        title = "Boxplot - grouping",
        subtitle = "when colorby property is set to other than groupingFactors",
        xAxisTitle = "len"
    )
    check_ui_test(result)

    warning("when hovering over sample names, they are not well readable")
})
