context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    warning("when hovering over 'Dec', this text is displayed in the plot centre")
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    warning("when hovering over 'Dec', this text is displayed in the plot centre")
})
