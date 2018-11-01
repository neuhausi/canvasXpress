context("canvasXpress Web Charts - Donnut")


test_that("cXdonut1", {
    check_ui_test(cXdonnut1())

    fail("tooltip text is not equal to text of donnut-slice (e.g. Jan has tooltip Dec)")
})

test_that("cXdonut2", {
    check_ui_test(cXdonnut2())

    fail("tooltip text is not equal to text of donnut-slice (e.g. Jan has tooltip Dec)")
})
