context("canvasXpress Web Charts - Area")


test_that("cXarea1", {
    check_ui_test(cXarea1())
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

    warning("Names are different, web example uses smp/var, not S/V")
})

test_that("cXarea6", {
    check_ui_test(cXarea6())

    warning("Names are different, web example uses smp/var, not S/V")
})

test_that("cXarea7", {
    check_ui_test(cXarea7())
})

test_that("cXarea8", {
    check_ui_test(cXarea8())
})
