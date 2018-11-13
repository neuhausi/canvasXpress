context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    warning('Seeing "Text" tooltips when hovering over the slice text.')
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    warning('Seeing "Text" tooltips when hovering over the slice text.')
})
