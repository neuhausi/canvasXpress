context("canvasXpress customEvents")


test_that("Barplot customEvents", {

    y <- read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    events <- JS("{ 'mousemove' : function(o, e, t) {
                                    if (o.objectType == null) {
                                      t.showInfoSpan(e, '<b>' + o.y.vars[0] + '</b><br/>' +
                                      'Sample:' + o.y.smps[0] +  '<br/>' +
                                      '<i>Value:</i>' +  o.y.data[0][0]);
                                    }
                                    else {
                                      t.showInfoSpan(e, o.display);
                                    };
                                   }}")
    result <-  canvasXpress(
        data                    = y,
        smpAnnot                = x,
        varAnnot                = z,
        graphType               = "Bar",
        scatterType             = "bar",
        is3DPlot                = TRUE,
        title                   = "Barplot - customEvents",
        events                  = events
    )

    check_ui_test(result)
})
