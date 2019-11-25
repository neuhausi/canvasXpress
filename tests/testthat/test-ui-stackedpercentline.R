context("canvasXpress Web Charts - StackedPercentLine")


test_that("cXstackedpercentline1", {
    check_ui_test(cXstackedpercentline1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXstackedpercentline2", {
    check_ui_test(cXstackedpercentline2())
})
