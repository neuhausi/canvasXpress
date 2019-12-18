context("canvasXpress Web Charts - Layout")


test_that("cXlayout1", {
    check_ui_test(cXlayout1())
})

test_that("cXlayout2", {
    check_ui_test(cXlayout2())
})

test_that("cXlayout3", {
    check_ui_test(cXlayout3())
})

test_that("cXlayout4", {
    check_ui_test(cXlayout4())
})

test_that("cXlayout5", {
    check_ui_test(cXlayout5())
})

test_that("cXlayout6", {
    check_ui_test(cXlayout6())
})

test_that("cXlayout7", {
    check_ui_test(cXlayout7())
})

test_that("cXlayout8", {
    check_ui_test(cXlayout8())
})

test_that("cXlayout9", {
    check_ui_test(cXlayout9())
})

test_that("cXlayout10", {
    check_ui_test(cXlayout10())
})

test_that("cXlayout11", {
    check_ui_test(cXlayout11())

    warning("The subcharts are in a different layout order compared to web example")
})

test_that("cXlayout12", {
    check_ui_test(cXlayout12())

    warning('Fewer pie charts displayed than expected, does not match web example')
    warning("Colors for drug are different, two pieces are green, but one should be orange")
    warning("The subcharts are in a different layout order compared to web example")
})

test_that("cXlayout13", {
    check_ui_test(cXlayout13())
    warning("Plot labels differ from web example")
})

test_that("cXlayout14", {
    check_ui_test(cXlayout14())

    message('Middle section very small at default height - working as designed')
    warning('Hover effect may not be visible if plot is not resized')
})
