context("canvasXpress Web Charts - Stacked")


test_that("cXstacked1", {
    check_ui_test(cXstacked1())

    message('Sample locations depend on space/etc, may be off from web example')
    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXstacked2", {
    check_ui_test(cXstacked2())
})

test_that("cXstacked3", {
    check_ui_test(cXstacked3())
})

test_that("cXstacked4", {
    check_ui_test(cXstacked4())
})

test_that("cXstacked5", {
    check_ui_test(cXstacked5())
})
