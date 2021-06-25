context("canvasXpress Charts - Network")


test_that("network as data list items", {
    tryCatch({
        n <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-nodes.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        e <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-edges.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    result <- canvasXpress(data        = list(nodeData = n, edgeData = e),
                           colorNodeBy = "group",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("network data requires both nodes and edges", {
    tryCatch({
        n <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-nodes.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        e <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-edges.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

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
    tryCatch({
        n <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-nodes.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        e <- read.table("https://www.canvasxpress.org/data/cX-lesmiserable-edges.txt", header = TRUE, sep = "\t", quote = "", fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

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
