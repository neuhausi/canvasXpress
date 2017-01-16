context("canvasXpress")

test_that("valid run - return type is correct", {
    
    data <- t(iris[,1:4])
    varAnnot <- as.matrix(iris[,5])
    colnames(varAnnot) <- "Species"
    result <- canvasXpress(t(data), varAnnot=varAnnot, scatterPlotMatrix = 1)

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("missing data - all", {
    expect_error(canvasXpress(NULL), 
                 regexp = "Missing canvasXpress data!")
})

test_that("Network input tests", {
    ndata <- matrix(1:20, nrow = 2)
    edata <- matrix(1:20, nrow = 2)

    expect_error(canvasXpress(graphType = "Network", 
                              nodeData = NULL, edgeData = NULL), 
                 regexp = "Missing data for Network visualization!")
    expect_silent(canvasXpress(graphType = "Network",
                              nodeData = ndata, edgeData = NULL))
    expect_silent(canvasXpress(graphType = "Network",
                              nodeData = NULL, edgeData = edata))
})

test_that("Venn input tests", {
    data <- data.frame(A=57, B=12, C=67, D=72, AB=4, AC=67, AD=25, BC=67, 
                       BD=27, CD=38, ABC=69, ABD=28, ACD=52, BCD=46, ABCD=3)
    legend <- list(A="List1", B="List2", C="List3", D="List4")
    
    expect_error(canvasXpress(graphType = "Venn",
                              vennData = NULL, vennLegend = NULL),
                 regexp = "Missing data for Venn visualization")
    expect_error(canvasXpress(graphType = "Venn",
                              vennData = NULL, vennLegend = legend),
                 regexp = "Missing data for Venn visualization")
    expect_error(canvasXpress(graphType = "Venn",
                              vennData = data, vennLegend = NULL),
                 regexp = "Missing legend for Venn visualization")
    expect_silent(canvasXpress(graphType = "Venn",
                               vennData = data, vennLegend = legend))
})

test_that("Genome input tests", {
    expect_error(canvasXpress(graphType = "Genome",
                              genomeData = NULL), 
                 regexp = "Missing data for Genome visualization")
})


# Tests to be written
