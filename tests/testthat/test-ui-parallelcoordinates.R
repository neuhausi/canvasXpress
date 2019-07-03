context("canvasXpress Web Charts - ParallelCoordinates")


test_that("cXparallelcoordinates1", {
    check_ui_test(cXparallelcoordinates1())

    warning("hovering over a line doesn't select the line like in the web example (e.g. line not made thicker), until plot is resized")
})

test_that("cXparallelcoordinates2", {
    check_ui_test(cXparallelcoordinates2())
})

