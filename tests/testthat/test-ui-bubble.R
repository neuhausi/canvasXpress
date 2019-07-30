context("canvasXpress Web Charts - Bubble")


test_that("cXbubble1", {
    check_ui_test(cXbubble1())
    warning("when hovering over bubbles, text is displayed in the plot centre")
})

test_that("cXbubble2", {
    check_ui_test(cXbubble2())
    warning("when hovering over bubbles, text is displayed in the plot centre")
})

test_that("cXbubble3", {
    check_ui_test(cXbubble3())
    warning("when hovering over bubbles, text is displayed in the plot centre")
})
