context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    check_ui_test(cXkaplanmeier1())

    warning("Plot looks very different compared to web example (afterRender seems not to work)")
})

test_that("cXkaplanmeier2", {
    check_ui_test(cXkaplanmeier2())

    warning("Plot looks very different compared to web example (afterRender seems not to work)")
})

test_that("cXkaplanmeier3", {
    check_ui_test(cXkaplanmeier3())

    warning("The lines look different compared to web example (e.g. the 'Drug1' line")
})

test_that("cXkaplanmeier4", {
    check_ui_test(cXkaplanmeier4())
})

test_that("cXkaplanmeier5", {
    check_ui_test(cXkaplanmeier5())

    warning("The subcharts are in a different layout order compared to web example")
})
