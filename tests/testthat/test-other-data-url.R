context("canvasXpress data-url")


if (interactive()) {
    test_that("Barplot URL data", {
        result <- canvasXpress(
            data             = "https://www.canvasxpress.org/data/cX-generic-dat.txt",
            smpAnnot         = "https://www.canvasxpress.org/data/cX-generic-smp.txt",
            varAnnot         = "https://www.canvasxpress.org/data/cX-generic-var.txt",
            graphType        = "Bar",
            graphOrientation = "vertical",
            plotByVariable   = TRUE,
            smpLabelInterval = 2,
            smpLabelRotate   = 45,
            smpTitle         = "Sample Title",
            title            = "Barplot: loading data from URL",
            xAxis2Show       = FALSE
        )

        check_ui_test(result)
        warning("The sub-menu items that is displayed on a right-click within the canvas do not disappear even after the mouse pointer is moved away. ",
                "This makes it difficult to select any item. This issue is specifc to R studio and cannot be reproduced on the web")

    })
} else {
    message("Non-interactive data-url tests skipped")
}
