context("canvasXpress network-localfile")


test_that("Network XML Data - compact", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - space", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_spacedelimited.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - tab", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_spacedelimited.xml"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + tsv additional data", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = get_data("network_append.tsv"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + url additional data", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = "https://www.google.com",
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})

test_that("Network XML Data - compact + mixed additional data", {
    testthat::skip_if_not_installed("canvasXpress.data")
    result <- canvasXpress(data        = get_data("network_compact.xml"),
                           appendNetworkData = list(get_data("network_append.tsv"),
                                                    "https://www.google.com"),
                           colorNodeBy = "Exp1",
                           edgeWidth   = 2,
                           graphType   = "Network",
                           nodeSize    = 30)

    check_ui_test(result)
})
