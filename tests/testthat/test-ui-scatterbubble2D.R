context("canvasXpress Web Charts - ScatterBubble2D")


test_that("cXscatterbubble2d1", {
    check_ui_test(cXscatterbubble2d1())
})

test_that("cXscatterbubble2d2", {
    check_ui_test(cXscatterbubble2d2())

    fail("when clicking on a legend item, the corresponding plot data is not disabled")
})

test_that("cXscatterbubble2d3", {
    check_ui_test(cXscatterbubble2d3())
})
