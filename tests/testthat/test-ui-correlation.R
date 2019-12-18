context("canvasXpress Web Charts - Correlation")


test_that("cXcorrelation1", {
    check_ui_test(cXcorrelation1())

    warning("Hover effect may not be visible if the plot is not resized.")
})

test_that("cXcorrelation2", {
    check_ui_test(cXcorrelation2())

    warning("Hover effect may not be visible if the plot is not resized.")
})

test_that("cXcorrelation3", {
    check_ui_test(cXcorrelation3())
})
