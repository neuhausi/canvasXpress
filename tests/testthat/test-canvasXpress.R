context("canvasXpress")

test_that("Main Function - Check Return Type", {
    data <- t(iris[,1:4])
    varAnnot <- as.matrix(iris[,5])
    colnames(varAnnot) <- "Species"
    result <- canvasXpress(t(data), varAnnot=varAnnot, scatterPlotMatrix = 1)

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("Missing Data", {
    expect_error(canvasXpress(NULL), 
                 regexp = "Missing canvasXpress data!")

    expect_error(canvasXpress(graphType = "Network", 
                              nodeData = NULL, edgeData = NULL), 
                 regexp = "Missing nodeData for Network visualization")
    expect_error(canvasXpress(graphType = "Network", 
                              nodeData = c(1:10), edgeData = NULL), 
                 regexp = "Missing edgeData for Network visualization")
    expect_error(canvasXpress(graphType = "Venn",
                              vennData = NULL, vennLegend = NULL),
                 regexp = "Missing data for Venn visualization")
    expect_error(canvasXpress(graphType = "Venn",
                              vennData = NA, vennLegend = NULL),
                 regexp = "Missing legend for Venn visualization")
    expect_error(canvasXpress(graphType = "Genome",
                              genomeData = NULL), 
                 regexp = "Missing data for Genome visualization")
})

test_that("Graph Input", {
    data.df <- data.frame(col1 = c(1:20))
    data.m  <- matrix(1:20, ncol = 1)
    data.l  <- list(col1 = c(1:20), col2 = c("fred", "barney", "wilma"))
    
    expect_error(canvasXpress(data = NA),
                 regexp = "data must be a data frame or a matrix class object")
    expect_error(canvasXpress(data = data.l),
                 regexp = "data must be a data frame or a matrix class object")
    expect_silent(canvasXpress(data = data.df))
    expect_silent(canvasXpress(data = data.m))
    
    A.df <- data.df
    A.m  <- data.m
    A.l  <- data.l
    
    expect_error(canvasXpress(data = data.df, smpAnnot = NA),
                 regexp = "smpAnnot must be a data frame or a matrix class object")
    expect_error(canvasXpress(data = data.m, smpAnnot = A.l),
                 regexp = "smpAnnot must be a data frame or a matrix class object")
    
    expect_silent(canvasXpress(data = data.df, smpAnnot = A.df))
    expect_silent(canvasXpress(data = data.m,  smpAnnot = A.m))

    
    expect_error(canvasXpress(data = data.df, varAnnot = NA),
                 regexp = "varAnnot must be a data frame or a matrix class object")
    expect_error(canvasXpress(data = data.m, varAnnot = A.l),
                 regexp = "varAnnot must be a data frame or a matrix class object")
    expect_silent(canvasXpress(data = data.df, varAnnot = A.df))
    expect_silent(canvasXpress(data = data.m, varAnnot = A.m))
    
    expect_error(canvasXpress(data = data.df, smpAnnot = A.m),
                 regexp = "Column names in smpAnnot are different from column names in data")
    expect_silent(canvasXpress(data = data.df, smpAnnot = A.df))
 
    expect_error(canvasXpress(data = data.df, varAnnot = A.m),
                 regexp = "Row names in varAnnot are different from row names in data")
    expect_silent(canvasXpress(data = data.df, varAnnot = A.df))   
    
})

test_that("Network Graph Input", {
    ndata <- matrix(1:10, nrow = 2, dimnames = list(c("row1", "row2"), c("id", "C2", "C3", "C4", "C5")))
    edata <- matrix(1:10, nrow = 2, dimnames = list(c("row1", "row2"), c("id1", "id2", "C3", "C4", "C5")))

    expect_silent(canvasXpress(graphType = "Network",
                               nodeData = ndata, edgeData = edata))
    
    n.df <- as.data.frame(ndata)
    e.df <- as.data.frame(edata)
    l    <- list(col1 = c(1:20), col2 = c("fred", "barney", "wilma"))
    bad  <- data.frame(oops = c(1, 2), bad = c("fred", "barney"))
    bad2 <- data.frame(id1 = c(1, 2),  bad = c("fred", "barney"))

    expect_error(canvasXpress(graphType = "Network",
                              nodeData = l, edgeData = e.df),
                 regexp = "nodeData must be a data frame or a matrix class object")
    expect_error(canvasXpress(graphType = "Network",
                              nodeData = n.df, edgeData = l),
                 regexp = "edgeData must be a data frame or a matrix class object")
    
    expect_error(canvasXpress(graphType = "Network",
                              nodeData = bad, edgeData = edata),
                 regexp = "missing 'id' header in nodeData dataframe")
    expect_error(canvasXpress(graphType = "Network",
                              nodeData = ndata, edgeData = bad),
                 regexp = "missing 'id1' header in edgeData dataframe")
    
    expect_error(canvasXpress(graphType = "Network",
                              nodeData = ndata, edgeData = bad2),
                 regexp = "missing 'id2' header in edgeData dataframe")

    expect_silent(canvasXpress(graphType = "Network",
                               nodeData = n.df, edgeData = edata))
    expect_silent(canvasXpress(graphType = "Network",
                               nodeData = ndata, edgeData = e.df))
    expect_silent(canvasXpress(graphType = "Network",
                               nodeData = n.df, edgeData = e.df))
})

test_that("Venn Graph Input", {
    data <- data.frame(A = 57, B = 12, C = 67, D = 72, AB = 4, AC = 67,
                       AD = 25, BC = 67, BD = 27, CD = 38, ABC = 69, 
                       ABD = 28, ACD = 52, BCD = 46, ABCD = 3)
    data.l <- list(col1 = c(1:20), col2 = c("fred", "barney", "wilma"))
    legend <- list(A = "List1", B = "List2", C = "List3", D = "List4")
    
    expect_silent(canvasXpress(graphType = "Venn",
                               vennData = data, vennLegend = legend))
    
    expect_error(canvasXpress(graphType = "Venn", 
                              vennData = data.l, vennLegend = legend),
                 regexp = "vennData must be a data frame or a matrix class object.")
})

test_that("Genome Graph Input", {
    expect_error(canvasXpress(graphType = "Genome",
                              genomeData = c(1, 2, 3)),
                 regexp = "Not implemented yet!")
})


# Shiny Functionality
test_that("Shiny UI Object Creation", {
    obj <- suppressWarnings(canvasXpressOutput("testID"))
    
    expect_s3_class(obj, "shiny.tag.list")
    expect_match(obj[[1]]$name,  "div")
    expect_match(obj[[1]]$attribs$id,    "testID")
    expect_match(obj[[1]]$attribs$class, "canvasXpress html-widget html-widget-output")
    expect_match(obj[[1]]$attribs$style, "width:100%; height:400px;")
})

test_that("Shiny Render", {
    expect_s3_class(renderCanvasXpress(NULL), "shiny.render.function")
})


