context("canvasXpress Charts - Segregated Boxplot Tooltips")

y = read.table(get_data( "cX-toothgrowth-dat.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x = read.table(get_data( "cX-toothgrowth-smp.txt.gz"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

x$dose[x$supp == "VC"] <- rep(c(1,2,3),10)
x$dose[x$supp == "OJ"] <- rep(c(4,5),15)
x$order[x$supp == "VC"] <- "G1"
x$order[x$supp == "OJ"] <- "G2"

test_that("segregation boxplot tooltips", {
    result <- canvasXpress(
        data                    = y,
        smpAnnot                = x,
        graphType               = "Boxplot",
        graphOrientation        = "vertical",
        colorBy                 = "supp",
        groupingFactors         = list("dose", "supp"),
        segregateSamplesBy      = list("supp"),
        smpOverlays             = list("dose"),
        showBoxplotOriginalData = TRUE,
        showLegend              = TRUE,
        smpLabelRotate          = 90,
        stringSampleFactors     = list("dose", "order"),
        title                   = "Boxplot Overlay Tooltips"
    )

    check_ui_test(result)
})
