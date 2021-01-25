context("canvasXpress Web Charts - Meter")
skip_if_not(t_data_latest, 'canvasXpress.data is not of sufficient version for these tests')


test_that("cXmeter1", {
    check_ui_test(cXmeter1())
})

test_that("cXmeter2", {
    check_ui_test(cXmeter2())
})

test_that("cXmeter3", {
    check_ui_test(cXmeter3())
})

test_that("cXmeter4", {
    check_ui_test(cXmeter4())
})

test_that("cXmeter5", {
    check_ui_test(cXmeter5())
})

test_that("cXmeter6", {
    check_ui_test(cXmeter6())
})
