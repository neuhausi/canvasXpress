context("canvasXpress Web Charts - Heatmap")


test_that("cXheatmap1", {
    check_ui_test(cXheatmap1())
})

test_that("cXheatmap2", {
    check_ui_test(cXheatmap2())
})

test_that("cXheatmap3", {
    check_ui_test(cXheatmap3())
})

test_that("cXheatmap4", {
    check_ui_test(cXheatmap4())

    warning("The values for Dose are different from web. In the R version, there are NaN values while the web has zeroes. ",
            "This is due to the differences in the underlying data")
})

test_that("cXheatmap5", {
    check_ui_test(cXheatmap5())
})

test_that("cXheatmap6", {
    check_ui_test(cXheatmap6())
})

test_that("cXheatmap7", {
    check_ui_test(cXheatmap7())
})

test_that("cXheatmap8", {
    check_ui_test(cXheatmap8())
})

test_that("cXheatmap9", {
    check_ui_test(cXheatmap9())
})

test_that("cXheatmap10", {
    check_ui_test(cXheatmap10())

    message('Plot points all fade on selecting shapeBy and sizeBy legend items - working as designed.')
    warning('Plot will not give valid R code to reproduce it in the on-chart menus, this is a known issue.')
})

test_that("cXheatmap11", {
    check_ui_test(cXheatmap11())
})

test_that("cXheatmap12", {
    check_ui_test(cXheatmap12())

    message('Middle section very small at default height - working as designed')
    warning("Boolean overlay looks different in R than on the CX website, test is missing the following parm: smpOverlayProperties=list('Boolean' = list('type'='Boolean'))")
})

test_that("cXheatmap13", {
    check_ui_test(cXheatmap13())
})

test_that("cXheatmap14", {
    check_ui_test(cXheatmap14())
})
