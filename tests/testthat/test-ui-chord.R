context("canvasXpress Web Charts - Chord")


test_that("cXchord1", {
    check_ui_test(cXchord1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXchord2", {
    check_ui_test(cXchord2())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXchord3", {
    check_ui_test(cXchord3())

    warning('Hover effect may not be visible if plot is not resized')
})
