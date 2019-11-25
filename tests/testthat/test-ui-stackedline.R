context("canvasXpress Web Charts - StackedLine")


test_that("cXstackedline1", {
    check_ui_test(cXstackedline1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXstackedline2", {
    check_ui_test(cXstackedline2())
})
