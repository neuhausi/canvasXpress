context("canvasXpress customEvents")


test_that("Barplot customEvents", {

    y <- read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    z <- read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    events <- JS("{ 'mousemove' : function(o, e, t) {
                                    if (o) {
                                        if (o.objectType == null) {
                                            t.showInfoSpan(e, '<b>' + o.y.vars[0] + '</b><br/>' +
                                            'Sample:' + o.y.smps[0] +  '<br/>' +
                                            '<i>Value:</i>' +  o.y.data[0][0]);
                                        }
                                        else {
                                            t.showInfoSpan(e, o.display);
                                        };
                                    };}}")
    result <-  canvasXpress(data                    = y,
                            smpAnnot                = x,
                            varAnnot                = z,
                            graphType               = "Bar",
                            scatterType             = "bar",
                            is3DPlot                = TRUE,
                            title                   = "Barplot - customEvents",
                            events                  = events)

    check_ui_test(result)
})
