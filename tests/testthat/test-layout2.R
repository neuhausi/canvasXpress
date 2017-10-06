context("canvasXpress Charts - Layout")

y <- read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
x <- read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
z <- read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)


test_that("segregation layout change - Samples", {
    result <- canvasXpress(data      = y,
                           smpAnnot  = x,
                           varAnnot  = z,
                           graphType = "Bar",
                           segregateSamplesBy = list("Factor1"),
                           layoutTopology = "1X3"
    )
                        
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("segregation layout change - Variables", {
    result <- canvasXpress(data      = y,
                           smpAnnot  = x,
                           varAnnot  = z,
                           graphType = "Bar",
                           segregateVariablesBy = list("Annt1"),
                           layoutTopology = "4X1"
    )
    
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
