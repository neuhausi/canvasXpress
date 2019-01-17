context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    warning("When the plot is resized, the colors are gone for a moment")
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    warning("When the plot is resized, the colors are gone for a moment")
})
