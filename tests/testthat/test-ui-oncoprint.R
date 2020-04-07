context("canvasXpress Web Charts - Oncoprint")


test_that("cXoncoprint1", {
    check_ui_test(cXoncoprint1())
})

test_that("cXoncoprint2", {
    check_ui_test(cXoncoprint2())
})

test_that("cXoncoprint3", {
    check_ui_test(cXoncoprint3())
})

test_that("cXoncoprint4", {
    check_ui_test(cXoncoprint4())

    warning("The values on Tooltips are different from web. In the R version, there are NaN values while the web has zeroes. ",
             "This is due to the differences in the underlying data")
})
