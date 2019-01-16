context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    warning("When the plot is resized, the colors are gone for a moment")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    warning("When the plot is resized, the colors are gone for a moment")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    warning("When the plot is resized, the colors are gone for a moment")
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    warning("When the plot is resized, the colors are gone for a moment")
})
