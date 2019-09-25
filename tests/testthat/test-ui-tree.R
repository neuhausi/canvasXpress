context("canvasXpress Web Charts - Tree")


test_that("cXtree1", {
    check_ui_test(cXtree1())
    warning("Hovering over the circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXtree2", {
    check_ui_test(cXtree2())
    warning("Hovering over the circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXtree3", {
    check_ui_test(cXtree3())
    warning("Hovering over the circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXtree4", {
    check_ui_test(cXtree4())
    warning("Hovering over the circle doesn't select the circle like in the web example until plot is resized")
})

