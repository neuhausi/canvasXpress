context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})
