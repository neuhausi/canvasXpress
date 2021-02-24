context("canvasXpress Web Charts - Fish")
skip_if_not(t_data_latest, 'canvasXpress.data is not of sufficient version for these tests')


test_that("cXfish1", {
    check_ui_test(cXfish1())
})

test_that("cXfish2", {
    check_ui_test(cXfish2())
})

test_that("cXfish3", {
    check_ui_test(cXfish3())
})

test_that("cXfish4", {
    check_ui_test(cXfish4())
})

test_that("cXfish5", {
    check_ui_test(cXfish5())
})

