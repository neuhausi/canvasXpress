context("canvasXpress Web Charts - StackedLine")


test_that("cXstackedline1", {
    check_ui_test(cXstackedline1())
    warning("Hovering over the bar doesn't select the bar like in the web example until plot is resized")
})

test_that("cXstackedline2", {
    check_ui_test(cXstackedline2())
})
