context("canvasXpress Web Charts - Venn")


test_that("cXvenn1", {
    check_ui_test(cXvenn1())
    
    warning("labels B and D should be switched around")
})

test_that("cXvenn2", {
    check_ui_test(cXvenn2())
    
    warning("wrong label for second category")
})

test_that("cXvenn3", {
    check_ui_test(cXvenn3())
    
    warning("wrong label for second category")
})
