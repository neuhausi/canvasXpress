context("canvasXpress Web Charts - Circular")


test_that("cXcircular1", {
    check_ui_test(cXcircular1())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular2", {
    check_ui_test(cXcircular2())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular3", {
    check_ui_test(cXcircular3())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular4", {
    check_ui_test(cXcircular4())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular5", {
    check_ui_test(cXcircular5())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular6", {
    check_ui_test(cXcircular6())

    warning("After resizing, the plot collapses")
})

test_that("cXcircular7", {
    check_ui_test(cXcircular7())

    fail("the plot has collapsed")
})

test_that("cXcircular8", {
    check_ui_test(cXcircular8())

    warning("After resizing, the plot collapses")
})
