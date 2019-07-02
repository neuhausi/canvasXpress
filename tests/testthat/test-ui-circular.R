context("canvasXpress Web Charts - Circular")


test_that("cXcircular1", {
    check_ui_test(cXcircular1())
})

test_that("cXcircular2", {
    check_ui_test(cXcircular2())
})

test_that("cXcircular3", {
    check_ui_test(cXcircular3())

    warning("sample tooltips incorrect, e.g. s108 gives s2")
})

test_that("cXcircular4", {
    check_ui_test(cXcircular4())

    warning("sample tooltips incorrect, e.g. s108 gives s2")
})

test_that("cXcircular5", {
    check_ui_test(cXcircular5())
})

test_that("cXcircular6", {
    check_ui_test(cXcircular6())
})

test_that("cXcircular7", {
    check_ui_test(cXcircular7())
})

test_that("cXcircular8", {
    check_ui_test(cXcircular8())
})
