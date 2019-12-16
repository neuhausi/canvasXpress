context("canvasXpress Web Charts - Bubble")


test_that("cXbubble1", {
    check_ui_test(cXbubble1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXbubble2", {
    check_ui_test(cXbubble2())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXbubble3", {
    check_ui_test(cXbubble3())

    warning('Hover effect may not be visible if plot is not resized')
})
