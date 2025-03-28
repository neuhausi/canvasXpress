context("canvasXpress Charts - Segregated Boxplot Tooltips")


test_that("segregation boxplot tooltips", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x = read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    x$dose[x$supp == "VC"] <- rep(c(1,2,3),10)
    x$dose[x$supp == "OJ"] <- rep(c(4,5),15)
    x$order[x$supp == "VC"] <- "G1"
    x$order[x$supp == "OJ"] <- "G2"

    result <- canvasXpress(data                    = y,
                           smpAnnot                = x,
                           graphType               = "Boxplot",
                           graphOrientation        = "vertical",
                           colorBy                 = "supp",
                           groupingFactors         = list("dose", "supp"),
                           segregateSamplesBy      = list("supp"),
                           smpOverlays             = list("dose"),
                           showBoxplotOriginalData = TRUE,
                           showLegend              = TRUE,
                           smpTextRotate           = 90,
                           stringSampleFactors     = list("dose", "order"),
                           title                   = "Boxplot Overlay Tooltips")

    check_ui_test(result)
})
