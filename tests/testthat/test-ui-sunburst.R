context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    check_ui_test(cXsunburst1())

    fail("tooltip text is not equal to text of slice (e.g. Jan has tooltip Dec)")
})

test_that("cXsunburst2", {
    check_ui_test(cXsunburst2())

    fail("tooltip text is not equal to text of slice (e.g. Jan has tooltip Dec)")
})

test_that("cXsunburst3", {
    check_ui_test(cXsunburst3())

    fail("tooltip text is not equal to text of slice (e.g. Jan has tooltip Dec)")
})

test_that("cXsunburst4", {
    check_ui_test(cXsunburst4())

    fail("tooltip text is not equal to text slice (e.g. Jan has tooltip Dec)")
})
