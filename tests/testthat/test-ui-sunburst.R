context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    fail("Legend click results in label placement issues")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    fail("Legend click results in label placement issues")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())
})
