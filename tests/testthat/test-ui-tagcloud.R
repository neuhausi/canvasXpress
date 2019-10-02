context("canvasXpress Web Charts - TagCloud")


test_that("cXtagcloud1", {
    check_ui_test(cXtagcloud1())

    message('Layout depends on space/etc, may be off from web example')
})

