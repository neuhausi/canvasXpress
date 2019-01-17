context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    warning("Tooltip for 'Jan' gives the text 'Label',only at the exact position of 'Jan'")
})
