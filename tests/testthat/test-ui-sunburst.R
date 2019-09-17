context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    warning("when hovering over 'Nov', this text is displayed in the plot centre (if plot is not resized)")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    warning("when hovering over 'Nov', this text is displayed in the plot centre (if plot is not resized)")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    warning("when hovering over 'Nov', this text is displayed in the plot centre (if plot is not resized)")
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    warning("when hovering over 'Nov', this text is displayed in the plot centre (if plot is not resized)")
})
