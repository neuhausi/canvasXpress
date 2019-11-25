context("canvasXpress Web Charts - Line")


test_that("cXline1", {
    check_ui_test(cXline1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXline2", {
    check_ui_test(cXline2())
})

test_that("cXline3", {
    check_ui_test(cXline3())
})
