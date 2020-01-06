context("canvasXpress Web Charts - Histogram")


test_that("cXhistogram1", {
    check_ui_test(cXhistogram1())

    warning("citation not readable because of the legend at the bottom")
})

test_that("cXhistogram2", {
    check_ui_test(cXhistogram2())

    warning("citation not readable because of the legend at the bottom")
})

test_that("cXhistogram3", {
    check_ui_test(cXhistogram3())

    warning("citation not readable because of the legend at the bottom")
})
