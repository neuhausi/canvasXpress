context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    warning("Inconsistent Tooltip: for September it's showing the percentage in scientific format")
})
