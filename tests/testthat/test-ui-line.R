context("canvasXpress Web Charts - Line")


test_that("cXline1", {
    check_ui_test(cXline1())
    warning("Hovering over a line doesn't select the line like in the web example until plot is resized")
})

test_that("cXline2", {
    check_ui_test(cXline2())
})

test_that("cXline3", {
    check_ui_test(cXline3())
})
