context("canvasXpress Web Charts - Bar")


test_that("cXbar1", {
    check_ui_test(cXbar1())
})

test_that("cXbar2", {
    check_ui_test(cXbar2())
})

test_that("cXbar3", {
    check_ui_test(cXbar3())
})

test_that("cXbar4", {
    check_ui_test(cXbar4())
})

test_that("cXbar5", {
    check_ui_test(cXbar5())

    warning("Inconsistent Tooltip: for Setosa/Sepal.Length dots, sometimes the second number is in scientific format")
})

test_that("cXbar6", {
    check_ui_test(cXbar6())
})

test_that("cXbar7", {
    check_ui_test(cXbar7())
})

test_that("cXbar8", {
    check_ui_test(cXbar8())
})

test_that("cXbar9", {
    check_ui_test(cXbar9())
})

test_that("cXbar10", {
    check_ui_test(cXbar10())
})

test_that("cXbar11", {
    check_ui_test(cXbar11())
})

test_that("cXbar12", {
    check_ui_test(cXbar12())

    warning("Durable overlay looks different in R than on the CX website, test is missing the following parm: smpOverlayProperties=list('Durable' = list(type='Boolean'))")
})

test_that("cXbar13", {
    check_ui_test(cXbar13())

    warning("Durable overlay looks different in R than on the CX website, test is missing the following in smpOverlayProperties: 'Durable' = list(type='Boolean')")
})


test_that("cXbar14", {
    # check_ui_test(cXbar14())
})

test_that("cXbar15", {
    check_ui_test(cXbar15())
})

test_that("cXbar16", {
    check_ui_test(cXbar16())
})
