context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    check_ui_test(cXkaplanmeier1())
})

test_that("cXkaplanmeier2", {
    check_ui_test(cXkaplanmeier2())
})

test_that("cXkaplanmeier3", {
    check_ui_test(cXkaplanmeier3())
})

test_that("cXkaplanmeier4", {
    check_ui_test(cXkaplanmeier4())
})

test_that("cXkaplanmeier5", {
    check_ui_test(cXkaplanmeier5())

    message('Fewer pie charts are displayed at a time than exist, the ones chosen to display differ between the web and R - working as expected')
    warning("Colors for drug are different, two pieces are green, but one should be orange")
})

test_that("cXkaplanmeier6", {
    check_ui_test(cXkaplanmeier6())
})


test_that("cXkaplanmeier7", {
    check_ui_test(cXkaplanmeier7())
})

test_that("cXkaplanmeier8", {
    check_ui_test(cXkaplanmeier8())
})

test_that("cXkaplanmeier9", {
    check_ui_test(cXkaplanmeier9())
})
