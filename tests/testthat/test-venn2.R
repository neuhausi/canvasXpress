context("canvasXpress Charts - Venn")

vdata   <- data.frame(AC = 456, A = 340, ABC = 552, ABCD = 148, BC = 915,
                      ACD = 298, BCD = 613, B = 562, CD = 143, ABD = 578,
                      C = 620, D = 592, AB = 639, BD = 354, AD = 257)
vlegend <- list(A = "List 1", D = "List 4", C = "List 3", B = "List 2")

test_that("vennData as list parameter", {
    result <- canvasXpress(vennData   = list(vdata),
                           vennLegend = vlegend,
                           graphType  = "Venn",
                           vennGroups = 4)
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("vennData as data", {
    result <- canvasXpress(data       = vdata,
                           vennLegend = vlegend,
                           graphType  = "Venn",
                           vennGroups = 4)
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("vennData as data list", {
    result <- canvasXpress(data       = list(vdata),
                           vennLegend = vlegend,
                           graphType  = "Venn",
                           vennGroups = 4)
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("vennData required", {
    expect_error(canvasXpress(vennLegend = vlegend,
                              graphType  = "Venn",
                              vennGroups = 4),
                 regexp =  "vennData cannot be NULL!")
    expect_error(canvasXpress(vennData = NULL,
                              vennLegend = vlegend,
                              graphType  = "Venn",
                              vennGroups = 4),
                 regexp =  "vennData must be a data.frame, matrix, or named list")
    expect_error(canvasXpress(data = NULL,
                              vennLegend = vlegend,
                              graphType  = "Venn",
                              vennGroups = 4),
                 regexp =  "vennData cannot be NULL!")
    expect_error(canvasXpress(data = list(vennData = NULL),
                              vennLegend = vlegend,
                              graphType  = "Venn",
                              vennGroups = 4),
                 regexp =  "vennData cannot be NULL!")
})

test_that("vennLegend required", {
    expect_error(canvasXpress(vennData = vdata,
                              graphType  = "Venn",
                              vennGroups = 4),
                 regexp = "Venn diagrams must specify both the <vennLegend> and <vennGroups> parameters")
    expect_error(canvasXpress(vennData = vdata,
                              vennLegend = vlegend,
                              graphType  = "Venn"),
                 regexp = "Venn diagrams must specify both the <vennLegend> and <vennGroups> parameters")
})
