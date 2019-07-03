context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    check_ui_test(cXkaplanmeier1())

    warning("The line cannot be selected like in the web example, until the plot is resized")
})

test_that("cXkaplanmeier2", {
    check_ui_test(cXkaplanmeier2())

    warning("The line cannot be selected like in the web example, until the plot is resized")
})

test_that("cXkaplanmeier3", {
    check_ui_test(cXkaplanmeier3())
})

test_that("cXkaplanmeier4", {
    check_ui_test(cXkaplanmeier4())
})

test_that("cXkaplanmeier5", {
    check_ui_test(cXkaplanmeier5())
    warning("fewer pie charts displayed than expected, does not match web example")
    warning("Colors for drug are different, two pieces are green, but one should be orange")
    warning("The subcharts are in a different layout order compared to web example")
})
