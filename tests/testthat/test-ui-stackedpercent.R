context("canvasXpress Web Charts - StackedPercent")


test_that("cXstackedpercent1", {
    check_ui_test(cXstackedpercent1())
    warning("Hovering over the bar doesn't select the bar like in the web example until plot is resized")
})

test_that("cXstackedpercent2", {
    check_ui_test(cXstackedpercent2())
})

test_that("cXstackedpercent3", {
    check_ui_test(cXstackedpercent3())
})

test_that("cXstackedpercent4", {
    check_ui_test(cXstackedpercent4())
})
