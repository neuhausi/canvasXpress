context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    warning('Seeing "Text" tooltips on the chart')
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    warning('Seeing "Text" tooltips on the chart')
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    warning('Seeing "Text" tooltips on the chart')
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    warning('Seeing "Text" tooltips on the chart')
})
