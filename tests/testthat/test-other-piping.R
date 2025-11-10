context("canvasXpress pipe support")
skip_if_offline(host = "www.canvasxpress.org")

test_that("piping - change graphType", {
    data <- data.frame(S1 = c(1,1,2,2,5,5),
                       S2 = c(1,4,4,2,5,5),
                       S3 = c(5,3,2,3,5,6),
                       S4 = c(5,3,2,3,5,5))

    obj1 <- canvasXpress(data      = data,
                         graphType = "Bar")
    check_ui_test(obj1)

    obj2 <- obj1 %>% canvasXpress(
        title     = "Bar to Scatter2D",
        graphType = "Scatter2D")

    check_ui_test(obj2)

    obj3 <- obj2 %>% canvasXpress(
        title     = "Scatter2D to Boxplot",
        graphType = "Boxplot")

    check_ui_test(obj3)
})


test_that("piping - change events", {
    obj1 <- cXscatter2d13()
    check_ui_test(obj1)

    events <- JS("{ 'mousemove' : function(o, e, t) {
                                    if (o) {
                                        if (o.objectType == null) {
                                            t.showInfoSpan(e, '<b>' + o.y.vars[0] + '</b><br/>' +
                                            'Some example event here' + '<br/>' +
                                            '<i>Value:</i>' +  o.y.data[0][0]);
                                        }
                                        else {
                                            t.showInfoSpan(e, o.display);
                                        };
                                    };}}")
    result <- obj1 %>%
        canvasXpress(title  = "Piped custom events",
                     events = events)

    check_ui_test(result)
})


test_that("piping - change afterRender", {
    data <- data.frame(S1 = c(1,1,2,3),
                       S2 = c(1,4,4,3),
                       S3 = c(5,3,2,3))

    boxplot <- canvasXpress(data      = data,
                            graphType = "Scatter2D")
    check_ui_test(boxplot)

    histogram1 <- boxplot %>%
        canvasXpress(title       = "Scatter to histogram",
                     afterRender = list(list("createHistogram")))

    check_ui_test(histogram1)

    histogram2 <- histogram1 %>%
        canvasXpress(title       = "Remove histogram",
                     afterRender = NULL)

    check_ui_test(histogram2)
})


test_that("piping - change height", {
    obj1 <- cXstacked1()

    cxHtmlPage(chartObject = obj1) %>%
        writeLines("html_chart_obj1.html")

    obj2 <- obj1 %>% canvasXpress(
        title  = "changed height",
        height = 300)

    cxHtmlPage(chartObject = obj2) %>%
        writeLines("html_chart_obj2.html")

    warning("you will need to view the saved html plots as the Rstudio viewer fills the plot to the space")
})


test_that("piping - change attributes for tojson", {
    # Change the attributes that affect json
    # skipping pretty because there won't be a visible change
    obj1 <- cXscatterbubble2d1()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(title  = "one digit",
                     digits = 1)

    check_ui_test(result)
})


test_that("piping - invalid object", {
    obj1          <- cXboxplot14()
    obj1$x$data$y <- NULL

    result <- obj1 %>%
        canvasXpress(title = "test")

    warning("The plot should be unavailable")
    check_ui_test(result)

})


test_that("piping - attempted data changes", {
    # Piping to a different position
    error_msg <- "data cannot be NULL!"
    obj1      <- cXscatterbubble2d1()
    check_ui_test(obj1)

    expect_error(obj1 %>% canvasXpress(smpAnnot = .), regexp = error_msg)
    expect_error(obj1 %>% canvasXpress(varAnnot = .), regexp = error_msg)

    # Attempt to replace the data variables
    # Get two dataframes to use
    error_msg <- "Primary object data changes are not supported when modifying a canvasXpress object"
    y <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt",
                    header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt",
                    header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)

    expect_error(cXdotplot4() %>% canvasXpress(smpAnnot = y), regexp = error_msg)
    expect_error(cXbarline3() %>% canvasXpress(varAnnot = x), regexp = error_msg)
})

test_that("piping - area chart", {
    obj1 <- cXarea8()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(
            title               = "decoration lines, xAxisGridMajorWidth",
            decorations         = list(line = list(list(color = "rgba(205,0,0,0.5)",   width = 2, x = 2),
                                                   list(color = "rgba(0,104,139,0.5)", width = 2, x = 5))),
            xAxisGridMajorWidth = 5)

    check_ui_test(result)
})

test_that("piping - arealine chart", {
    obj1 <- cXarealine3()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(title          = "subtitle text, smpTextRotate = 90",
                     subtitle       = "changed",
                     smpTextRotate  = 90)

    check_ui_test(result)
})

test_that("piping - bar chart", {
    obj1 <- cXbar13()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(
            title       = "ColorBy Factor2, legendOrder",
            colorBy     = "Factor2",
            legendOrder = list("Factor2" = list("Lev : B", "Lev : A")))

    check_ui_test(result)
})

test_that("piping - barline chart", {
    obj1 <- cXbarline3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "only plot V2 bars",
        xAxis        = list("V2")
    )

    check_ui_test(result)
})

test_that("piping - boxplot chart", {
    obj1 <- cXboxplot5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "remove boxplotMean and smpTitle",
        boxplotMean = FALSE,
        smpTitle    = NULL
    )

    check_ui_test(result)
})

test_that("piping - bubble chart", {
    obj1 <- cXbubble3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title               = "bubbleLabelLineType to line and bubbleOutlineColor",
        bubbleLabelLineType = "line",
        bubbleOutlineColor  = "blue")

    check_ui_test(result)
})

test_that("piping - chord chart", {
    obj1 <- cXchord2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "legendPosition and theme",
        legendPosition = "bottom",
        theme          = "ggplot",
    )

    check_ui_test(result)

})

test_that("piping - circular chart", {
    obj1 <- cXcircular1()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(title            = "smpLabelInterval",
                     smpLabelInterval = 10
                     )

    check_ui_test(result)
})

test_that("piping - contour chart", {
    obj1 <- cXcontour2()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(title                = "contourLevel, heatmapIndicator",
                     showContourLevel     = TRUE,
                     showHeatmapIndicator = FALSE)

    check_ui_test(result)
})

test_that("piping - correlation chart", {
    obj1 <- cXcorrelation3()
    check_ui_test(obj1)

    result <- obj1 %>%
        canvasXpress(title                   = "correlationType to circle and remove correlationAnchorLegend",
                     correlationAnchorLegend = NULL,
                     correlationType         = "circle")

    check_ui_test(result)
})

test_that("piping - dashboard chart", {
    obj1 <- cXdashboard5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "layout 4x4",
        layoutConfig = list(list(size = "4X2"))
    )

    check_ui_test(result)
})

test_that("piping - density chart", {
    obj1 <- cXdensity10()
    check_ui_test(obj1)
    warning("remove segregateVariablesBy results in different color scheme than if you do it manually on the plot")
    result <- obj1 %>% canvasXpress(
        title                = "hideHistogram and segregate by sex",
        hideHistogram        = TRUE,
        segregateVariablesBy = list("sex")
    )

    check_ui_test(result)
})

test_that("piping - donut chart", {
    obj1 <- cXdonnut2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title         = "half circle and legendColumns 3",
        circularArc   = 180,
        legendColumns = 3
    )

    check_ui_test(result)
})

test_that("piping - dotline chart", {
    obj1 <- cXdotline2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "add annotation to one point",
        decorations = list(marker = list(list(sample   = "S3",
                                              variable = "V1",
                                              text     = "Maybe an Outlier?",
                                              x        = 0.39,
                                              y        = 0.71)))
    )

    check_ui_test(result)
})

test_that("piping - dotplot chart", {
    obj1 <- cXdotplot14()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title  = "add jitter to points",
        jitter = TRUE)

    check_ui_test(result)
})

test_that("piping - facet chart", {
    obj1 <- cXfacet3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "remove segregation",
        afterRender = NULL)

    check_ui_test(result)
})

test_that("piping - fish chart", {
    obj1 <- cXfish1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title     = "modify fish shape and axis",
        fishShape = "polygon",
        fishAxis  = list(0, 120))

    check_ui_test(result)
})

test_that("piping - gantt chart", {
    obj1 <- cXgantt3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title     = "pattern by indication",
        patternBy = "Indication")

    check_ui_test(result)
})

test_that("piping - genome chart", {
    obj1 <- cXgenome4()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "remove ideogram (chromosome, first row)",
        showIdeogram = FALSE)

    check_ui_test(result)
})

test_that("piping - heatmap chart", {
    obj1 <- cXheatmap4()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "highlight cells",
        highlightSmp = list("S3", "S5", "S10", "S11"),
        highlightVar = list("V22", "V30", "V4"))

    check_ui_test(result)
})

test_that("piping - hexplotbinplot chart", {
    obj1 <- cXhexplotbinplot2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "change bins and shape to rectangle",
        binplotBins  = 20,
        binplotShape = "rectangle")

    check_ui_test(result)
})

test_that("piping - histogram chart", {
    obj1 <- cXhistogram6()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title             = "change histogram bins and show path line",
        histogramBins     = 10,
        showHistogramPath = TRUE)

    check_ui_test(result)
})

test_that("piping - kaplanmeier chart", {
    obj1 <- cXkaplanmeier3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title        = "change X axis label and legend inside plot",
        legendInside = TRUE,
        xAxisTitle   = "CHANGED")

    check_ui_test(result)
})

test_that("piping - layout chart", {
    obj1 <- cXlayout3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "fixed toolbar and resizable FALSE",
        toolbarType = "fixed",
        resizable   = FALSE)

    check_ui_test(result)
})

test_that("piping - line chart", {
    obj1 <- cXline2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "zoomDisabled",
        zoomDisable = TRUE)

    check_ui_test(result)
})

test_that("piping - linearfit chart", {
    obj1 <- cXlinearfit2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                 = "remove stringVariableFactors",
        stringVariableFactors = NULL)

    check_ui_test(result)
})

test_that("piping - lollipop chart", {
    obj1 <- cXlollipop2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title             = "lollipop circle filled and size of circle increased",
        barLollipopFactor = 2.5,
        barLollipopOpen   = FALSE)

    check_ui_test(result)
})

test_that("piping - map chart", {
    obj1 <- cXmap2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title           = "remove legend title and zoom in map",
        showLegendTitle = FALSE,
        mapConfig       = list(zoom = 3)
    )

    check_ui_test(result)
})

test_that("piping - meter chart", {
    obj1 <- cXmeter2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title         = "add subtitle, change meter max and meter segments",
        meterMax      = 100,
        subtitle      = "subtitle added",
        meterSegments = list(25, 50, 75, 200))

    check_ui_test(result)
})

test_that("piping - network chart", {
    obj1 <- cXnetwork9()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                     = "change networkColaFlowLayoutAxis from y to x",
        networkColaFlowLayoutAxis = "x"
    )

    check_ui_test(result)
})

test_that("piping - nonlinearfit chart", {
    obj1 <- cXnonlinearfit5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "change line color to blue",
        decorations = list(power = list(list(color = "blue")))
    )

    check_ui_test(result)
})

test_that("piping - oncoprint chart", {
    obj1 <- cXoncoprint2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "remove overlays",
        smpOverlays = NULL)

    check_ui_test(result)
})

test_that("piping - parallelcoordinates chart", {
    obj1 <- cXparallelcoordinates1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                = "change legend title to bold",
        legendTitleFontStyle = "bold")

    check_ui_test(result)
})

test_that("piping - pie chart", {
    obj1 <- cXpie1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title              = "remove sample label and put segment labels outside chart",
        pieSegmentLabels   = "outside",
        showPieSampleLabel = FALSE)

    check_ui_test(result)
})

test_that("piping - radar chart", {
    obj1 <- cXradar1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                          = "show 270 of the chart and add blue legend border color",
        circularArc                    = 270,
        legendKeyBackgroundBorderColor = "blue")

    check_ui_test(result)
})

test_that("piping - ridgeline chart", {
    obj1 <- cXridgeline3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                  = "show histogram and change xAxis grid to dashed",
        hideHistogram          = FALSE,
        xAxisGridMajorLineType = "dashed")

    check_ui_test(result)
})

test_that("piping - sankey chart", {
    obj1 <- cXsankey4()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "Sankey with changed theme",
        theme       = "stata")

    check_ui_test(result)
})

test_that("piping - scatter2D chart", {
    obj1 <- cXscatter2d4()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title              = "Histogram removed, legend side changed",
        xAxisHistogramShow = FALSE,
        legendPosition     = "left")

    check_ui_test(result)
})

test_that("piping - scatter3D chart", {
    obj1 <- cXscatter3d3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title              = "change colour scheme, select point and font",
        colorScheme        = "Behance",
        fontName           = "Courier",
        selectedDataPoints = list("V62"))

    check_ui_test(result)
})

test_that("piping - scatterbubbl2D chart", {
    obj1 <- cXscatterbubble2d3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "change theme and background",
        theme          = "SpongeBob",
        backgroundType = "solid")

    check_ui_test(result)
})

test_that("piping - splom chart", {
    obj1 <- cXsplom7()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "change theme, legend position, and legend columns",
        theme          = "KimPossible",
        legendPosition = "bottom",
        legendColumns  = 3)

    check_ui_test(result)
})

test_that("piping - stacked chart", {
    obj1 <- cXstacked5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title            = "change graph orientation and axis label rotation",
        graphOrientation = "vertical",
        smpTextRotate    = 90)

    check_ui_test(result)
})

test_that("piping - stackedline chart", {
    obj1 <- cXstackedline1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title             = "change colour scheme and italicize title/subtitle",
        colorScheme       = "Blues",
        titleFontStyle    = "italic",
        subtitleFontStyle = "italic")

    check_ui_test(result)
})

test_that("piping - stackedpercent chart", {
    obj1 <- cXstackedpercent5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "change colour scheme and background",
        colorScheme    = "Magma",
        backgroundType = "gradient")

    check_ui_test(result)
})

test_that("piping - stackedpercentline chart", {
    obj1 <- cXstackedpercentline1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                  = "change grid line type, rotate x-axis labels, change theme",
        xAxisGridMajorLineType = "dashed",
        smpTextRotate          = 90,
        theme                  = "solarized")

    check_ui_test(result)
})

test_that("piping - sunburst chart", {
    obj1 <- cXsunburst2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title       = "change to different graph type",
        circularType = "bubble")

    check_ui_test(result)
})

test_that("piping - tagcloud chart", {
    obj1 <- cXtagcloud1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "change colour scheme and legend position",
        colorScheme    = "SpongeBob",
        legendPosition = "bottom",
        legendColumns  = 6
    )

    check_ui_test(result)
})

test_that("piping - tcga chart", {
    obj1 <- cXtcga8()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title          = "changed y-axis and legend position",
        yAxisTitle     = "changed",
        legendPosition = "bottom"
    )

    check_ui_test(result)
})

test_that("piping - tree chart", {
    obj1 <- cXtree5()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title         = "change label colour and colour spectrum",
        afterRender   = list(
            list(
                "modifyColorSpectrumByScheme",
                list("PuOr"),
                1697141782953
            )
        )
    )

    check_ui_test(result)
})

test_that("piping - treemap chart", {
    obj1 <- cXtreemap3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title                = "change graph orientation, bold title, italic legend title",
        titleFontStyle       = "bold",
        graphOrientation     = "horizontal",
        legendTitleFontStyle = "italic"
    )

    check_ui_test(result)
})

test_that("piping - upset chart", {
    obj1 <- cXupset2()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title    = "change font and theme",
        theme    = "solarized",
        fontName = "Luminari"
    )

    check_ui_test(result)
})

test_that("piping - venn chart", {
    obj1 <- cXvenn1()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title    = "change font and theme",
        fontName = "Bradley Hand",
        theme    = "solarized")

    check_ui_test(result)
})

test_that("piping - waterfall chart", {
    obj1 <- cXwaterfall3()
    check_ui_test(obj1)

    result <- obj1 %>% canvasXpress(
        title               = "changed grid line colour, bold font, colour scheme",
        axisTitleFontStyle  = "bold",
        xAxisGridMajorColor = "#471a1a",
        colorScheme         = "PuBu")

    check_ui_test(result)
})
