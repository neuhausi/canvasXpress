context("canvasXpress Web Charts - StackedPercentLine")


test_that("cXstackedpercentline1", {
    check_ui_test(cXstackedpercentline1())
    warning("Hovering over the bar doesn't select the bar like in the web example until plot is resized")
})

test_that("cXstackedpercentline2", {
    check_ui_test(cXstackedpercentline2())
})
