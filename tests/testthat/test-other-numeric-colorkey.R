context("canvasXpress numeric colorkey")


test_that("ColorKey for numeric values", {
    tryCatch({
        y = read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        z = read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    color.list <- setNames(as.list(c("red","green","blue","grey")), unique(as.character(z$Sens)))
    sens_list <- setNames(list(color.list), "Sens")

    result <-  canvasXpress(graphType               = "Scatter2D",
                            data                    = y,
                            varAnnot                = z,
                            colorBy                 = "Sens",
                            colorKey                = sens_list,
                            title                   = "ScatterPlot - Sens is numeric key",
                            subtitle                = "colorKey: 1:Red, 2:Green, 3:Blue, 4:Grey")

    check_ui_test(result)

    result <-  canvasXpress(graphType               = "Heatmap",
                            data                    = y,
                            varAnnot                = z,
                            varOverlays             = list("Sens"),
                            title                   = "Heatmap - Sens is numeric key",
                            subtitle                = "colorKey: 1:Red, 2:Green, 3:Blue, 4:Grey",
                            colorSpectrum           = list("blue", "#FFFFF0", "red"),
                            colorKey                = sens_list,
                            setMinX                 = -1,
                            setMaxX                 = 1,
                            stringVariableFactors   = list("Sens"))

    check_ui_test(result)
})
