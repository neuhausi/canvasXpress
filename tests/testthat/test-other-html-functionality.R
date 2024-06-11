context("html functionality")

test_that("cxHtmlPage - pass non cx object", {
    expect_error(cxHtmlPage("test"), regexp = "chartObject must be supplied and be a canvasXpress object")
})


test_that("cxHtmlPage - cx object", {
    result <- cxHtmlPage(cXscatter2d5(), width = "45%", height = "48vh")
    expect_true(is.character(result))
    expect_true(nchar(result) > 0)
})

