context("canvasXpress Web Charts - TagCloud")


test_that("cXtagcloud1", {
    check_ui_test(cXtagcloud1())

    warning('Clicking legend or resizing gives countdown spinner, doesn\'t happen on the web')
})

