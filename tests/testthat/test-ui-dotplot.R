context("canvasXpress Web Charts - Dotplot")


test_that("cXdotplot1", {
    check_ui_test(cXdotplot1())
})

test_that("cXdotplot2", {
    check_ui_test(cXdotplot2())

    warning("Inconsistent Tooltip: for Setosa/Sepal.Length dots, sometimes the second number is in scientific format")
})

test_that("cXdotplot3", {
    check_ui_test(cXdotplot3())
})

test_that("cXdotplot4", {
    check_ui_test(cXdotplot4())
})

test_that("cXdotplot5", {
    check_ui_test(cXdotplot5())
})

test_that("cXdotplot6", {
    check_ui_test(cXdotplot6())
})

test_that("cXdotplot7", {
    check_ui_test(cXdotplot7())
})

test_that("cXdotplot8", {
    check_ui_test(cXdotplot8())
})

test_that("cXdotplot9", {
    check_ui_test(cXdotplot9())
})

test_that("cXdotplot10", {
    check_ui_test(cXdotplot10())
})

