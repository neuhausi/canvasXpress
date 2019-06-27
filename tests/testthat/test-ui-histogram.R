context("canvasXpress Web Charts - Histogram")


test_that("cXhistogram1", {
    check_ui_test(cXhistogram1())

    fail("when clicking on a legend item, the corresponding plot data is not disabled")
})

test_that("cXhistogram2", {
    check_ui_test(cXhistogram2())

    fail("when clicking on a legend item, the corresponding plot data is not disabled")
})

test_that("cXhistogram3", {
    check_ui_test(cXhistogram3())

    fail("when clicking on a legend item, the corresponding plot data is not disabled")
})
