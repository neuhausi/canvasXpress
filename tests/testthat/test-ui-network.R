context("canvasXpress Web Charts - Network")


test_that("cXnetwork1", {
    check_ui_test(cXnetwork1())
    
    warning("legend on the wrong side")
})

test_that("cXnetwork2", {
    check_ui_test(cXnetwork2())
})


test_that("cXnetwork3", {
    check_ui_test(cXnetwork3())
})


test_that("cXnetwork4", {
    check_ui_test(cXnetwork4())
})

test_that("cXnetwork5", {
    check_ui_test(cXnetwork5())
    
    warning('some lines missing, cross-domain download issue')
})

test_that("cXnetwork6", {
    check_ui_test(cXnetwork6())
    
    warning('coloring off from web example, cross-domain download issue')
    warning('legend looks different (continuous vs discrete)')
})

test_that("cXnetwork7", {
    check_ui_test(cXnetwork7())
})

test_that("cXnetwork8", {
    check_ui_test(cXnetwork8())
})

test_that("cXnetwork9", {
    check_ui_test(cXnetwork9())
    
    warning("plot starts with a warning popup")
})

test_that("cXnetwork10", {
    check_ui_test(cXnetwork10())
})
