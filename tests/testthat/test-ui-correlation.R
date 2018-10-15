context("canvasXpress Web Charts - Correlation")


test_that("cXcorrelation1", {
    check_ui_test(cXcorrelation1())
    
    fail('no legend showing')
})

test_that("cXcorrelation2", {
    check_ui_test(cXcorrelation2())
    
    fail('no legend showing')
})
