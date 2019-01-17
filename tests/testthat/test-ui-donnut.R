context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})
