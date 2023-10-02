context("canvasXpress pipe support")
skip_if_offline(host = "www.canvasxpress.org")


test_that("EXAMPLE - REMOVE", {
    data <- as.data.frame(matrix(c(33,44,55), nrow = 1, ncol = 3, byrow = TRUE, dimnames = list(c("V1"), c("S1", "S2", "S3"))))

    obj1 <- canvasXpress(data           = data,
                         graphType      = "Bar",
                         showLegend     = FALSE,
                         smpLabelRotate = 90,
                         smpTitle       = "Samples",
                         theme          = "CanvasXpress",
                         title          = "Bar Graph Title",
                         xAxisTitle     = "Value")

    check_ui_test(obj1)

    obj2a <- obj1 %>% canvasXpress(
        # change a parameter
        graphOrientation = "vertical",
        # add a parameter
        subtitle         = "New subtitle",
        # remove a parameter
        title            = NULL,
    )

    check_ui_test(obj2a)
})


test_that("piping - change graphType", {

})


test_that("piping - change events", {

})


test_that("piping - change afterRender", {

})


test_that("piping - change width/height", {

})


test_that("piping - change attributes for tojson", {

})


test_that("piping - invalid object", {

})


test_that("piping - attempted data changes", {

})

test_that("piping - area chart", {

})

test_that("piping - arealine chart", {

})

test_that("piping - bar chart", {

})

test_that("piping - barline chart", {

})

test_that("piping - boxplot chart", {

})

test_that("piping - bubble chart", {

})

test_that("piping - chord chart", {

})

test_that("piping - circular chart", {

})

test_that("piping - contour chart", {

})

test_that("piping - correlation chart", {

})

test_that("piping - dashboard chart", {

})

test_that("piping - density chart", {

})

test_that("piping - donut chart", {

})

test_that("piping - dotline chart", {

})

test_that("piping - dotplot chart", {

})

test_that("piping - facet chart", {

})

test_that("piping - fish chart", {

})

test_that("piping - gantt chart", {

})

test_that("piping - genome chart", {

})

test_that("piping - heatmap chart", {

})

test_that("piping - hexplotbinplot chart", {

})

test_that("piping - histogram chart", {

})

test_that("piping - kaplanmeier chart", {

})

test_that("piping - layout chart", {

})

test_that("piping - line chart", {

})

test_that("piping - linearfit chart", {

})

test_that("piping - lollipop chart", {

})

test_that("piping - map chart", {

})

test_that("piping - meter chart", {

})

test_that("piping - network chart", {

})

test_that("piping - nonlinearfit chart", {

})

test_that("piping - oncoprint chart", {

})

test_that("piping - parallelcoordinates chart", {

})

test_that("piping - pie chart", {

})

test_that("piping - radar chart", {

})

test_that("piping - ridgeline chart", {

})

test_that("piping - sankey chart", {

})

test_that("piping - scatter2D chart", {

})

test_that("piping - scatter3D chart", {

})

test_that("piping - scatterbubbl2D chart", {

})

test_that("piping - splom chart", {

})

test_that("piping - stacked chart", {

})

test_that("piping - stackedline chart", {

})

test_that("piping - stackedpercent chart", {

})

test_that("piping - stackedpercentline chart", {

})

test_that("piping - sunburst chart", {

})

test_that("piping - tagcloud chart", {

})

test_that("piping - tcga chart", {

})

test_that("piping - tree chart", {

})

test_that("piping - treemap chart", {

})

test_that("piping - upset chart", {

})

test_that("piping - venn chart", {

})

test_that("piping - waterfall chart", {

})
