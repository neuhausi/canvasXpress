context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    check_ui_test(cXkaplanmeier1())

    warning("Data 2 is not highlighted when hovering over that line until plot is resized - RStudio Viewer")
})

test_that("cXkaplanmeier2", {
    check_ui_test(cXkaplanmeier2())

    warning("Data 2 is not highlighted when hovering over that area until plot is resized - RStudio Viewer")
})
