context("canvasXpress Web Charts - Gantt")


test_that("cXgantt1", {
    check_ui_test(cXgantt1())

    fail("plot looks different very different in RStudio viewer, i.e. 12 vs 6 samples")
})

test_that("cXgantt2", {
    check_ui_test(cXgantt2())

    warning("plot has a different color compared to web example")
})

test_that("cXgantt3", {
    check_ui_test(cXgantt3())
})

test_that("cXgantt4", {
    check_ui_test(cXgantt4())
})

test_that("cXgantt5", {
    check_ui_test(cXgantt5())
})

test_that("cXgantt6", {
    check_ui_test(cXgantt6())
})
