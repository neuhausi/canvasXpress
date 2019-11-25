context("canvasXpress Web Charts - Tree")


test_that("cXtree1", {
    check_ui_test(cXtree1())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXtree2", {
    check_ui_test(cXtree2())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXtree3", {
    check_ui_test(cXtree3())

    warning('Hover effect may not be visible if plot is not resized')
})

test_that("cXtree4", {
    check_ui_test(cXtree4())

    warning('Hover effect may not be visible if plot is not resized')
})

