context("canvasXpress Web Charts - Network")


test_that("cXnetwork1", {
    check_ui_test(cXnetwork1())

    warning('layout depends on space/etc, may be off from web example')
})

test_that("cXnetwork2", {
    check_ui_test(cXnetwork2())
})


test_that("cXnetwork3", {
    check_ui_test(cXnetwork3())
})


test_that("cXnetwork4", {
    check_ui_test(cXnetwork4())

    warning('layout depends on space/etc, may be off from web example')
})

test_that("cXnetwork5", {
    check_ui_test(cXnetwork5())

    warning('some lines are missing compared to web example')
})

test_that("cXnetwork6", {
    check_ui_test(cXnetwork6())

    warning('coloring and legend off from web example, some lines are missing')
    warning('legend is integer in R, continuous on web')
})

test_that("cXnetwork7", {
    check_ui_test(cXnetwork7())

    warning('coloring off from web example')
    warning('legend position and appearance may depend on browser')
})

test_that("cXnetwork8", {
    check_ui_test(cXnetwork8())

    warning('coloring off from web example')
    warning('legend position and appearance may depend on browser')
})

test_that("cXnetwork9", {
    check_ui_test(cXnetwork9())
})

test_that("cXnetwork10", {
    check_ui_test(cXnetwork10())
})

test_that("cXnetwork11", {
    check_ui_test(cXnetwork11())
})
