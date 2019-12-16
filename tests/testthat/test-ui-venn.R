context("canvasXpress Web Charts - Venn")


test_that("cXvenn1", {
    check_ui_test(cXvenn1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXvenn2", {
    check_ui_test(cXvenn2())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXvenn3", {
    check_ui_test(cXvenn3())
})
