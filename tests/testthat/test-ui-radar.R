context("canvasXpress Web Charts - Radar")


test_that("cXradar1", {
    check_ui_test(cXradar1())

    warning("After resizing, the plot collapses")
})

test_that("cXradar2", {
    check_ui_test(cXradar2())

    warning('radar has brown overlay on mouseover (if plot is not resized) - RStudio Viewer')
    warning("After resizing, the plot collapses")
})

test_that("cXradar3", {
    check_ui_test(cXradar3())

    warning("After resizing, the plot collapses")
})

test_that("cXradar4", {
    check_ui_test(cXradar4())

    warning("After resizing, the plot collapses")
})

test_that("cXradar5", {
    check_ui_test(cXradar5())

    warning("After resizing, the plot collapses")
})

test_that("cXradar6", {
    check_ui_test(cXradar6())

    warning("After resizing, the plot collapses")
})

test_that("cXradar7", {
    check_ui_test(cXradar7())

    warning("After resizing, the plot collapses")
})

test_that("cXradar8", {
    check_ui_test(cXradar8())

    warning("After resizing, the plot collapses")
})
