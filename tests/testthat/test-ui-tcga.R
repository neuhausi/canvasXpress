context("canvasXpress Web Charts - TCGA")


test_that("cXtcga1", {
    check_ui_test(cXtcga1())

    warning("Clicking on legend is not fading boxplot")
})
