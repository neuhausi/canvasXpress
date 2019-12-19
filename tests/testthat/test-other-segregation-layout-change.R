context("canvasXpress Charts - Layout")

y <- read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
z <- read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)


test_that("segregation layout change - Samples", {
    result <- canvasXpress(data      = y,
                           smpAnnot  = x,
                           varAnnot  = z,
                           graphType = "Bar",
                           title = "Layout 1X3",
                           segregateSamplesBy = list("Factor1"),
                           layoutTopology = "1X3"
    )
    check_ui_test(result)
})

test_that("segregation layout change - Variables", {
    result <- canvasXpress(data      = y,
                           smpAnnot  = x,
                           varAnnot  = z,
                           graphType = "Bar",
                           legendPosition = "top",
                           legendColumns = 4,
                           title = "Layout 4X1",
                           segregateVariablesBy = list("Annt1"),
                           layoutTopology = "4X1"
    )

    check_ui_test(result)
})

test_that("segregation updated layout change", {
    result <- canvasXpress(data      = y,
                           smpAnnot  = x,
                           varAnnot  = z,
                           graphType = "Bar",
                           title = "Change Segregation Data property to 'Variable' and check that layout is updated",
                           segregateSamplesBy = list("Factor1"),
                           layoutTopology = "1X3"
    )
    check_ui_test(result)
})
