context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    check_ui_test(cXkaplanmeier1())

    warning('Generated test function has incorrect afterRender list')
    # afterRender=list(list("addKaplanMeierCurve", list('Time','Censor')))
})

test_that("cXkaplanmeier2", {
    check_ui_test(cXkaplanmeier2())

    warning('Generated test function has incorrect afterRender list')
    # afterRender=list(list("addKaplanMeierCurve", list('Time','Censor')))
})

test_that("cXkaplanmeier3", {
    check_ui_test(cXkaplanmeier3())

    warning('Generated test function has incorrect afterRender list')
    # afterRender=list(list("addKaplanMeierCurve", list('Survival','Survival-Censor')))
})

test_that("cXkaplanmeier4", {
    check_ui_test(cXkaplanmeier4())

    warning('Generated test function has incorrect afterRender list')
    # afterRender=list(list("addKaplanMeierCurve", list('Survival','Survival-Censor')), list("addKaplanMeierCurve", list('Survival2','Survival2-Censor'))

})

test_that("cXkaplanmeier5", {
    check_ui_test(cXkaplanmeier5())

    message('Fewer pie charts are displayed at a time than exist, the ones chosen to display differ between the web and R - working as expected')
    warning("Colors for drug are different, two pieces are green, but one should be orange")

    warning('Generated test function has incorrect afterRender list')
    # afterRender=list(list("addKaplanMeierCurve", list('Survival','Survival-Censor')))
})
