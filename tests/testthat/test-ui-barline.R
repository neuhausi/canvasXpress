context("canvasXpress Web Charts - BarLine")

#--------------------------------------------------------------------
# NOTES:
# In barline plots, the grouping and then a subsequent ungrouping by a variable
# results in re-ordering of the category labels and the initial ordering is lost.
# Chart will need to be refreshed to get the original order of categories.
#--------------------------------------------------------------------


test_that("cXbarline1", {
    check_ui_test(cXbarline1())
})

test_that("cXbarline2", {
    check_ui_test(cXbarline2())
})

test_that("cXbarline3", {
    check_ui_test(cXbarline3())
})
