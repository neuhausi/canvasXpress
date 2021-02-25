context("canvasXpress Web Charts - Bubble")


test_that("cXbubble1", {
    check_ui_test(cXbubble1())
})

test_that("cXbubble2", {
    check_ui_test(cXbubble2())
})

test_that("cXbubble3", {
    check_ui_test(cXbubble3())
})

test_that("cXbubble4", {
    skip_if_not(t_data_latest, 'canvasXpress.data is not of sufficient version for these tests')

    check_ui_test(cXbubble4())
})
