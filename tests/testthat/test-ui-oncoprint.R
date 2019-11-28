context("canvasXpress Web Charts - Oncoprint")


test_that("cXoncoprint1", {
    check_ui_test(cXoncoprint1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXoncoprint2", {
    check_ui_test(cXoncoprint2())
})

test_that("cXoncoprint3", {
    check_ui_test(cXoncoprint3())
})

test_that("cXoncoprint4", {
    check_ui_test(cXoncoprint4())
})
