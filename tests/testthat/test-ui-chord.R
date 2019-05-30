context("canvasXpress Web Charts - Chord")


test_that("cXchord1", {
    check_ui_test(cXchord1())

    warning('Legend only visible after making the plot sufficiently larger')
})

test_that("cXchord2", {
    check_ui_test(cXchord2())

    warning('Legend only visible after making the plot sufficiently larger')
})

test_that("cXchord3", {
    check_ui_test(cXchord3())
})
