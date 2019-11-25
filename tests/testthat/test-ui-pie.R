context("canvasXpress Web Charts - Pie")


test_that("cXpie1", {
    check_ui_test(cXpie1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXpie2", {
    check_ui_test(cXpie2())

    warning('Hover effect may not be visible if plot is not resized')
})

