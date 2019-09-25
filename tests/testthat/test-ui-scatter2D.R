context("canvasXpress Web Charts - Scatter2D")


test_that("cXscatter2d1", {
    check_ui_test(cXscatter2d1())
    warning("Hovering over a circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXscatter2d2", {
    check_ui_test(cXscatter2d2())
    warning("variable name does not match web example, V rather than var")
})

test_that("cXscatter2d3", {
    check_ui_test(cXscatter2d3())
})

test_that("cXscatter2d4", {
    check_ui_test(cXscatter2d4())

    warning("trial legend not visible if plot is not resized")
})

test_that("cXscatter2d5", {
    check_ui_test(cXscatter2d5())

    warning("color of the area does not match the color of the dots like in the web example")
})

test_that("cXscatter2d6", {
    check_ui_test(cXscatter2d6())

    warning("color of the area does not match the color of the dots like in the web example")
})

test_that("cXscatter2d7", {
    check_ui_test(cXscatter2d7())
})

test_that("cXscatter2d8", {
    check_ui_test(cXscatter2d8())
})

test_that("cXscatter2d9", {
    check_ui_test(cXscatter2d9())
})

test_that("cXscatter2d10", {
    check_ui_test(cXscatter2d10())
})

test_that("cXscatter2d11", {
    check_ui_test(cXscatter2d11())
    warning("Hovering over a circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXscatter2d12", {
    check_ui_test(cXscatter2d12())
    warning("Hovering over a circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXscatter2d13", {
    check_ui_test(cXscatter2d13())
    warning("Hovering over a circle doesn't select the circle like in the web example until plot is resized")
})

test_that("cXscatter2d14", {
    check_ui_test(cXscatter2d14())
})
