context("canvasXpress Web Charts - Pie")


test_that("cXpie1", {
    check_ui_test(cXpie1())

    warning('pie changes color on mouseover (if plot is not resized)')
    warning('tooltip text is not equal to slice (e.g. Sample 1, Variable 4 has tooltip Sample1, Variable 3)')
})

test_that("cXpie2", {
    check_ui_test(cXpie2())

    warning('pie changes color on mouseover (if plot is not resized)')
    warning('tooltip text is not equal to slice (e.g. Variable 4 has tooltip Variable 3)')
})

