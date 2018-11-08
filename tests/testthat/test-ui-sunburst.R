context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    fail('Seeing "Text" tooltips on the chart, highlighting is off')
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    fail('Seeing "Text" tooltips on the chart, highlighting is off')
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    fail('Seeing "Text" tooltips on the chart, highlighting is off')
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    fail('Seeing "Text" tooltips on the chart, highlighting is off')
})
