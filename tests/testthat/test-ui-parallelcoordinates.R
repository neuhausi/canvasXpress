context("canvasXpress Web Charts - ParallelCoordinates")


test_that("cXparallelcoordinates1", {
    check_ui_test(cXparallelcoordinates1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXparallelcoordinates2", {
    check_ui_test(cXparallelcoordinates2())
})

