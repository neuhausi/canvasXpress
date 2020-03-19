context("canvasXpress network-localfile")


test_that("Network XML Data - compact", {
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - space", {
    result <- canvasXpress(data        = get_data("network_spacedelimited.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - tab", {
    result <- canvasXpress(data        = get_data("network_spacedelimited.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + tsv additional data", {
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = get_data("network_append.tsv"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + url additional data", {
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = "http://www.google.com",
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + mixed additional data", {
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = list(get_data("network_append.tsv"),
                                                    "http://www.google.com"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - compact", {
    result <- canvasXpress(data        = get_data("network_compact.json"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - space", {
    result <- canvasXpress(data        = get_data("network_spacedelimited.json"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network JSON Data - tab", {
    result <- canvasXpress(data        = get_data("network_spacedelimited.json"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})
