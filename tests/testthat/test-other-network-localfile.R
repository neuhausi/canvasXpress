context("canvasXpress network-localfile")


test_that("Network XML Data - compact", {
    result <- canvasXpress(data        = system.file("extdata", "network_compact.xml", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - space", {
    result <- canvasXpress(data        = system.file("extdata", "network_spacedelimited.xml", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - tab", {
    result <- canvasXpress(data        = system.file("extdata", "network_spacedelimited.xml", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + tsv additional data", {
    result <- canvasXpress(data        = system.file("extdata", "network_compact.xml", package = "canvasXpress"),
                           appendNetworkData = system.file("extdata", "network_append.tsv", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + url additional data", {
    result <- canvasXpress(data        = system.file("extdata", "network_compact.xml", package = "canvasXpress"),
                           appendNetworkData = "http://www.google.com",
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + mixed additional data", {
    result <- canvasXpress(data        = system.file("extdata", "network_compact.xml", package = "canvasXpress"),
                           appendNetworkData = list(system.file("extdata", "network_append.tsv", package = "canvasXpress"),
                                                    "http://www.google.com"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - compact", {
    result <- canvasXpress(data        = system.file("extdata", "network_compact.json", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - space", {
    result <- canvasXpress(data        = system.file("extdata", "network_spacedelimited.json", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - tab", {
    result <- canvasXpress(data        = system.file("extdata", "network_spacedelimited.json", package = "canvasXpress"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})
