context("canvasXpress Web Charts - Density")


test_that("cXdensity1", {
    check_ui_test(cXdensity1())
})

test_that("cXdensity2", {
    check_ui_test(cXdensity2())
})

test_that("cXdensity3", {
    check_ui_test(cXdensity3())
})

test_that("cXdensity4", {
    check_ui_test(cXdensity4())
})

test_that("cXdensity5", {
    check_ui_test(cXdensity5())
})

test_that("cXdensity6", {
    check_ui_test(cXdensity6())
})

test_that("cXdensity7", {
    check_ui_test(cXdensity7())
})

test_that("cXdensity8", {
    check_ui_test(cXdensity8())
    warning("variable names are different, web example uses var, not V")
})
