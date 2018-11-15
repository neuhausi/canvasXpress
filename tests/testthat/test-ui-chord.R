context("canvasXpress Web Charts - Chord")


test_that("cXchord1", {
    check_ui_test(cXchord1())

    warning("Some chords are getting bigger when hovering in and out many times (only if plot is resized)")
})

test_that("cXchord2", {
    check_ui_test(cXchord2())

    warning("Some chords are getting bigger when hovering in and out many times (only if plot is resized)")
})

test_that("cXchord3", {
    check_ui_test(cXchord3())

    warning("Some chords are getting bigger when hovering in and out many times (only if plot is resized)")
})
