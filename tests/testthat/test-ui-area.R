context("canvasXpress Web Charts - Area")

test_that("cXarea1", {
    check_ui_test(cXarea1())
    warning("variable names are different, web example uses smp and var, not S and V")
})

test_that("cXarea2", {
    check_ui_test(cXarea2())
})

test_that("cXarea3", {
    check_ui_test(cXarea3())
})

test_that("cXarea4", {
    check_ui_test(cXarea4())
})

test_that("cXarea5", {
    check_ui_test(cXarea5())
})

test_that("cXarea6", {
    check_ui_test(cXarea6())
    warning("variable names are different, web example uses smp and var, not S and V")
})
