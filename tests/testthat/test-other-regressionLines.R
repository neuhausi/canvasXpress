context("canvasXpress regressionLines")

y=read.table(system.file("extdata", "cX-ageheightt-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
x=read.table(system.file("extdata", "cX-ageheightt-smp.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)

test_that("scatterplot overall regressionLine", {

    result <-  canvasXpress(
        data                    = y,
        smpAnnot                = x,
        graphType               = "Scatter2D",
        title                   = "Scatterplot - regressionLine",
        afterRender             = list(list("addRegressionLine"))
    )
    check_ui_test(result)
})

test_that("scatterplot per-sample regressionLine", {

    y=read.table(system.file("extdata", "cX-mtcars-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
    result <-  canvasXpress(
        data                    = y,
        asSampleFactors         = list("cyl"),
        colorBy                 = "cyl",
        graphType               = "Scatter2D",
        title                   = "Scatterplot - per sample regressionLine",
        showRegressionFullRange = TRUE,
        stringVariableFactors   = list("cyl"),
        xAxis                   = list("wt"),
        yAxis                   = list("mpg"),
        afterRender             = list(list("addRegressionLine", list("cyl")))
    )
    check_ui_test(result)
})

test_that("scatterplot per variable regressionLine", {
    ## TODO
})

# segregate the chart per sample and variable and have a regression line for each
test_that("scatterplot per variable and sample regressionLine", {
    ## TODO
})

