context("canvasXpress Web Charts - Correlation")


test_that("cXcorrelation1", {
    check_ui_test(cXcorrelation1())
})

test_that("cXcorrelation2", {
    check_ui_test(cXcorrelation2())
})

test_that("cXcorrelation3", {
    check_ui_test(cXcorrelation3())

    warning("Clicking on the chart after ordering labels will throw JS console errors")
})
