context("canvasXpress Web Charts - Scatter3D")


test_that("cXscatter3d1", {
    check_ui_test(cXscatter3d1())
})

test_that("cXscatter3d2", {
    check_ui_test(cXscatter3d2())
})

test_that("cXscatter3d3", {
    check_ui_test(cXscatter3d3())

    message("When transposing the data, the loess surface fit appears in an unusual place but it is working as designed")
})

test_that("cXscatter3d4", {
    check_ui_test(cXscatter3d4())
})

test_that("cXscatter3d5", {
    check_ui_test(cXscatter3d5())
})

test_that("cXscatter3d6", {
    check_ui_test(cXscatter3d6())
})

test_that("cXscatter3d7", {
    message("scatter3d - plot function missing")
})
