# This is a reminder test to check the Data transformations (log2, log10, etc) in the plot. For each type of plot, these actions have to be performed manually!
context("canvasXpress manualTransformations")


test_that("scatter2D manualTransformations", {

    check_ui_test(cXscatter2d13())
})

test_that("scatter3D manualTransformations", {

    check_ui_test(cXscatter3d1())
})

test_that("barplot manualTransformations", {

    check_ui_test(cXbar5())
})

test_that("boxplot manualTransformations", {

    check_ui_test(cXboxplot1())
})

test_that("heatmap manualTransformations", {

    check_ui_test(cXheatmap7())
})

test_that("line manualTransformations", {

    check_ui_test(cXline2())
})
