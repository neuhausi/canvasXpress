context("canvasXpress Web Charts - Tree")


test_that("cXtree1", {
    check_ui_test(cXtree1())
})

test_that("cXtree2", {
    skip_if_not(t_data_latest, 'canvasXpress.data is not of sufficient version for these tests')

    check_ui_test(cXtree2())
})

test_that("cXtree3", {
    check_ui_test(cXtree3())
})

test_that("cXtree4", {
    check_ui_test(cXtree4())
})

test_that("cXtree5", {
    check_ui_test(cXtree5())
})
