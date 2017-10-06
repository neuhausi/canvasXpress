context("canvasXpress Charts - Network")

n <- read.table(system.file("extdata", "cX-lesmiserable-nodes.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
e <- read.table(system.file("extdata", "cX-lesmiserable-edges.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

test_that("network as data list items", {
    result <- canvasXpress(data        = list(nodeData = n, edgeData = e),
                           colorNodeBy = "group",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)
    
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("network data requires both nodes and edges", {
    expect_error(canvasXpress(data        = list(nodeData = n),
                              graphType   = "Network"),
                 regexp = "edgeData cannot be NULL!")
    expect_error(canvasXpress(data        = list(edgeData = e),
                              graphType   = "Network"),
                 regexp = "nodeData cannot be NULL!")
    expect_error(canvasXpress(data        = list(),
                              graphType   = "Network"),
                 regexp = "Network diagrams must specify both <nodeData> and <edgeData> as parameters or named data list items")
})

test_that("network data types", {
    expect_error(canvasXpress(nodeData    = 2, 
                              edgeData    = e,
                              graphType   = "Network"),
                 regexp = "nodeData must be a data.frame or matrix")
    expect_error(canvasXpress(nodeData    = n, 
                              edgeData    = 2,
                              graphType   = "Network"),
                 regexp = "edgeData must be a data.frame or matrix")
    expect_error(canvasXpress(data        = list(nodeData = 2, edgeData = e),
                              graphType   = "Network"),
                 regexp = "nodeData must be a data.frame or matrix")
    expect_error(canvasXpress(data        = list(nodeData = n, edgeData = 2),
                              graphType   = "Network"),
                 regexp = "edgeData must be a data.frame or matrix")
})
