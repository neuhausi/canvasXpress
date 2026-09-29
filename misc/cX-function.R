cX3dplots1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="CanvasXpress",
    graphType="Bar",
    is3DPlot=TRUE,
    scatterType="bar",
    widthFactor=2.5,
    x3DRatio=0.5,
    xAxis=list("V1", "V2", "V3", "V4"),
    yAxis=list("data"),
    zAxis=list("S1", "S2", "S3", "S4", "S5", "S6")
  )
}

cX3dplots2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTextScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Sepal.Width"),
    zAxis=list("Petal.Length")
  )
}

cX3dplots3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatter3d-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    scatterType="bar",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXarea1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area5-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Prism",
    graphOrientation="vertical",
    graphType="Area",
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    title="Area graph with one series",
    titleScaleFontFactor=1.2,
    xAxis=list("Value"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area5-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Prism",
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    title="Area graph with one series - Spline",
    titleScaleFontFactor=1.2,
    xAxis=list("Value"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Behance",
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    objectColorTransparency=0.7,
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    subtitle="random data",
    title="Area graph with three overlapping data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Series A", "Series B", "Series C"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="LastAirBenderWater",
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    title="Area graph with three stacked data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Series A", "Series B", "Series C"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="percent",
    colorScheme="Prism",
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    title="Area graph with three data series in percentage",
    titleScaleFontFactor=1.2,
    xAxis=list("Series A", "Series B", "Series C"),
    xAxisTitle="Percent of Revenue (in Millions)"
  )
}

cXarea6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Behance",
    filterData=list(list("guess", FALSE, "different", list("Series C"))),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    objectColorTransparency=0.7,
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    subtitle="Filtered data",
    title="Area graph with three overlapping data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Series A", "Series B", "Series C"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="LastAirBenderWater",
    filterData=list(list("guess", FALSE, "exact", list("Series B"))),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    smpTextRotate=90,
    smpTitle="Month / First Quarters of 2024",
    subtitle="Filtered data",
    title="Area graph with three stacked data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Series A", "Series B", "Series C"),
    xAxisTitle="Revenue (in Millions)"
  )
}

cXarea8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area7-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-area7-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Series",
    colorScheme="GameOfThronesStannis",
    graphType="Area",
    legendColumns=3,
    legendPosition="top",
    lineType="spline",
    subtitle="skiny-long format",
    title="Area graph with three stacked data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Month"),
    xAxisTitle="Revenue (in Millions)",
    yAxis=list("Value"),
    yAxisTitle="Months / First Quarters of 2024"
  )
}

cXarea9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area7-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-area7-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Series",
    colorScheme="GameOfThronesStannis",
    filterData=list(list("guess", "Series", "not like", list("Series A"))),
    graphType="Area",
    legendColumns=3,
    legendPosition="top",
    lineType="spline",
    subtitle="skiny-long format - Filtered",
    title="Area graph with three stacked data series",
    titleScaleFontFactor=1.2,
    xAxis=list("Month"),
    xAxisTitle="Revenue (in Millions)",
    yAxis=list("Value"),
    yAxisTitle="Months / First Quarters of 2024"
  )
}

cXarea10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Area",
    objectColorTransparency=0.7,
    smpLabelInterval=20,
    smpTextRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34", "35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Area",
    smpLabelInterval=20,
    smpTextRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34", "35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="percent",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Area",
    smpLabelInterval=20,
    smpTextRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34", "35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    objectBorderColor=FALSE,
    objectColorTransparency=0.3,
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Steam Plot",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30"),
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXarea14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    objectBorderColor=FALSE,
    objectColorTransparency=0.6,
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Data Mountain",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30"),
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXarea15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatterArea-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatterArea-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="g",
    colorScheme="GGPlot",
    graphType="Area",
    theme="GGPlot",
    xAxis=list("x"),
    yAxis=list("y")
  )
}

cXarea16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fontana-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-fontana-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="country",
    colors=list("rgb(0,63,92)", "rgb(47,75,124)", "rgb(102,81,145)", "rgb(160,81,149)", "rgb(212,80,135)", "rgb(249,93,106)", "rgb(255,124,67)", "rgb(255,166,0)"),
    dataPointSizeScaleFactor=0,
    graphType="Area",
    legendColumns=3,
    legendPosition="bottom",
    panelBackgroundColor="rgb(222,222,222)",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("total_wealth"),
    yAxisGridMinorShow=FALSE
  )
}

cXarealine1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="AreaLine",
    lineThickness=3,
    lineType="spline",
    objectColorTransparency=0.5,
    setMaxX=50,
    setMaxX2=50,
    smpTextRotate=90,
    smpTitle="Month",
    xAxis=list("Series A", "Series B", "Series C"),
    xAxis2=list("Series D", "Series E"),
    xAxis2Show=TRUE,
    xAxisShow=TRUE
  )
}

cXarealine2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    graphOrientation="vertical",
    graphType="AreaLine",
    lineThickness=3,
    lineType="spline",
    setMaxX=60,
    setMaxX2=60,
    smpTextRotate=90,
    smpTitle="Month",
    xAxis=list("Series A", "Series B", "Series C"),
    xAxis2=list("Series D", "Series E"),
    xAxis2Show=TRUE,
    xAxisShow=TRUE
  )
}

cXarealine3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("rgb(160,81,149)", "rgb(47,75,124)", "rgb(102,81,145)", "rgb(255,166,0)", "rgb(0,63,92)", "rgb(160,81,149)"),
    graphOrientation="vertical",
    graphType="AreaLine",
    legendPosition="topRight",
    lineThickness=3,
    lineType="spline",
    setMinX=0,
    setMinX2=0,
    smpTextRotate=90,
    smpTitle="Month",
    xAxis=list("Series A"),
    xAxis2=list("Series D"),
    xAxis2Show=TRUE,
    xAxis2Title="Value2",
    xAxisShow=TRUE,
    xAxisTitle="Value"
  )
}

cXarealine4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="AreaLine",
    legendPosition="topRight",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpTextRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxis2Show=TRUE,
    xAxisShow=TRUE,
    xAxisTitle="Number of People (1000's)"
  )
}

cXbar1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stBarOneSeries-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="Categories",
    title="Bar graph with a single series",
    xAxis=list("Var 1"),
    xAxisTitle="Var 1"
  )
}

cXbar2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stBarTwoSeries-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    dataTextColor="#FFFFFF",
    dataValuesPosition="inside",
    graphOrientation="horizontal",
    graphType="Bar",
    showDataValues=TRUE,
    smpTextRotate=90,
    smpTitle="Categories",
    title="Bar graph showing data values",
    xAxis=list("Var 1", "Var 2"),
    xAxisTitle="Value"
  )
}

cXbar3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stBarThreeSeries-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    legendColumns=3,
    legendPosition="bottom",
    smpTextRotate=90,
    smpTitle="Categories",
    title="Bar graph with multiple series",
    xAxis=list("Var 1", "Var 2", "Var 3"),
    xAxisTitle="Value"
  )
}

cXbar4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    dataTextScaleFontFactor=0.8,
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Species"),
    legendColumns=2,
    legendPosition="bottom",
    showDataValues=TRUE,
    smpTextRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXbar5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Species"),
    layoutTopology="1X3",
    legendColumns=2,
    legendPosition="bottom",
    segregateSamplesBy=list("Species"),
    smpTextRotate=90,
    smpTitle="Species",
    theme="blackAndWhite",
    title="Iris flower data set",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXbar6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    plotByVariable=TRUE,
    smpLabelInterval=2,
    smpTextRotate=90,
    smpTitle="Samples",
    title="Data Organized by variables",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXbar7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-simple-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-simple-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Drug Sensitivity",
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    graphOrientation="vertical",
    graphType="Bar",
    smpTextRotate=90,
    smpTitle="Cell Lines",
    title="Sensitivity of cell lines to different drugs",
    xAxis=list("V1")
  )
}

cXbar8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-simple-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-simple-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="IC50",
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    graphOrientation="vertical",
    graphType="Bar",
    smpOverlays=list("Drug Sensitivity"),
    smpTextRotate=90,
    smpTitle="Cell Lines",
    title="Sensitivity of cell lines to different drugs",
    xAxis=list("V1")
  )
}

cXbar9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cancerDeathByType2021-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="<b>Data source</b> :  IHME, Global Burden of Disease (2024)",
    citationScaleFontFactor=0.7,
    dataTextColor="#FFFFFF",
    dataTextScaleFontFactor=0.8,
    dataValuesPosition="inside",
    graphOrientation="horizontal",
    graphType="Bar",
    maxSmpStringLen=50,
    showDataValues=TRUE,
    showLegend=FALSE,
    subtitle=" Estimated number of deaths from different types of cancer per 100,000 people.",
    subtitleScaleFontFactor=0.6,
    title="Cancer crude death rate by type, World, 2021",
    xAxis=list("Number of Deaths per 100000 people"),
    xAxisGridMajorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbar10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cancerDeathRateByAge-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-cancerDeathRateByAge-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="<b>Data source</b> :  WHO Mortality Database (2024)",
    citationScaleFontFactor=0.7,
    dataTextScaleFontFactor=0.7,
    graphOrientation="horizontal",
    graphType="Bar",
    maxSmpStringLen=50,
    showDataValues=TRUE,
    showLegend=FALSE,
    subtitle="The reported annual death rate from malignant cancers, based on the underlying cause listed on death certificates.\nThis is shown as a rate per 100,000 people in each age group.",
    subtitleScaleFontFactor=0.6,
    title="Cancer death rate by age group, United States",
    workflowBy="Year",
    xAxis=list(1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021),
    xAxisGridMajorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbar11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("class"),
    showDataValues=TRUE,
    showLegend=FALSE,
    smpTextRotate=90,
    summaryType="count",
    theme="ggplot",
    title="Counting the number of cars by class",
    xAxis=list("displ")
  )
}

cXbar12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorScheme="GGPlot",
    dataTextColor="#FFFFFF",
    dataValuesPosition="inside",
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("class"),
    showDataValues=TRUE,
    showLegend=FALSE,
    smpTextRotate=90,
    summaryType="sum",
    theme="ggplot",
    title="Total engine displacement for each class",
    xAxis=list("displ")
  )
}

cXbar13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    colorBy="GNI",
    graphOrientation="vertical",
    graphType="Stacked",
    groupingFactors=list("continent"),
    legendInside=TRUE,
    legendPosition="right",
    objectBorderColor="rgb(0,0,0)",
    smpTextRotate=45,
    subtitle="2014 Census",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    xAxis=list("population")
  )
}

cXbar14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-audrey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-audrey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Result",
    colorScheme="Greens",
    graphType="Bar",
    groupingFactors=list("Award"),
    legendColumns=2,
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    maxSmpStringLen=50,
    objectBorderColor="rgb(0,0,0)",
    showLegendTitle=FALSE,
    smpTextScaleFontFactor=1.5,
    stackBy="Result",
    summaryType="count",
    title="The Awards of Audrey Hepburn",
    xAxis=list("Year"),
    xAxis2Show=TRUE,
    xAxisShow=FALSE
  )
}

cXbar15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-animationMovies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="solid",
    colorScheme="Blues",
    colors=list("rgb(75,179,216)"),
    fontName="Waltograph",
    fontsExternal=list(list(name="Waltograph", url="https://www.canvasxpress.org/assets/fonts/waltograph42.otf")),
    graphOrientation="vertical",
    graphType="Bar",
    marginBottom=50,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    plotBackgroundColor="rgb(48,114,148)",
    showLegend=FALSE,
    smpTextColor="rgb(255,255,255)",
    smpTextRotate=90,
    smpTextScaleFontFactor=1.5,
    title="Animation Movies",
    titleAlign="center",
    titleColor="rgb(255,255,255)",
    titleScaleFontFactor=2.5,
    xAxis=list("Total"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbar16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-movies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-movies-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="solid",
    barType="bullet",
    bulletWidthRatio=1,
    colorBy="Color",
    colors=list("rgb(250,165,44)", "rgb(254,225,60)", "rgb(253,243,169)"),
    fontName="Waltograph",
    fontsExternal=list(list(name="Waltograph", url="https://www.canvasxpress.org/assets/fonts/waltograph42.otf")),
    graphType="Bar",
    marginBottom=50,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    plotBackgroundColor="rgb(48,114,148)",
    rangeColorTransparency=1,
    rangeColors=list("rgb(48,126,164)"),
    showLegend=FALSE,
    smpTextColor="rgb(255,255,255)",
    smpTextScaleFontFactor=2,
    title="Friendship, Love, Family",
    titleAlign="center",
    titleColor="rgb(254,225,60)",
    titleScaleFontFactor=2.5,
    xAxis=list("Topic"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbar17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bar20-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-bar20-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorKey=list("06h"="#4292C6", "12h"="#F4D03F", "24h"="#08519C", Mock="#9ECAE1"),
    colorScheme="User",
    colors=list("rgb(158,202,225)", "rgb(66,146,198)", "rgb(244,208,63)", "rgb(8,81,156)"),
    decorations=list(error=list(list(cat="False", color="black", isIndex="False", level="False", max=1.0279, min=0.913, pos=0.7, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0756, min=0.8718, pos=1.7, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.3317, min=0.2824, pos=2.7, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.5007, min=1.9811, pos=3.7, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3883, min=1.6801, pos=0.9, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0381, min=1.6795, pos=1.9, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.8704, min=3.1253, pos=2.9, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.9059, min=2.0856, pos=3.9, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.9155, min=0.7301, pos=1.1, sample="ABA", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0307, min=0.7274, pos=2.1, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5967, min=1.2414, pos=3.1, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.458, min=1.0301, pos=4.1, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.8268, min=0.7254, pos=1.3, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.6576, min=1.1685, pos=2.3, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3352, min=1.119, pos=3.3, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0087, min=1.517, pos=4.3, sample="Cold", scope="HvHvOSCA1.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.9355, min=2.2084, pos=0.7, sample="Cold", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2957, min=1.0744, pos=1.7, sample="Cold", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.9488, min=1.6557, pos=2.7, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.174, min=1.0201, pos=3.7, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5368, min=1.0976, pos=0.9, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4922, min=1.1093, pos=1.9, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.9864, min=1.5705, pos=2.9, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3871, min=1.6877, pos=3.9, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.8107, min=1.9953, pos=1.1, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.8543, min=0.7484, pos=2.1, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.674, min=1.1673, pos=3.1, sample="PEG", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.7894, min=0.5918, pos=4.1, sample="Salt", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.28, min=1.0877, pos=1.3, sample="Salt", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.2184, min=2.4956, pos=2.3, sample="Salt", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.1495, min=2.73, pos=3.3, sample="Salt", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5249, min=1.1608, pos=4.3, sample="Salt", scope="HvHvOSCA1.3_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.8682, min=2.16, pos=0.7, sample="Salt", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5885, min=1.1446, pos=1.7, sample="Salt", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.6883, min=1.9725, pos=2.7, sample="Salt", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.5675, min=2.1208, pos=3.7, sample="Salt", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.8836, min=1.3289, pos=0.9, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.6048, min=1.1787, pos=1.9, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0443, min=0.7939, pos=2.9, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3143, min=1.1668, pos=3.9, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0823, min=1.8637, pos=1.1, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.7222, min=0.6416, pos=2.1, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.4796, min=0.3704, pos=3.1, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.1254, min=1.8428, pos=4.1, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.9586, min=0.6909, pos=1.3, sample="ABA", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4819, min=1.1755, pos=2.3, sample="Cold", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2524, min=1.8359, pos=3.3, sample="Cold", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.1408, min=1.6274, pos=4.3, sample="Cold", scope="HvHvOSCA1.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.918, min=1.5369, pos=0.7, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.8714, min=0.7528, pos=1.7, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0778, min=0.7835, pos=2.7, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3049, min=1.7538, pos=3.7, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2954, min=0.9692, pos=0.9, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2421, min=1.6853, pos=1.9, sample="Cold", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4023, min=1.2222, pos=2.9, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0663, min=1.6932, pos=3.9, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.0898, min=2.5888, pos=1.1, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.567, min=2.5027, pos=2.1, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.187, min=1.0559, pos=3.1, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4961, min=1.1949, pos=4.1, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5026, min=1.2129, pos=1.3, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.85, min=0.7318, pos=2.3, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2024, min=1.7668, pos=3.3, sample="PEG", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.5468, min=0.4372, pos=4.3, sample="Salt", scope="HvHvOSCA2.1_1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.7488, min=2.2183, pos=0.7, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3196, min=1.8444, pos=1.7, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.134, min=0.9961, pos=2.7, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3954, min=1.1637, pos=3.7, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.8305, min=1.5033, pos=0.9, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.58, min=1.2621, pos=1.9, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.6777, min=0.5604, pos=2.9, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.8593, min=1.4611, pos=3.9, sample="Salt", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.062, min=1.6363, pos=1.1, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2014, min=1.774, pos=2.1, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.7806, min=1.5443, pos=3.1, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.7173, min=0.5414, pos=4.1, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.6183, min=1.2852, pos=1.3, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2788, min=1.1565, pos=2.3, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.1321, min=0.9143, pos=3.3, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.9793, min=2.788, pos=4.3, sample="ABA", scope="HvHvOSCA2.1_2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2541, min=1.76, pos=0.7, sample="ABA", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0787, min=1.6807, pos=1.7, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4446, min=1.0138, pos=2.7, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.1852, min=0.9781, pos=3.7, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.7858, min=0.579, pos=0.9, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0018, min=0.7963, pos=1.9, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.6648, min=1.3545, pos=2.9, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.4555, min=2.1616, pos=3.9, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.6862, min=0.5291, pos=1.1, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3763, min=1.9516, pos=2.1, sample="Cold", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.9954, min=1.5941, pos=3.1, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2962, min=1.0395, pos=4.1, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3317, min=1.0047, pos=1.3, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.6173, min=1.8794, pos=2.3, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.5999, min=0.474, pos=3.3, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.507, min=2.0417, pos=4.3, sample="PEG", scope="HvHvOSCA2.2", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.1822, min=1.5458, pos=0.7, sample="PEG", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.4401, min=1.9042, pos=1.7, sample="PEG", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4157, min=1.2326, pos=2.7, sample="PEG", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.9754, min=1.7197, pos=3.7, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.6754, min=1.5115, pos=0.9, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.585, min=0.4883, pos=1.9, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3935, min=1.233, pos=2.9, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.3639, min=0.9994, pos=3.9, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.7096, min=1.4436, pos=1.1, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.825, min=1.5795, pos=2.1, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.5809, min=1.4296, pos=3.1, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2524, min=0.8809, pos=4.1, sample="Salt", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2346, min=0.9147, pos=1.3, sample="ABA", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0393, min=0.908, pos=2.3, sample="ABA", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.8668, min=0.6277, pos=3.3, sample="ABA", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.8429, min=2.0568, pos=4.3, sample="ABA", scope="HvHvOSCA2.4", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.2752, min=1.0864, pos=0.7, sample="ABA", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.3234, min=1.7696, pos=1.7, sample="ABA", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0218, min=0.8905, pos=2.7, sample="ABA", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0585, min=0.8056, pos=3.7, sample="ABA", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2283, min=1.5735, pos=0.9, sample="ABA", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.0921, min=2.3309, pos=1.9, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.7055, min=1.2068, pos=2.9, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.2072, min=1.6443, pos=3.9, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.4808, min=2.0093, pos=1.1, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.1096, min=2.774, pos=2.1, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.4535, min=1.1716, pos=3.1, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.0864, min=1.5655, pos=4.1, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.9465, min=0.8223, pos=1.3, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.1936, min=1.0735, pos=2.3, sample="Cold", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.869, min=3.4506, pos=3.3, sample="PEG", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.7237, min=0.5367, pos=4.3, sample="PEG", scope="HvHvOSCA3.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.9342, min=0.7977, pos=0.7, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.7144, min=1.1983, pos=1.7, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.6543, min=0.4639, pos=2.7, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.5094, min=0.4392, pos=3.7, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.502, min=1.0456, pos=0.9, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.7552, min=1.2789, pos=1.9, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.1516, min=0.8356, pos=2.9, sample="PEG", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.6854, min=2.3969, pos=3.9, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.246, min=1.8464, pos=1.1, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.0954, min=0.8339, pos=2.1, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.8024, min=2.3684, pos=3.1, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=0.5445, min=0.4441, pos=4.1, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=3.9426, min=2.8525, pos=1.3, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=2.035, min=1.4374, pos=2.3, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.661, min=1.2996, pos=3.3, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25), list(cat="False", color="black", isIndex="False", level="False", max=1.1102, min=0.8736, pos=4.3, sample="Salt", scope="HvHvOSCA4.1", size=1, type="line", width=0.25)), text=list(list(catX=0.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.1779), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.2256), list(catX=2.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=0.4817), list(catX=3.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=2.6507), list(catX=0.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=2.5383), list(catX=1.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=2.1881), list(catX=2.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=4.0204), list(catX=3.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=3.0559), list(catX=1.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.0655), list(catX=2.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.1807), list(catX=3.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.7467), list(catX=4.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.608), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=0.9768), list(catX=2.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.8076), list(catX=3.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=1.4852), list(catX=4.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=1, preTransformed="True", value=2.1587), list(catX=0.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=3.0855), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.4457), list(catX=2.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=2.0988), list(catX=3.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.324), list(catX=0.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.6868), list(catX=1.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.6422), list(catX=2.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=2.1364), list(catX=3.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=2.5371), list(catX=1.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=2.9607), list(catX=2.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.0043), list(catX=3.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.824), list(catX=4.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=0.9394), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.43), list(catX=2.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=3.3684), list(catX=3.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=3.2995), list(catX=4.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=2, preTransformed="True", value=1.6749), list(catX=0.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=3.0182), list(catX=1.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.7385), list(catX=2.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.8383), list(catX=3.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.7175), list(catX=0.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.0336), list(catX=1.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.7548), list(catX=2.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.1943), list(catX=3.9, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.4643), list(catX=1.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.2323), list(catX=2.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=0.8722), list(catX=3.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=0.6296), list(catX=4.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.2754), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.1086), list(catX=2.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=1.6319), list(catX=3.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.4024), list(catX=4.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=3, preTransformed="True", value=2.2908), list(catX=0.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=2.068), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.0214), list(catX=2.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.2278), list(catX=3.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=2.4549), list(catX=0.9, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.4454), list(catX=1.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=2.3921), list(catX=2.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.5523), list(catX=3.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=2.2163), list(catX=1.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=3.2398), list(catX=2.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=3.717), list(catX=3.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.337), list(catX=4.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.6461), list(catX=1.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1.6526), list(catX=2.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=1), list(catX=3.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=2.3524), list(catX=4.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=4, preTransformed="True", value=0.6968), list(catX=0.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=2.8988), list(catX=1.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=2.4696), list(catX=2.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.284), list(catX=3.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.5454), list(catX=0.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.9805), list(catX=1.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.73), list(catX=2.9, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=0.8277), list(catX=3.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=2.0093), list(catX=1.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=2.212), list(catX=2.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=2.3514), list(catX=3.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.9306), list(catX=4.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=0.8673), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.7683), list(catX=2.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.4288), list(catX=3.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=1.2821), list(catX=4.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=5, preTransformed="True", value=4.1293), list(catX=0.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.4041), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.2287), list(catX=2.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.5946), list(catX=3.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.3352), list(catX=0.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=0.9358), list(catX=1.9, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.1518), list(catX=2.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.8148), list(catX=3.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.6055), list(catX=1.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=0.8362), list(catX=2.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.5263), list(catX=3.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.1454), list(catX=4.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.4462), list(catX=1.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=1.4817), list(catX=2.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.7673), list(catX=3.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=0.7499), list(catX=4.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=6, preTransformed="True", value=2.657), list(catX=0.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=2.3322), list(catX=1.7, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=2.5901), list(catX=2.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.5657), list(catX=3.7, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=2.1254), list(catX=0.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.8254), list(catX=1.9, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=0.735), list(catX=2.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.5435), list(catX=3.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.5139), list(catX=1.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.8596), list(catX=2.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.975), list(catX=3.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.7309), list(catX=4.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.4024), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.3846), list(catX=2.3, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.1893), list(catX=3.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=1.0168), list(catX=4.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=7, preTransformed="True", value=2.9929), list(catX=0.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.4252), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=2.4734), list(catX=2.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.1718), list(catX=3.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.2085), list(catX=0.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=2.3783), list(catX=1.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=3.2421), list(catX=2.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.8555), list(catX=3.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=2.3572), list(catX=1.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=2.6308), list(catX=2.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=3.2596), list(catX=3.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.6035), list(catX=4.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=2.2364), list(catX=1.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.0965), list(catX=2.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=1.3436), list(catX=3.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=4.019), list(catX=4.3, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=8, preTransformed="True", value=0.8737), list(catX=0.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.0842), list(catX=1.7, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.8644), list(catX=2.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=0.8043), list(catX=3.7, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=0.6594), list(catX=0.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.652), list(catX=1.9, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.9052), list(catX=2.9, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.3016), list(catX=3.9, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=2.8354), list(catX=1.1, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=2.396), list(catX=2.1, color="rgb(0,0,0)", label="c", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.2454), list(catX=3.1, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=2.9524), list(catX=4.1, color="rgb(0,0,0)", label="bc", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=0.6945), list(catX=1.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=4.0926), list(catX=2.3, color="rgb(0,0,0)", label="a", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=2.185), list(catX=3.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.811), list(catX=4.3, color="rgb(0,0,0)", label="ab", labelScaleFontFactor=0.55, panel=9, preTransformed="True", value=1.2602))),
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("stress"),
    guidesColor="rgb(235,235,235)",
    layoutAdjust=TRUE,
    layoutGlobalGroups=TRUE,
    layoutTopology="3X3",
    legendColumns=8,
    legendHorizontalJustification="None",
    legendKeyBackgroundBorderColor="rgb(255,255,255)",
    legendKeyBackgroundColor="rgb(255,255,255)",
    legendPosition="top",
    legendStyleGgplot=TRUE,
    legendTextScaleFontFactor=0.7,
    metaData=list(gene="True", letter="False", mean="False", se="False", stress="True", time="True"),
    objectBorderColor="rgb(0,0,0)",
    panelBackgroundBorderColor="rgb(0,0,0)",
    panelBackgroundColor="rgb(255,255,255)",
    segregateSamplesBy=list("gene"),
    showAnimation=FALSE,
    smpTextColor="rgb(0,0,0)",
    smpTextRotate=90,
    smpTextScaleFontFactor=0.7,
    smpTitle="",
    sortOnGrouping="ascending",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgb(242,242,242)",
    stripTextColor="rgb(0,0,0)",
    stripTextFontStyle="bold",
    stripTextScaleFontFactor=0.6,
    summaryType="sum",
    theme="GGPlot",
    xAxis=list("Mock", "06h", "12h", "24h"),
    xAxisGridMajorColor="rgb(235,235,235)",
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorColor="rgba(235,235,235,1)",
    xAxisGridMinorShow=FALSE,
    xAxisGridMinorWidth=1,
    xAxisTextColor="rgb(0,0,0)",
    xAxisTextScaleFontFactor=0.7,
    xAxisTicksColor="rgb(0,0,0)",
    xAxisTicksLength=0.75,
    xAxisTitle="Relative abundance"
  )
}

cXbarline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="BarLine",
    legendColumns=2,
    legendPosition="bottom",
    lineThickness=2,
    lineType="spline",
    showTransition=FALSE,
    smpTextRotate=45,
    smpTitle="Collection of Samples",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxis2Show=TRUE,
    xAxis2TickFormat="%.0f T",
    xAxisShow=TRUE,
    xAxisTickFormat="%.0f M"
  )
}

cXbarline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="CanvasXpress",
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="BarLine",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxis2Show=TRUE,
    xAxisShow=TRUE
  )
}

cXbarline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="BarLine",
    legendColumns=4,
    legendPosition="bottom",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxis2Show=TRUE,
    xAxisShow=TRUE
  )
}

cXboxplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    objectColorTransparency=0.5,
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    boxplotNotched=TRUE,
    boxplotWhiskersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    boxplotNotched=TRUE,
    boxplotOutliersRatio=3,
    boxplotWhiskersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    layoutTopology="1X3",
    segregateSamplesBy=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    boxplotMean=TRUE,
    boxplotMeanColor="rgb(255,215,0)",
    boxplotMeanColorBorder="red",
    boxplotNotched=TRUE,
    boxplotWhiskersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    boxplotMedianColor="red",
    boxplotMedianWidth=5,
    boxplotNotched=TRUE,
    boxplotWhiskersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    boxplotHingeFunction="fivenum",
    boxplotNotched=TRUE,
    boxplotWhiskersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    jitter=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    binAlignment="center",
    binned=TRUE,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    jitter=FALSE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    shapeBy="supp",
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotType="range",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("supp"),
    pivotBy="dose",
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="supp",
    colorScheme="GGPlot",
    connectBy="order",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose", "order"),
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXboxplot20 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="supp",
    colorLegendTitle="supp",
    colorScheme="GGPlot",
    decorations=list(marker=list(list(color="black", group=0, group2=1, text=0.0191, type="pwc", variable="len", ymax=36, ymin=36), list(color="black", group=2, group2=3, text=0.0031, type="pwc", variable="len", ymax=36, ymin=36), list(color="black", group=4, group2=5, text=1, type="pwc", variable="len", ymax=36, ymin=36), list(color="black", group=0, group2=2, group3=1, group4=3, text="<0.0001", type="pwc", variable="len", ymax=40, ymin=40), list(color="black", group=0, group2=4, group3=1, group4=5, text="<0.0001", type="pwc", variable="len", ymax=44, ymin=44), list(color="black", group=2, group2=4, group3=3, group4=5, text="<0.0001", type="pwc", variable="len", ymax=48, ymin=48))),
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    legendColumns=8,
    legendPosition="top",
    smpTextRotate=90,
    smpTitle="len",
    sortOnGrouping="ascending",
    theme="GGPlot",
    xAxis=list("len")
  )
}

cXboxplot21 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotColor="#00AFBB",
    decorations=list(marker=list(list(color="black", group=0, group2=1, scope=list("OJ"), text="<0.0002", type="pwc", variable="len", ymax=35.385, ymin=34.494), list(color="black", group=0, group2=2, scope=list("OJ"), text="<0.0001", type="pwc", variable="len", ymax=38.949, ymin=38.058), list(color="black", group=1, group2=2, scope=list("OJ"), text=0.039, type="pwc", variable="len", ymax=42.513, ymin=41.622), list(color="black", group=0, group2=1, scope=list("VC"), text="<0.0001", type="pwc", variable="len", ymax=35.385, ymin=34.494), list(color="black", group=0, group2=2, scope=list("VC"), text="<0.0001", type="pwc", variable="len", ymax=38.949, ymin=38.058), list(color="black", group=1, group2=2, scope=list("VC"), text="<0.0001", type="pwc", variable="len", ymax=42.513, ymin=41.622))),
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    layoutTopology="1X2",
    segregateSamplesBy=list("supp"),
    smpTextRotate=90,
    smpTitle="len",
    sortOnGrouping="ascending",
    theme="GGPlot",
    xAxis=list("len")
  )
}

cXboxplot22 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-boxplot22-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-boxplot22-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotWhiskersType="single",
    colorBy="updown",
    colorKey=list(updown=list(down="rgb(58,102,160)", up="rgb(224,130,20)")),
    connectBy="isolate",
    connectByPointColor=TRUE,
    connectByWidth=1,
    decorations=list(text=list(list(color="rgb(0,0,0)", label="ns", labelScaleFontFactor=0.8, panel=1, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="ns", labelScaleFontFactor=0.8, panel=11, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=2, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="ns", labelScaleFontFactor=0.8, panel=3, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=8, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=9, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="**", labelScaleFontFactor=0.8, panel=10, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=12, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=5, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="***", labelScaleFontFactor=0.8, panel=7, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="*", labelScaleFontFactor=0.8, panel=4, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="ns", labelScaleFontFactor=0.8, panel=6, preTransformed="True", smpCenter="True", value=3.2), list(color="rgb(0,0,0)", label="****", labelScaleFontFactor=0.8, panel=13, preTransformed="True", smpCenter="True", value=3.2))),
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("xpos"),
    isTransformedData="log10",
    layoutTopology="3X5",
    panelBackgroundBorderColor="rgb(0,0,0)",
    segregateSamplesBy=list("drug"),
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpTextColor="rgb(0,0,0)",
    smpTextRotate=90,
    smpTextScaleFontFactor=0.7,
    smpTitle="Control or recent antibiotic",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColors=list(APR="#4FB3A9", CID="#E7A6C4", CTO="#E7A6C4", DEL="#8073AC", ERA="#7FBF7B", GEP="#8073AC", OMA="#7FBF7B", POL="#E08214", SCH="#E08214", SPR="#E08214", SUO="#4C72B0", TRD="#E08214", ZOL="#8073AC"),
    stripTextColor="rgb(0,0,0)",
    stripTextFontStyle="bold",
    stripTextScaleFontFactor=0.7,
    summaryType="iqr",
    transformData="log10",
    xAxis=list("mic"),
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTextColor="rgb(0,0,0)",
    xAxisTextScaleFontFactor=0.7,
    xAxisTicks=4,
    xAxisTicksColor="rgb(0,0,0)",
    xAxisTicksLength=0.75,
    xAxisTitle="Minimum inhibitory concentration (μ g ml<sup>-1</sup>)",
    xAxisTransformTicks=TRUE
  )
}

cXbubble1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    bubbleLabel="auto",
    circularType="bubble",
    colorBy="Continent",
    graphType="Circular",
    hierarchy=list("Country"),
    legendColumns=4,
    legendPosition="bottom",
    theme="paulTol",
    title="Annual CO2 Emmisions in 2018",
    xAxis=list("CO2")
  )
}

cXbubble2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    bubbleLabel="auto",
    bubbleOutlineColor="rgba(0,0,0,0)",
    circularType="bubble",
    colorBy="Continent",
    colorScheme="Prism",
    graphType="Circular",
    hierarchy=list("Continent", "Country"),
    legendColumns=4,
    legendPosition="top",
    showLegend=FALSE,
    title="Annual CO2 Emmisions in 2018",
    xAxis=list("CO2")
  )
}

cXbubble3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    bubbleColor="rgba(0,0,0,0)",
    bubbleLabel="first",
    bubbleLabelLineType="arch",
    bubbleLabelPosition="top",
    bubbleOutlineColor="rgba(0,0,0,0)",
    circularType="bubble",
    colorBy="Continent",
    colorScheme="Viridis",
    graphType="Circular",
    hierarchy=list("Continent", "Country"),
    legendColumns=4,
    legendPosition="top",
    showLegend=FALSE,
    title="Annual CO2 Emmisions in 2018",
    xAxis=list("CO2"),
    afterRender=list(list("modifyLabelCoordinates", list(list("Central America", -100, 100, true))), list("modifyLabelCoordinates", list(list("South America", 10, -50, true))), list("modifyLabelCoordinates", list(list("North America", 10, -50))))
  )
}

cXbubble4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    bubbleColor="rgba(0,0,0,0)",
    bubbleLabel="first",
    bubbleLabelLineType="line",
    bubbleLabelPosition="top",
    bubbleOutlineColor="rgba(0,0,0,0)",
    circularType="bubble",
    colorBy="Continent",
    colorScheme="Behance",
    graphType="Circular",
    hierarchy=list("Continent", "Country"),
    legendColumns=4,
    legendPosition="top",
    showLegend=TRUE,
    title="Annual CO2 Emmisions in 2018",
    xAxis=list("CO2"),
    afterRender=list(list("modifyLabelCoordinates", list(list("Central America", -100, 100, true))), list("modifyLabelCoordinates", list(list("South America", 10, -50, true))), list("modifyLabelCoordinates", list(list("North America", 10, -50))))
  )
}

cXbullet1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bullet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    bulletTargetVarName="V5",
    dataTextColor="#000000",
    dataValuesPosition="inside",
    graphOrientation="horizontal",
    graphType="Bullet",
    rangeColors=list("#777777", "#AAAAAA", "#DDDDDD"),
    rangeStack=list("V2", "V3", "V4"),
    showDataValues=TRUE,
    showLegend=FALSE,
    xAxis=list("V1")
  )
}

cXbullet2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bullet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    bulletTargetVarColor="#3F3F3F",
    bulletTargetVarName="V5",
    colors=list("#3F3F3F"),
    graphOrientation="vertical",
    graphType="Bullet",
    layoutAdjust=TRUE,
    layoutTopology="1X6",
    rangeColors=list("#945D55", "#C4A285", "#EBE7DE"),
    rangeStack=list("V2", "V3", "V4"),
    segregateSamplesBy=list("sample"),
    showDataValues=TRUE,
    smpTextRotate=90,
    stripShow=FALSE,
    xAxis=list("V1"),
    xAxisTextScaleFontFactor=0.6
  )
}

cXbullet3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-movies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-movies-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="solid",
    bulletWidthRatio=1,
    colorBy="Color",
    colors=list("rgb(250,165,44)", "rgb(254,225,60)", "rgb(253,243,169)"),
    fontName="Waltograph",
    fontsExternal=list(list(name="Waltograph", url="https://www.canvasxpress.org/assets/fonts/waltograph42.otf")),
    graphOrientation="vertical",
    graphType="Bullet",
    marginBottom=0,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    plotBackgroundColor="rgb(48,114,148)",
    rangeColorTransparency=1,
    rangeColors=list("rgb(48,126,164)"),
    showLegend=FALSE,
    smpTextColor="rgb(255,255,255)",
    smpTextRotate=30,
    smpTextScaleFontFactor=2,
    title="Friendship, Love, Family",
    titleAlign="center",
    titleColor="rgb(254,225,60)",
    titleScaleFontFactor=2.5,
    xAxis=list("Topic"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbullet4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bullet2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    bulletTargetVarName="Target",
    colors=list("#305DCB", "#E4EFFD", "#ADCFFA", "#73AFF8"),
    dataTextColor="#FFFFFF",
    dataValuesPosition="inside",
    graphOrientation="horizontal",
    graphType="Bullet",
    rangeColors=list("#73AFF8", "#ADCFFA", "#E4EFFD"),
    rangeStack=list("Low", "Average", "High"),
    showDataValues=TRUE,
    xAxis=list("Value")
  )
}

cXbullet5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bullet3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    barType="bullet",
    bulletStyle="roundGradient",
    bulletTargetType="openCircle",
    bulletTargetVarName="Target",
    bulletTargetWidthRatio=0.2,
    bulletWidthRatio=0.5,
    colors=list("#9422F5"),
    dataTextColor="#FFFFFF",
    dataTextScaleFontFactor=0.8,
    dataValuesPosition="inside",
    graphOrientation="horizontal",
    graphType="Bullet",
    layoutAdjust=TRUE,
    layoutSpacing=20,
    layoutTopology="3X1",
    rangeColors=list("#FFFFFF", "#F2F2F2", "#D8D8D8"),
    rangeStack=list("Bad", "Acceptable", "Good"),
    rangeStackShow=TRUE,
    segregateSamplesBy=list("sample"),
    showDataValues=TRUE,
    showLegend=FALSE,
    showSampleNames=FALSE,
    stripBackgroundColor="#FFFFFF",
    stripTextAlign="left",
    stripTextColor="#000000",
    xAxis=list("Value"),
    xAxis2Show=TRUE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXbullet6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bulletProgress-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-bulletProgress-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    background="rgb(20,26,38)",
    backgroundType="solid",
    bulletStyle="progress",
    colorBy="Type",
    colors=list("rgb(200,150,225)", "rgb(240,170,90)", "rgb(150,160,175)", "rgb(80,160,235)", "rgb(150,160,180)", "rgb(90,200,120)", "rgb(240,120,105)"),
    dataTextFontStyle="bold",
    foreground="rgb(235,240,248)",
    graphOrientation="horizontal",
    graphType="Bullet",
    marginTop=40,
    objectBorderColor="rgba(0,0,0,0)",
    plotBackgroundColor="rgb(20,26,38)",
    progressWidthRatio=0.28,
    showDataValues=TRUE,
    showLegend=FALSE,
    smpTextColor="rgb(235,240,248)",
    title="NGS Data Types",
    titleAlign="left",
    titleColor="rgb(150,160,180)",
    titleScaleFontFactor=1.4,
    xAxis=list("Samples"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE,
    yAxisGridMajorShow=FALSE
  )
}

cXchord1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    circularArc=360,
    circularRotate=0,
    circularType="chord",
    colors=list("#000000", "#FFDD89", "#957244", "#F26223"),
    graphType="Circular",
    higlightGreyOut=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    rAxisTickFormat=list("%sK", " / 1000"),
    showTransition=FALSE,
    title="Simple Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    chordColor="largest",
    circularArc=360,
    circularRotate=180,
    circularType="chord",
    graphType="Circular",
    higlightGreyOut=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    rAxisTickFormat=list("%sK", " / 1000"),
    showTransition=FALSE,
    title="Rotated Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    circularArc=180,
    circularRotate=-90,
    circularType="chord",
    graphType="Circular",
    higlightGreyOut=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    rAxisTickFormat=list("%sK", " / 1000"),
    showLegend=FALSE,
    showTransition=FALSE,
    title="Rotated Half Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-rrobin-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    chordColor="largest",
    chordScaleShow=FALSE,
    circularArc=360,
    circularRotate=180,
    circularType="chord",
    graphType="Circular",
    higlightGreyOut=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    title="Four way Round Robin Tournament"
  )
}

cXcircular1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularConnections=list(list("rgb(255,0,0)", "s1", "s15"), list("rgb(0,255,0)", "s25", "s120"), list("rgb(255,0,0)", "s34", "s2"), list("rgb(255,0,0)", "s47", "s69"), list("rgb(255,0,0)", "s15", "s74"), list("rgb(0,120,0)", "s57", "s87"), list("rgb(255,34,0)", "s54", "s118"), list("rgb(255,0,100)", "s78", "s18"), list("rgb(255,134,0)", "s90", "s48"), list("rgb(120,0,0)", "s120", "s68"), list("rgb(255,0,0)", "s131", "s92"), list("rgb(0,255,0)", "s148", "s119"), list("rgb(0,0,255)", "s10", "s14"), list("rgb(255,0,0)", "s56", "s6"), list("rgb(255,0,0)", "s98", "s90"), list("rgb(255,0,0)", "s113", "s20")),
    circularTrackGraphType=list("dot", "heatmap", "bar"),
    circularTrackGraphWeight=list(50, 25, 25),
    circularTrackName=list(1, 2, 2, 3),
    graphType="Circular",
    legendColumns=4,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    segregateSamplesBy=list("Species"),
    smpOverlays=list("Species"),
    title="Iris flower data set (1D Circular Plot)",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXcircular2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-circular2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-circular2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-circular2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularConnections=list(list("rgb(0,0,255)", "setosa", 42, "versicolor", 35, 1, 2), list("rgb(0,255,0)", "virginica", 26, "versicolor", 15, 4, 8), list("rgb(120,0,255)", "setosa", 36, "virginica", 5, 6, 9), list("rgb(0,40,255)", "versicolor", 9, "versicolor", 18, 2, 5), list("rgb(80,0,55)", "versicolor", 14, "setosa", 9, 3, 4), list("rgb(0,55,140)", "setosa", 12, "setosa", 41, 5, 2), list("rgb(255,0,0)", "virginica", 25, "setosa", 3, 2, 6)),
    circularTrackGraphWeight=list(25, 25, 25, 25),
    circularTrackName=list("", "A", "B", "B", "C"),
    graphType="Circular",
    legendColumns=4,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    rAxis="Number",
    rAxisPercentShow=FALSE,
    segregateSamplesBy=list("Species"),
    title="Iris flower data set (2D Circular Plot)",
    xAxis=list("Number", "Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXcircular3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularConnections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    circularTrackGraphType=list("heatmap"),
    colorSmpDendrogramBy="Species",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    samplesClustered=TRUE,
    smpDendrogramPosition="outside",
    smpOverlays=list("Species"),
    title="Iris flower data set (Dendrogram Outside)",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXcircular4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularConnections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    circularTrackGraphType=list("heatmap"),
    circularTrackOrder=list("labels", "overlays", "dendrogram", "labels", "data"),
    colorSmpDendrogramBy="Species",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    samplesClustered=TRUE,
    smpDendrogramPosition="inside",
    smpOverlays=list("Species"),
    title="Iris flower data set (Dendrogram Inside)",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXcircular5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArcSectorSeparation=3,
    circularConnections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    graphType="Circular",
    showIdeogram=TRUE,
    title="Default Settings",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40", "V41", "V42", "V43", "V44", "V45", "V46", "V47", "V48", "V49", "V50", "V51", "V52", "V53", "V54", "V55", "V56", "V57", "V58", "V59", "V60", "V61", "V62", "V63", "V64", "V65", "V66", "V67", "V68", "V69", "V70", "V71", "V72", "V73", "V74", "V75", "V76", "V77", "V78", "V79", "V80", "V81", "V82", "V83", "V84", "V85", "V86", "V87", "V88", "V89", "V90", "V91", "V92", "V93", "V94", "V95", "V96", "V97", "V98", "V99", "V100", "V101", "V102", "V103", "V104", "V105", "V106", "V107", "V108", "V109", "V110", "V111", "V112", "V113", "V114", "V115", "V116", "V117", "V118", "V119", "V120", "V121", "V122", "V123", "V124", "V125", "V126", "V127", "V128", "V129", "V130", "V131", "V132", "V133", "V134", "V135", "V136", "V137", "V138", "V139", "V140", "V141", "V142", "V143", "V144", "V145", "V146", "V147", "V148", "V149", "V150", "V151", "V152", "V153", "V154", "V155", "V156", "V157", "V158", "V159", "V160", "V161", "V162", "V163", "V164", "V165", "V166", "V167", "V168", "V169", "V170", "V171", "V172", "V173", "V174", "V175", "V176", "V177", "V178", "V179", "V180", "V181", "V182", "V183", "V184", "V185", "V186", "V187", "V188", "V189", "V190", "V191", "V192", "V193", "V194", "V195", "V196", "V197", "V198", "V199", "V200")
  )
}

cXcircular6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularAnchors2Align="inside",
    circularAnchorsAlign="outside",
    circularArcSectorSeparation=3,
    circularCenterProportion=0.5,
    circularConnections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    circularLabelsAlign="inside",
    circularTrackGraphType=list("heatmap", "stacked"),
    circularTrackOrder=list("chromosomes", "Annt1", "Lev : 1", "anchors", "labels", "ideogram", "anchors2", "Lev : 4"),
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    graphType="Circular",
    segregateSamplesBy=list("Factor4"),
    showIdeogram=TRUE,
    title="Custom Plotting Order",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40", "V41", "V42", "V43", "V44", "V45", "V46", "V47", "V48", "V49", "V50", "V51", "V52", "V53", "V54", "V55", "V56", "V57", "V58", "V59", "V60", "V61", "V62", "V63", "V64", "V65", "V66", "V67", "V68", "V69", "V70", "V71", "V72", "V73", "V74", "V75", "V76", "V77", "V78", "V79", "V80", "V81", "V82", "V83", "V84", "V85", "V86", "V87", "V88", "V89", "V90", "V91", "V92", "V93", "V94", "V95", "V96", "V97", "V98", "V99", "V100", "V101", "V102", "V103", "V104", "V105", "V106", "V107", "V108", "V109", "V110", "V111", "V112", "V113", "V114", "V115", "V116", "V117", "V118", "V119", "V120", "V121", "V122", "V123", "V124", "V125", "V126", "V127", "V128", "V129", "V130", "V131", "V132", "V133", "V134", "V135", "V136", "V137", "V138", "V139", "V140", "V141", "V142", "V143", "V144", "V145", "V146", "V147", "V148", "V149", "V150", "V151", "V152", "V153", "V154", "V155", "V156", "V157", "V158", "V159", "V160", "V161", "V162", "V163", "V164", "V165", "V166", "V167", "V168", "V169", "V170", "V171", "V172", "V173", "V174", "V175", "V176", "V177", "V178", "V179", "V180", "V181", "V182", "V183", "V184", "V185", "V186", "V187", "V188", "V189", "V190", "V191", "V192", "V193", "V194", "V195", "V196", "V197", "V198", "V199", "V200")
  )
}

cXcircular7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArcSectorRadius=list(1, 1.05, 1.1, 1.15),
    circularArcSectorSeparation=3,
    circularConnections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    circularTrackGraphType=list("heatmap", "area", "stacked", "dot", "bar"),
    circularTrackOrder=list("scale", "ideogram", "labels", "anchors", "Annt2", "Annt1", "Lev : 1", "Lev : 2", "Lev : 3", "Lev : 4"),
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    graphType="Circular",
    segregateSamplesBy=list("Factor4"),
    showIdeogram=TRUE,
    title="Custom radi for Chromosomes and Custom Plotting Order",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40", "V41", "V42", "V43", "V44", "V45", "V46", "V47", "V48", "V49", "V50", "V51", "V52", "V53", "V54", "V55", "V56", "V57", "V58", "V59", "V60", "V61", "V62", "V63", "V64", "V65", "V66", "V67", "V68", "V69", "V70", "V71", "V72", "V73", "V74", "V75", "V76", "V77", "V78", "V79", "V80", "V81", "V82", "V83", "V84", "V85", "V86", "V87", "V88", "V89", "V90", "V91", "V92", "V93", "V94", "V95", "V96", "V97", "V98", "V99", "V100", "V101", "V102", "V103", "V104", "V105", "V106", "V107", "V108", "V109", "V110", "V111", "V112", "V113", "V114", "V115", "V116", "V117", "V118", "V119", "V120", "V121", "V122", "V123", "V124", "V125", "V126", "V127", "V128", "V129", "V130", "V131", "V132", "V133", "V134", "V135", "V136", "V137", "V138", "V139", "V140", "V141", "V142", "V143", "V144", "V145", "V146", "V147", "V148", "V149", "V150", "V151", "V152", "V153", "V154", "V155", "V156", "V157", "V158", "V159", "V160", "V161", "V162", "V163", "V164", "V165", "V166", "V167", "V168", "V169", "V170", "V171", "V172", "V173", "V174", "V175", "V176", "V177", "V178", "V179", "V180", "V181", "V182", "V183", "V184", "V185", "V186", "V187", "V188", "V189", "V190", "V191", "V192", "V193", "V194", "V195", "V196", "V197", "V198", "V199", "V200")
  )
}

cXcircular8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-circularNoData-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-circularNoData-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArcSectorSeparation=1,
    circularConnections=list(list("EA832040", "EA1011925A27"), list("EA832040", "EA832496"), list("EA832040", "EA832497"), list("EA832039", "EA1011925A19"), list("EA832039", "EA832486"), list("EA832039", "EA832492"), list("EA832044", "EA1011925A3"), list("EA832045", "EA1011925A5"), list("EA832048", "EA1011925A10"), list("EA832048", "EA832502"), list("EA832048", "EA832503"), list("EA832051", "EA1011925A9"), list("EA832051", "EA832507"), list("EA832051", "EA832509"), list("EA832050", "EA1011925A12"), list("EA1011925A18", "EA832483"), list("EA1011925A18", "EA832491"), list("EA1011925A19", "EA832039"), list("EA1011925A19", "EA832486"), list("EA1011925A19", "EA832492"), list("EA1011925A23", "EA832484"), list("EA1011925A23", "EA832501"), list("EA1011925A24", "EA832489"), list("EA1011925A25", "EA832498"), list("EA1011925A27", "EA832040"), list("EA1011925A27", "EA832496"), list("EA1011925A27", "EA832497"), list("EA1011925A30", "EA832487"), list("EA1011925A30", "EA832488"), list("EA1011925A1", "EA832521"), list("EA1011925A1", "EA832525"), list("EA1011925A2", "EA832510"), list("EA1011925A2", "EA832511"), list("EA1011925A3", "EA832044"), list("EA1011925A4", "EA832514"), list("EA1011925A4", "EA832515"), list("EA1011925A5", "EA832045"), list("EA1011925A6", "EA832519"), list("EA1011925A7", "EA832508"), list("EA1011925A7", "EA832513"), list("EA1011925A8", "EA836531"), list("EA1011925A8", "EA832504"), list("EA1011925A8", "EA832524"), list("EA1011925A9", "EA832051"), list("EA1011925A9", "EA832507"), list("EA1011925A9", "EA832509"), list("EA1011925A10", "EA832048"), list("EA1011925A10", "EA832502"), list("EA1011925A10", "EA832503"), list("EA1011925A11", "EA832523"), list("EA1011925A12", "EA832050"), list("EA1011925A13", "EA832506"), list("EA1011925A13", "EA832527"), list("EA1011925A14", "EA832520"), list("EA1011925A15", "EA832517"), list("EA1011925A15", "EA832518"), list("EA1011925A16", "EA836533"), list("EA1011925A16", "EA832475"), list("EA1011925A16", "EA832526"), list("EA832475", "EA836533"), list("EA832475", "EA1011925A16"), list("EA832475", "EA832526"), list("EA832476", "EA832480"), list("EA832479", "EA832490"), list("EA832480", "EA832476"), list("EA832481", "EA836505"), list("EA832481", "EA832493"), list("EA832482", "EA832499"), list("EA832483", "EA1011925A18"), list("EA832483", "EA832491"), list("EA832484", "EA1011925A23"), list("EA832484", "EA832501"), list("EA832486", "EA1011925A19"), list("EA832486", "EA832039"), list("EA832486", "EA832492"), list("EA832487", "EA1011925A30"), list("EA832487", "EA832488"), list("EA832488", "EA1011925A30"), list("EA832488", "EA832487"), list("EA832489", "EA1011925A24"), list("EA832490", "EA832479"), list("EA832491", "EA1011925A18"), list("EA832491", "EA832483"), list("EA832492", "EA1011925A19"), list("EA832492", "EA832039"), list("EA832492", "EA832486"), list("EA832493", "EA836505"), list("EA832493", "EA832481"), list("EA832494", "EA832495"), list("EA832495", "EA832494"), list("EA832496", "EA1011925A27"), list("EA832496", "EA832040"), list("EA832496", "EA832497"), list("EA832497", "EA1011925A27"), list("EA832497", "EA832040"), list("EA832497", "EA832496"), list("EA832498", "EA1011925A25"), list("EA832498", "EA832500"), list("EA832499", "EA832482"), list("EA832500", "EA832498"), list("EA832501", "EA1011925A23"), list("EA832501", "EA832484"), list("EA832502", "EA1011925A10"), list("EA832502", "EA832048"), list("EA832502", "EA832503"), list("EA832503", "EA1011925A10"), list("EA832503", "EA832048"), list("EA832503", "EA832502"), list("EA832504", "EA836531"), list("EA832504", "EA1011925A8"), list("EA832504", "EA832524"), list("EA832506", "EA1011925A13"), list("EA832506", "EA832527"), list("EA832507", "EA1011925A9"), list("EA832507", "EA832051"), list("EA832507", "EA832509"), list("EA832508", "EA1011925A7"), list("EA832508", "EA832513"), list("EA832509", "EA1011925A9"), list("EA832509", "EA832051"), list("EA832509", "EA832507"), list("EA832510", "EA1011925A2"), list("EA832510", "EA832511"), list("EA832511", "EA1011925A2"), list("EA832511", "EA832510"), list("EA832513", "EA1011925A7"), list("EA832513", "EA832508"), list("EA832514", "EA1011925A4"), list("EA832514", "EA832515"), list("EA832515", "EA1011925A4"), list("EA832515", "EA832514"), list("EA832517", "EA1011925A15"), list("EA832517", "EA832518"), list("EA832518", "EA1011925A15"), list("EA832518", "EA832517"), list("EA832519", "EA1011925A6"), list("EA832520", "EA1011925A14"), list("EA832521", "EA1011925A1"), list("EA832521", "EA832525"), list("EA832523", "EA1011925A11"), list("EA832524", "EA836531"), list("EA832524", "EA1011925A8"), list("EA832524", "EA832504"), list("EA832525", "EA1011925A1"), list("EA832525", "EA832521"), list("EA832526", "EA836533"), list("EA832526", "EA1011925A16"), list("EA832526", "EA832475"), list("EA832527", "EA1011925A13"), list("EA832527", "EA832506"), list("EA836488", "EA836513"), list("EA836488", "EA836514"), list("EA836494", "EA836528"), list("EA836494", "EA836529"), list("EA836492", "EA836493"), list("EA836496", "EA836535"), list("EA836496", "EA836536"), list("EA836493", "EA836492"), list("EA836533", "EA836534"), list("EA836533", "EA1011925A16"), list("EA836533", "EA832475"), list("EA836533", "EA832526"), list("EA836501", "EA836502"), list("EA836497", "EA836498"), list("EA836502", "EA836501"), list("EA836505", "EA832481"), list("EA836505", "EA832493"), list("EA836503", "EA836510"), list("EA836507", "EA836508"), list("EA836517", "EA836518"), list("EA836511", "EA836512"), list("EA836515", "EA836516"), list("EA836516", "EA836515"), list("EA836498", "EA836497"), list("EA836508", "EA836507"), list("EA836512", "EA836511"), list("EA836499", "EA836500"), list("EA836500", "EA836499"), list("EA836513", "EA836488"), list("EA836513", "EA836514"), list("EA836514", "EA836488"), list("EA836514", "EA836513"), list("EA836509", "EA836504"), list("EA836510", "EA836503"), list("EA836504", "EA836509"), list("EA836518", "EA836517"), list("EA836528", "EA836494"), list("EA836528", "EA836529"), list("EA836529", "EA836494"), list("EA836529", "EA836528"), list("EA836530", "EA836531"), list("EA836526", "EA836527"), list("EA836535", "EA836496"), list("EA836535", "EA836536"), list("EA836523", "EA836524"), list("EA836536", "EA836496"), list("EA836536", "EA836535"), list("EA836539", "EA836540"), list("EA836540", "EA836539"), list("EA836524", "EA836523"), list("EA836521", "EA836522"), list("EA836522", "EA836521"), list("EA836537", "EA836538"), list("EA836538", "EA836537"), list("EA836531", "EA836530"), list("EA836531", "EA1011925A8"), list("EA836531", "EA832504"), list("EA836531", "EA832524"), list("EA836534", "EA836533"), list("EA836527", "EA836526")),
    circularLabelsAlign="inside",
    circularTrackOrder=list("subject", "labels", "sample"),
    colorScheme="Favorite",
    graphType="Circular",
    overlayLevelOrientation="perpendicular",
    overlayScaleFontFactor=1,
    segregateSamplesBy=list("subject"),
    showLegend=FALSE,
    smpTextScaleFontFactor=0.3,
    xAxis=list("var1"),
    xAxisShow=FALSE
  )
}

cXcontour1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-volcano-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    showContourLevel=TRUE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    subtitle="datasets - volcano",
    title="Topographic Information on Auckland's Maunga Whau Volcano",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40", "V41", "V42", "V43", "V44", "V45", "V46", "V47", "V48", "V49", "V50", "V51", "V52", "V53", "V54", "V55", "V56", "V57", "V58", "V59", "V60", "V61"),
    afterRender=list(list("createContour", list()))
  )
}

cXcontour2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-contour-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourType="normal",
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    title="Basic Contour Plot",
    xAxis=list("v1", "v2", "v3", "v4", "v5"),
    afterRender=list(list("createContour", list()))
  )
}

cXcontour3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-contour2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourFilled=TRUE,
    graphType="ScatterBubble2D",
    showContourLevel=TRUE,
    title="Basic Contour Plot",
    xAxis=list("s1"),
    yAxis=list("s2"),
    zAxis=list("s3"),
    afterRender=list(list("createContour", list()))
  )
}

cXcontour4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-contour3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourFilled=TRUE,
    contourType="normal",
    graphType="ScatterBubble2D",
    title="Custom Contour Plot",
    xAxis=list("s1"),
    yAxis=list("s2"),
    zAxis=list("s3"),
    afterRender=list(list("createContour", list()))
  )
}

cXcontour5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-contour4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourType="normal",
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    lineType="spline",
    showContourLevel=FALSE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    xAxis=list("v1", "v2", "v3", "v4", "v5", "v6", "v7", "v8"),
    afterRender=list(list("createContour", list()))
  )
}

cXcontour6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-contourdensity-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Contour",
    showContourDataPoints=TRUE,
    showContourLevel=FALSE,
    xAxis=list("eruptions"),
    yAxis=list("waiting")
  )
}

cXcorrelation1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    graphType="Correlation",
    title="Correlation Plot",
    xAxis=list("V1", "V2", "V3", "V4"),
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    correlationType="circle",
    graphType="Correlation",
    title="Correlation Plot",
    xAxis=list("V1", "V2", "V3", "V4"),
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAnchorLegend=TRUE,
    correlationAnchorLegendAlignWidth=20,
    correlationAxis="variables",
    graphType="Correlation",
    title="Correlation Plot",
    xAxis=list("V1", "V2", "V3", "V4"),
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcarst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    title="Heatmap - Correlation",
    xAxis=list("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
    afterRender=list(list("createHeatmapCorrelation", list()), list("clusterVariables", list()), list("clusterSamples", list()))
  )
}

cXdashboard1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Pclass"),
    histogramBins=FALSE,
    stackBy="Survived",
    summaryType="count",
    theme="lastAirBenderFire",
    xAxis=list("Age"),
    afterRender=list(list("createHistogram", list()), list("createDOE", list()))
  )
}

cXdashboard2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mpg2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("model"),
    histogramBins=FALSE,
    histogramType="stacked",
    theme="gameOfThronesStannis",
    xAxis=list("displ", "cyl", "cty", "hwy"),
    afterRender=list(list("createHistogram", list()), list("createDOE", list()))
  )
}

cXdashboard3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scents-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-scents-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    histogramBins=FALSE,
    showTransition=FALSE,
    smpTextRotate=90,
    smpTitle="Smoking Status",
    theme="lastAirBenderWater",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3", "S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("groupSamples", list("Smoker")), list("createDOE", list()))
  )
}

cXdashboard4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-body2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-body2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=FALSE,
    showTransition=FALSE,
    xAxis=list("Weight"),
    yAxis=list("Height"),
    afterRender=list(list("createDOE", list()))
  )
}

cXdashboard5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="gameOfThronesTargaryen",
    xAxis=list("Survival"),
    yAxis=list("Survival-Censor"),
    afterRender=list(list("switchSmpToAnnotation", list("Age")), list("switchSmpToAnnotation", list("Clin2")), list("switchSmpToAnnotation", list("Clin3")), list("addKMPlot", list()), list("createDOE", list()))
  )
}

cXdashboard6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bc-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asDOE=TRUE,
    colorBy="Stay Home Sick",
    graphType="Map",
    histogramBins=FALSE,
    layoutConfig=list(list(size="2X2")),
    legendPosition="top",
    mapId="bc",
    mapPropertyId="LOCAL_HLTH_AREA_CODE",
    topoJSON="https://www.canvasxpress.org/data/json/bc.json",
    xAxis=list("No Preventive Actions", "Physical Distancing", "Stay Home Sick")
  )
}

cXdensity1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    showHistogram=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("weight")
  )
}

cXdensity2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    densityPosition="normal",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="density",
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    densityPosition="stacked",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="density",
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    densityPosition="filled",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="density",
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    densityPosition="stacked",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showFilledHistogramDensity=TRUE,
    showHistogram=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    xAxis=list("weight")
  )
}

cXdensity8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    showFilledHistogramDensity=TRUE,
    showHistogram="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("weight")
  )
}

cXdensity11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-density2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-density2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    histogramStat="count",
    showFilledHistogramDensity=TRUE,
    showHistogramBars=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxis=list("Weight-Fem"),
    xAxisHistogramHeight=150,
    xAxisHistogramShow=TRUE,
    yAxis=list("Weight-Mas"),
    yAxisHistogramHeight=150,
    yAxisHistogramShow=TRUE
  )
}

cXdensity12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    showFilledHistogramDensity=TRUE,
    showHistogram=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXdensity13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    segregateVariablesBy=list("Species"),
    showFilledHistogramDensity=TRUE,
    showHistogram="Species",
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXdensity14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogram="sample",
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXdensity15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramStat="count",
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogram="Species",
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXdonnut1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=0,
    circularType="sunburst",
    colorBy="Month",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Month"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Simple Donnut",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("Sales")
  )
}

cXdonnut2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=0,
    circularType="sunburst",
    colorBy="Quarter",
    colorScheme="RdYlBu",
    graphType="Circular",
    hierarchy=list("Quarter", "Month"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Donnut with two levels",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("Sales")
  )
}

cXdotline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="DotLine",
    legendColumns=2,
    legendPosition="bottom",
    lineThickness=2,
    lineType="spline",
    smpTextRotate=45,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxisGridMajorColor="rgb(0,0,0)"
  )
}

cXdotline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="DotLine",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXdotline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="DotLine",
    legendColumns=2,
    legendPosition="bottom",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXdotplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Dotplot",
    lineType="spline",
    showSmpOverlaysLegend=TRUE,
    smpOverlayProperties=list(Factor4=list(color="blue", showLegend="True", thickness=50, type="Bar"), Factor5=list(color="grey", showLegend="True", thickness=50, type="Bar"), Factor6=list(color="red", showLegend="True", thickness=50, type="Bar")),
    smpOverlays=list("Factor1", "Factor2", "Factor3", "Factor4", "Factor5", "Factor6"),
    smpTextRotate=45,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dotplot Graph",
    xAxis=list("V1", "V2", "V3", "V4"),
    xAxisTickFormat="%.0f Mil."
  )
}

cXdotplot2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTextFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Dotplot",
    jitter=TRUE,
    marginBottom=30,
    smpTextFontStyle="italic",
    smpTextRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")), list("segregateSamples", list("Species")))
  )
}

cXdotplot3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Henderson, H. V. and Velleman, P. F. (1981), Building Regression Models Interactively. Biometrics, 37, 391-411.",
    citationFontStyle="italic",
    graphType="Dotplot",
    jitter=TRUE,
    legendColumns=2,
    legendInside=TRUE,
    legendPosition="bottomRight",
    showErrorBars=FALSE,
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    xAxis=list("MPG", "Weight", "Drive_Ratio", "Horsepower", "Displacement", "Cylinders"),
    afterRender=list(list("groupSamples", list("Country")))
  )
}

cXdotplot4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="wilkinson",
    dataPointSizeScaleFactor=3,
    dataTextScaleFontFactor=0.6,
    dotplotType="stacked",
    graphType="Dotplot",
    plotStyle="open",
    showDataValues=TRUE,
    smpTitle="School",
    sortDir="descending",
    title="Gender Earnings Disparity",
    xAxis=list("Women", "Men"),
    xAxis2Title="Annual Salary",
    xAxisGridMinorShow=FALSE,
    xAxisTickFormat="$%sK",
    xAxisTitle="Annual Salary",
    afterRender=list(list("sortSamplesByVariable", list("Men")))
  )
}

cXdotplot5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    binned=TRUE,
    errorBarsColor="red",
    errorBarsType="standardDeviation",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    jitter=FALSE,
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    binned=TRUE,
    colorBy="dose",
    colorScheme="GGPlot",
    errorBarsColor="red",
    errorBarsType="standardDeviation",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    jitter=FALSE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    shapeBy="supp",
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    objectBorderColor="rgba(0,0,0)",
    panelBackgroundColor="#E5E5E5",
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    objectBorderColor="rgba(0,0,0)",
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    objectBorderColor="rgba(0,0,0)",
    panelBackgroundColor="#E5E5E5",
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    objectBorderColor="rgba(0,0,0)",
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    binned=TRUE,
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    jitter=FALSE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXdotplot12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lotr-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-lotr-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundImage="https://www.canvasxpress.org/assets/images/lotr-background.png",
    backgroundType="image",
    colorBy="Character",
    colors=list("rgb(45,24,18)", "rgb(95,50,31)", "rgb(22,25,16)", "rgb(56,54,25)", "rgb(165,113,76)", "rgb(116,50,36)", "rgb(170,99,47)", "rgb(195,152,60)", "rgb(0,0,0)"),
    dotplotOutlineThreshold=1,
    dotplotType="transition",
    fontName="Bilbo",
    fonts=list("Bilbo"),
    graphOrientation="horizontal",
    graphType="Dotplot",
    groupingFactors=list("Character"),
    images=list("https://www.canvasxpress.org/assets/images/Frodo.png", "https://www.canvasxpress.org/assets/images/Gandalf.png", "https://www.canvasxpress.org/assets/images/Merry.png", "https://www.canvasxpress.org/assets/images/Pippin.png", "https://www.canvasxpress.org/assets/images/Sam.png", "https://www.canvasxpress.org/assets/images/Aragorn.png", "https://www.canvasxpress.org/assets/images/Boromir.png", "https://www.canvasxpress.org/assets/images/Gimli.png", "https://www.canvasxpress.org/assets/images/Legolas.png"),
    layoutAdjust=TRUE,
    layoutTopology="1X3",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    marginBottom=80,
    marginLeft=60,
    marginRight=60,
    marginTop=180,
    maxFontSize=40,
    objectColorTransparency=0.85,
    segregateSamplesBy=list("Film"),
    showErrorBars=FALSE,
    showLegend=FALSE,
    sizeBy="Words",
    sizeByContinuous=TRUE,
    sizeByShowLegend=FALSE,
    sizes=list(5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55),
    smpLabelImage=TRUE,
    smpLabelImageRound=TRUE,
    smpTextScaleFontFactor=0.9,
    sortData=list(list("cat", "smp", "Character"), list("cat", "smp", "Chapter Name")),
    stripBackgroundBorderColor="rgba(0,0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextFontStyle="bold",
    stripTextScaleFontFactor=1.2,
    title="Words per Chapter by Character",
    titleAlign="center",
    titleFontStyle="bold",
    titleScaleFontFactor=1.6,
    xAxis=list("Chapter"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXdotplot13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-audrey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-audrey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundImage="https://www.canvasxpress.org/assets/images/Audrey.jpg",
    backgroundType="image",
    colorBy="Type",
    colorScheme="Greens",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("Year"),
    isGraphTime=TRUE,
    jitter=FALSE,
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=2,
    legendTitleScaleFontFactor=2,
    marginLeft=150,
    marginRight=150,
    objectBorderColor="rgba(0,0,0)",
    showErrorBars=FALSE,
    showLegendTitle=FALSE,
    smpLabelInterval=1,
    smpTextRotate=90,
    timeFormat="year",
    title="The Life and Films of Audrey Hepburn",
    xAxis=list("Number"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXdotplot14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-audrey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-audrey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Result",
    colorScheme="Greens",
    graphType="Dotplot",
    groupingFactors=list("Award"),
    jitter=FALSE,
    legendColumns=2,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    maxSmpStringLen=50,
    objectBorderColor="rgba(0,0,0)",
    showErrorBars=FALSE,
    showLegendTitle=FALSE,
    title="The Awards of Audrey Hepburn",
    xAxis=list("Year"),
    xAxis2Show=TRUE,
    xAxisShow=FALSE
  )
}

cXdotplot15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-timeliner-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-timeliner-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Color",
    colorScheme="LastAirBenderWater",
    decorations=list(line=list(list(align="left", color="rgba(0,0,0,0.5)", value=1, width=1))),
    graphOrientation="vertical",
    graphType="Dotplot",
    isGraphTime=TRUE,
    marginLeft=70,
    marginRight=70,
    objectColorTransparency=0.6,
    showLegend=FALSE,
    sizeBy="Size",
    sizes=list(5, 15, 25, 35, 70, 150),
    smpLabelInterval=4,
    smpTextRotate=90,
    timeFormat="isoDate",
    xAxis=list("Unit"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXdumbbell1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("grey", "blue", "pink"),
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    sortDir="ascending",
    title="Age Range by Gender",
    xAxis=list("Female", "Male"),
    xAxis2Show=TRUE,
    xAxisShow=FALSE,
    xAxisTitle2="Age"
  )
}

cXdumbbell2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("grey", "blue", "pink"),
    dataPointSizeScaleFactor=3.5,
    dataTextScaleFontFactor=0.6,
    graphOrientation="vertical",
    graphType="Dumbbell",
    highlightSmp=list("Russia"),
    legendColumns=2,
    legendPosition="bottom",
    plotStyle="open",
    showDataValues=TRUE,
    smpTextRotate=30,
    sortDir="ascending",
    subtitle="The age difference between men and women is largest in Russia",
    title="Age Range by Gender",
    titleFontStyle="bold",
    xAxis=list("Female", "Male"),
    xAxisTitle="Age"
  )
}

cXdumbbell3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    dataPointSizeScaleFactor=3,
    dataTextScaleFontFactor=0.5,
    dumbbellType="connected",
    graphOrientation="horizontal",
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    plotStyle="open",
    showDataValues=TRUE,
    sortDir="ascending",
    theme="wallStreetJournal",
    title="Age Range by Gender",
    titleFontStyle="bold",
    xAxis=list("Female", "Male"),
    xAxisTitle="Age"
  )
}

cXdumbbell4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    dumbbellType="cleveland",
    graphOrientation="vertical",
    graphType="Dumbbell",
    legendColumns=3,
    legendPosition="top",
    smpTextRotate=30,
    sortDir="ascending",
    title="Age Range by Gender",
    titleFontStyle="bold",
    xAxis=list("Female", "Male", "Combined"),
    xAxisTitle="Age"
  )
}

cXdumbbell5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    dataPointSizeScaleFactor=3,
    dataTextScaleFontFactor=0.5,
    dumbbellType="bullet",
    graphOrientation="horizontal",
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    plotStyle="open",
    showDataValues=TRUE,
    sortDir="ascending",
    title="Age Range by Gender",
    titleFontStyle="bold",
    xAxis=list("Female", "Male"),
    xAxisTitle="Age"
  )
}

cXdumbbell6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("grey", "blue", "pink"),
    dumbbellType="arrow",
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    sortDir="ascending",
    title="Age Range by Gender",
    xAxis=list("Female", "Male"),
    xAxis2Show=TRUE,
    xAxisShow=FALSE,
    xAxisTitle2="Age"
  )
}

cXdumbbell7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("grey", "blue", "pink"),
    dumbbellType="line",
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    sortDir="ascending",
    title="Age Range by Gender",
    xAxis=list("Female", "Male"),
    xAxis2Show=TRUE,
    xAxisShow=FALSE,
    xAxisTitle2="Age"
  )
}

cXdumbbell8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dumbbell2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colors=list("grey", "blue", "pink"),
    connectByColor="#ffffff",
    dataPointSizeScaleFactor=3,
    dumbbellType="lineConnected",
    graphOrientation="vertical",
    graphType="Dumbbell",
    legendColumns=2,
    legendPosition="bottom",
    smpTextRotate=30,
    sortDir="ascending",
    theme="wallStreetJournal",
    title="Age Range by Gender",
    xAxis=list("Female", "Male"),
    xAxisTitle="Age"
  )
}

cXfacet1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="rows",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXfacet2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Bar",
    layoutCollapse=TRUE,
    layoutType="rows",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateSamples", list("Factor1")), list("segregateVariables", list("Annt2")))
  )
}

cXfacet3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="cols",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateVariables", list("Annt2")))
  )
}

cXfacet4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="wrap",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXfacet5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="cols",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="rows",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="wrap",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=TRUE,
    layoutType="cols",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list("Opinion")))
  )
}

cXfish1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fish-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panel",
    colors=list("rgb(136,136,136)", "rgb(239,0,0)", "rgb(255,96,0)", "rgb(255,207,0)", "rgb(191,255,64)", "rgb(80,255,175)", "rgb(0,223,255)", "rgb(0,112,255)", "rgb(0,0,255)", "rgb(0,0,143)"),
    fishAxis=list(0, 150),
    fishParents=list(0, 1, 1, 3),
    fishShape="spline",
    fishTimepoints=list(0, 30, 75, 150),
    graphType="Fish",
    legendColumns=4,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    panelBackgroundColor="#ffe4c4",
    title="Sample1",
    xAxis=list("Founding", "Subclone 1", "Subclone 2", "Subclone 3")
  )
}

cXfish2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fish2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panelSolidGradient",
    colorSpectrum=list("bisque", "darkgoldenrod1", "darkorange3"),
    colors=list("rgb(136,136,136)", "rgb(239,0,0)", "rgb(255,96,0)", "rgb(255,207,0)", "rgb(191,255,64)", "rgb(80,255,175)", "rgb(0,223,255)", "rgb(0,112,255)", "rgb(0,0,255)", "rgb(0,0,143)"),
    fishAxis=list(0, 423),
    fishCloneLabels=list("DNMT3A,FLT3", "NPM1", "MET", "ETV6,WNK1-WAC,\nMYO18B"),
    fishParents=list(0, 1, 1, 3),
    fishShape="spline",
    fishTimepoints=list(0, 30, 200, 423),
    gradientOrientation="horizontal",
    graphType="Fish",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    varTextColor="green",
    varTextRotate=30,
    xAxis=list("C1", "C2", "C3", "C4")
  )
}

cXfish3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fish3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panelSolidGradient",
    colorSpectrum=list("#ffe4c4", "#ffb90f", "#cd6600"),
    colors=list("#1B9E77", "#D95F02", "#7570B3", "#E7298A"),
    fishAxis=list(0, 120),
    fishAxisLabels=list("Primary", "Post-AI"),
    fishParents=list(0, 1, 2, 1),
    fishShape="polygon",
    fishTimepoints=list(0, 120),
    gradientOrientation="horizontal",
    graphType="Fish",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    title="BRC32",
    xAxis=list("S1", "S2", "S3", "S4")
  )
}

cXfish4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fish4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panelSolidGradient",
    colorSpectrum=list("#ffe4c4", "#ffb90f", "#cd6600"),
    colors=list("#888888", "#EF0000", "#8FFF40", "#FF6000", "#50FFAF", "#FFCF00", "#0070FF"),
    fishAxis=list(0, 34, 69, 187, 334, 505, 530, 650, 750),
    fishParents=list(0, 1, 1, 1, 3, 4, 0),
    fishSeparateIndependentClones=TRUE,
    fishShape="spline",
    fishTimepoints=list(0, 34, 69, 187, 334, 505, 530),
    gradientOrientation="horizontal",
    graphType="Fish",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    xAxis=list("C1", "C2", "C3", "C4", "C5", "C6", "C7")
  )
}

cXfish5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fish-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panel",
    colors=list("rgb(136,136,136)", "rgb(239,0,0)", "rgb(255,96,0)", "rgb(255,207,0)", "rgb(191,255,64)", "rgb(80,255,175)", "rgb(0,223,255)", "rgb(0,112,255)", "rgb(0,0,255)", "rgb(0,0,143)"),
    fishAxis=list(0, 150),
    fishCloneLabels=list("TP53,MET", "NF1", "", "8q+,6p-"),
    fishParents=list(0, 1, 1, 3),
    fishShape="spline",
    fishTimepoints=list(0, 30, 75, 150),
    graphType="Fish",
    legendColumns=4,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    panelBackgroundColor="#ffe4c4",
    xAxis=list("Founding", "Subclone 1", "Subclone 2", "Subclone 3")
  )
}

cXgantt1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    blockContrast=TRUE,
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    xAxis=list("Start", "End")
  )
}

cXgantt2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    ganttCompletion="Completion",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    xAxis=list("Start", "End")
  )
}

cXgantt3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    blockContrast=TRUE,
    colorBy="Clinical Trial",
    ganttCompletion="Completion",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    groupingFactors=list("Clinical Trial"),
    xAxis=list("Start", "End")
  )
}

cXgantt4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    blockContrast=TRUE,
    colorBy="Indication",
    ganttCompletion="Completion",
    ganttDependency="Dependencies",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    xAxis=list("Start", "End")
  )
}

cXgantt5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-gantt3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    blockContrast=TRUE,
    colorBy="Indication",
    ganttCompletion="Completion",
    ganttDependency="Dependencies",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    groupingFactors=list("Clinical Trial"),
    xAxis=list("Start", "End", "Milestone")
  )
}

cXgantt6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gantt3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-gantt3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    blockContrast=TRUE,
    colorBy="Clinical Trial",
    ganttCompletion="Completion",
    ganttDependency="Dependencies",
    ganttDependencyColor="DependencyColor",
    ganttDependencyEnd="DependencyEnd",
    ganttDependencyThickness="DependencyThickness",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    groupingFactors=list("Clinical Trial"),
    patternBy="Indication",
    xAxis=list("Start", "End", "Milestone")
  )
}

cXgenome1 <- function() {
  library(canvasXpress)
  library(jsonlite)
  genome <- read_json("https://www.canvasxpress.org/data/r/cX-genomesimple.json")
  canvasXpress(
    data=genome,
    background="rgb(245,245,245)",
    graphType="Genome",
    setMax=30,
    setMin=0
  )
}

cXgenome2 <- function() {
  library(canvasXpress)
  library(jsonlite)
  genome <- read_json("https://www.canvasxpress.org/data/r/cX-genomeintermediate.json")
  canvasXpress(
    data=genome,
    background="rgb(245,245,245)",
    graphType="Genome",
    setMax=30,
    setMin=0
  )
}

cXgenome3 <- function() {
  library(canvasXpress)
  library(jsonlite)
  genome <- read_json("https://www.canvasxpress.org/data/r/cX-genomeadvanced.json")
  canvasXpress(
    data=genome,
    background="rgb(245,245,245)",
    dataPointSize=5,
    featureStaggered=TRUE,
    graphType="Genome"
  )
}

cXgenome4 <- function() {
  library(canvasXpress)
  library(jsonlite)
  genome <- read_json("https://www.canvasxpress.org/data/r/cX-genomeideogram.json")
  canvasXpress(
    data=genome,
    background="rgb(245,245,245)",
    graphType="Genome",
    ideogramShowFullChromosome=TRUE,
    showIdeogram=TRUE
  )
}

cXheatmap1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("navy", "white", "firebrick3"),
    graphType="Heatmap",
    title="Simple Heatmap",
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("navy", "white", "firebrick3"),
    graphType="Heatmap",
    heatmapCellBoxColor="rgb(255,255,255)",
    heatmapCellMarkers=list(list(sample="S3", variable="V1", width=2), list(color="purple", sample="S5", shape="circle", variable="V2", width=2), list(sample="S1", shape="square", size=0.3, variable="V4", width=2)),
    samplesClustered=TRUE,
    title="Clustered data",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("blue", "white", "red"),
    colorSpectrumBreaks=list(1, 2, 10),
    graphType="Heatmap",
    heatmapCellBoxColor="rgb(255,255,255)",
    samplesClustered=TRUE,
    showSmpDendrogram=FALSE,
    showVarDendrogram=FALSE,
    title="Custom color breaks",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    samplesClustered=TRUE,
    showSmpDendrogram=FALSE,
    showVarDendrogram=FALSE,
    title="Cluster Heatmap Without Trees",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    samplesClustered=TRUE,
    showSmpDendrogram=FALSE,
    showVarDendrogram=FALSE,
    title="Symetrical Colors in Heatmap",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Treatment",
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=60,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=120,
    samplesClustered=TRUE,
    smpOverlayProperties=list(V1=list(color="brown", position="right", thickness=120, type="Boxplot"), V11=list(color="green", position="right", thickness=120, type="Boxplot"), V35=list(color="purple", position="right", thickness=120, type="Boxplot")),
    smpOverlays=list("V1", "V11", "V35"),
    title="R Heatmap",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Treatment",
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=60,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=120,
    samplesClustered=TRUE,
    segregateSamplesBy=list("Treatment"),
    smpOverlays=list("Treatment", "Site"),
    title="Overlays in Heatmap",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=100,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=120,
    highlightSmp=list("S1", "S2", "S3", "S4", "S5"),
    highlightVar=list("V18", "V19", "V20"),
    samplesClustered=TRUE,
    smpOverlays=list("Treatment", "Site"),
    title="Highlight cells in Heatmap",
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorKey=list(Sens=list("white", "green"), Site="GnBu", Treatment="RdPu", Type="YlGn"),
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=80,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=120,
    samplesClustered=TRUE,
    smpOverlayProperties=list(Dose=list(position="right", thickness=50, type="Dotplot"), Site=list(position="left"), Treatment=list(position="right")),
    smpOverlays=list("Treatment", "Site", "Dose"),
    title="Advanced Overlays in Heatmaps",
    varOverlayProperties=list(Sens=list(color="red", position="bottom", thickness=20, type="Bar"), Type=list(position="top")),
    varOverlays=list("Type", "Sens"),
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    guidesShow=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    outlineBy="Outline",
    outlineByData="data2",
    shapeBy="Shape",
    shapeByData="data3",
    sizeBy="Size",
    sizeByData="data4",
    xAxis=list("V1", "V2", "V3", "V4", "V5"),
    afterRender=list(list("clusterSamples", list()))
  )
}

cXheatmap11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorSpectrum=list("#f0f0f0", "#bdbdbd", "#636363", "#000000"),
    graphType="Heatmap",
    showHeatmapIndicator=FALSE,
    showLegend=FALSE,
    sizeBy="Size",
    sizeByContinuous=TRUE,
    sizeByData="data",
    title="A good old Northern Blot",
    xAxis=list("V1", "V2", "V3", "V4", "V5")
  )
}

cXheatmap12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-overlays-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-overlays-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-overlays-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    segregateSamplesBy=list("Treatment"),
    segregateVariablesBy=list("Lab"),
    showSmpOverlaysLegend=FALSE,
    showVarOverlaysLegend=FALSE,
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", showLegend="True", type="Default"), Boolean=list(position="left"), Continuous=list(position="left", showLegend="True", spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", showLegend="True", thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", showLegend="True", thickness=50, type="Bar"), PhaseB=list(position="left", showLegend="True", thickness=50, type="Bar"), PhaseC=list(position="left", showLegend="True", thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Boolean", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    smpTextScaleFontFactor=1.1,
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", showLegend="True", thickness=50, type="StackedPercent"), Conc=list(position="top", showLegend="True", thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", showLegend="True", thickness=30, type="Increase"), Even=list(position="bottom", showLegend="True", thickness=50, type="Bar"), Female=list(position="top", showLegend="True", thickness=50, type="Pie"), Hot=list(color="red", position="bottom", showLegend="True", thickness=50, type="StackedPercent"), Male=list(position="top", showLegend="True", thickness=50, type="Pie"), Nice=list(color="green", position="bottom", showLegend="True", thickness=50, type="Dotplot"), Odd=list(position="bottom", showLegend="True", thickness=50, type="BarLine"), Site=list(position="top", showLegend="True", type="Default"), Ugly=list(color="black", position="bottom", showLegend="True", thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot"),
    varTextRotate=45,
    varTextScaleFontFactor=1.7,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6")
  )
}

cXheatmap13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    heatmapIndicatorPosition="right",
    overlayFontStyle="bold",
    overlayScaleFontFactor=2,
    samplesClustered=TRUE,
    showSmpOverlaysLegend=TRUE,
    showValueOverlays=FALSE,
    showVarOverlaysLegend=TRUE,
    smpDendrogramPosition="right",
    smpOverlayProperties=list(CellType=list(position="right", scheme="Matlab", showLegend="True", type="Default"), Dose=list(color="blue", position="left", thickness=80, type="Bar"), Drug=list(position="left", scheme="Lancet", showLegend="True", thickness=30, type="Increase"), Time=list(position="right", scheme="Greens", showLegend="True", type="Default")),
    smpOverlays=list("Drug", "-", "Dose", "CellType", "-", "Time"),
    smpTitleLabelPosition="right",
    varOverlayProperties=list(GeneClass=list(position="top", scheme="GGPlot", showLegend="True", thickness=20, type="Default"), ProteinA=list(color="green", position="top", thickness=45, type="Line")),
    varOverlays=list("ProteinA", "-", "GeneClass"),
    varTitleLabelPosition="bottom",
    variablesClustered=TRUE,
    xAxis=list("Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15", "Var16", "Var17", "Var18", "Var19", "Var20")
  )
}

cXheatmap14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap2-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-pheatmap2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2),
    smpAnnot=x,
    varAnnot=z,
    dendrogramHeight=50,
    graphType="Heatmap",
    guidesShow=TRUE,
    heatmapIndicatorPosition="top",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    samplesClustered=TRUE,
    showSmpDendrogram=FALSE,
    showVarDendrogram=FALSE,
    sizeBy="Size",
    sizeByData="data2",
    sizes=list(4, 6, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48),
    title="Bubble Heatmap Plot",
    variablesClustered=TRUE,
    xAxis=list("Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15", "Var16", "Var17", "Var18", "Var19", "Var20")
  )
}

cXheatmap15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorBy="Lab",
    colorSpectrumByFactor=list(Lab=list(A=list(spectrum=list("rgb(255,215,0)", "rgb(255,255,255)", "rgb(160,32,240)")), B=list(spectrum=list("rgb(0,0,255)", "rgb(255,255,255)", "rgb(255,0,0)")))),
    graphType="Heatmap",
    segregateSamplesBy=list("Treatment"),
    segregateVariablesBy=list("Lab"),
    showVarDendrogram=TRUE,
    smpOverlays=list("Treatment"),
    varOverlays=list("Lab"),
    variablesClustered=TRUE,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28", "V29", "V30", "V31", "V32", "V33", "V34", "V35", "V36", "V37", "V38", "V39", "V40")
  )
}

cXheatmap16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    heatmapType="split",
    title="Split Heatmap for Multidimensional Data",
    xAxis=list("V1", "V2", "V3", "V4", "V5")
  )
}

cXheatmap17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-multidimensionalheatmap3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2),
    smpAnnot=x,
    varAnnot=z,
    colorSpectrumByObject=list(data2=list(spectrum=list("#ffffFF", "#FF00FF"))),
    graphType="Heatmap",
    heatmapType="split",
    title="Split Heatmap with multiple color brews",
    xAxis=list("V1", "V2", "V3", "V4", "V5")
  )
}

cXheatmap18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmap18-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmap18-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmap18-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("navy", "white", "firebrick3"),
    graphType="Heatmap",
    heatmapIndicatorPosition="right",
    samplesClustered=TRUE,
    showSmpDendrogram=TRUE,
    showVarDendrogram=TRUE,
    subtitle="150 genes x 80 samples = 12,000 expression values",
    title="Interactive heatmap at scale",
    variablesClustered=TRUE
  )
}

cXheatmap19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-heatmap19-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-heatmap19-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-heatmap19-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("#2166ac", "#f7f7f7", "#b2182b"),
    graphType="Heatmap",
    samplesClustered=TRUE,
    showSmpDendrogram=TRUE,
    showVarDendrogram=TRUE,
    subtitle="assay (40 genes x 30 samples) + rowData + colData",
    title="From SummarizedExperiment to interactive visualization",
    variablesClustered=TRUE
  )
}

cXhexplotbinplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    binplotBins=30,
    binplotShape="hexagon",
    graphType="Scatter2D",
    scatterType="bin2d",
    showScatterDensity=TRUE,
    xAxis=list("carat"),
    yAxis=list("price")
  )
}

cXhexplotbinplot2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    binplotBins=list(100, 100),
    binplotShape="hexagon",
    graphType="Scatter2D",
    scatterType="bin2d",
    showScatterDensity=TRUE,
    xAxis=list("carat"),
    yAxis=list("price")
  )
}

cXhexplotbinplot3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    binplotBinWidth=list(1, 1000),
    binplotShape="hexagon",
    graphType="Scatter2D",
    scatterType="bin2d",
    showScatterDensity=TRUE,
    xAxis=list("carat"),
    yAxis=list("price")
  )
}

cXhexplotbinplot4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    binplotBins=30,
    binplotShape="rectangle",
    graphType="Scatter2D",
    scatterType="bin2d",
    showScatterDensity=TRUE,
    xAxis=list("carat"),
    yAxis=list("price")
  )
}

cXhexplotbinplot5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    binplotBins=30,
    binplotShape="oval",
    graphType="Scatter2D",
    scatterType="bin2d",
    showScatterDensity=TRUE,
    xAxis=list("carat"),
    yAxis=list("price")
  )
}

cXhistogram1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=10,
    showHistogram=TRUE,
    showTransition=FALSE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxis=list("Survival"),
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects"
  )
}

cXhistogram2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=20,
    showHistogram=TRUE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxis=list("Survival"),
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects"
  )
}

cXhistogram3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-cancersurvivalt-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    showFilledHistogramPath=TRUE,
    showHistogram=TRUE,
    showHistogramPath=TRUE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxis=list("Survival"),
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects"
  )
}

cXhistogram4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    graphType="Scatter2D",
    histogramBins=5,
    showHistogram=TRUE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Tobacco", "Alcohol"),
    xAxisTitle="Pounds Spent",
    yAxisTitle="Frequency"
  )
}

cXhistogram5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="staggered",
    showHistogram=TRUE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Tobacco", "Alcohol"),
    xAxisTitle="Pounds Spent",
    yAxisTitle="Frequency"
  )
}

cXhistogram6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="stacked",
    showHistogram=TRUE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Tobacco", "Alcohol"),
    xAxisTitle="Pounds Spent",
    yAxisTitle="Frequency"
  )
}

cXhistogram7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="dodged",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    showHistogram="dataset",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXhistogram8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="staggered",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    showHistogram="dataset",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXhistogram9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="stacked",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    showHistogram="dataset",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXhistogram10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcars2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-mtcars2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramAsDotplot=TRUE,
    histogramBinWidth=3,
    showHistogram=TRUE,
    xAxis=list("mpg"),
    xAxisTitle="mpg",
    yAxisTitle="Frequency"
  )
}

cXkaplanmeier1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lung-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-lung-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Gender",
    colors=list("#2E9FDF", "#E7B800"),
    graphType="Scatter2D",
    kmRiskTable=TRUE,
    legendColumns=2,
    legendPosition="top",
    showKMConfidenceIntervals=TRUE,
    showKMMedianSurvivalTime=TRUE,
    title="Lung Cancer Data with Confidence Level and Risk Number Table",
    xAxis=list("time"),
    xAxisTitle="Time",
    yAxis=list("status"),
    yAxisTitle="Survival Probability",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lung-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-lung-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Gender",
    colors=list("#2E9FDF", "#E7B800"),
    graphType="Scatter2D",
    kmRiskTable=FALSE,
    showKMConfidenceIntervals=TRUE,
    title="Lung Cancer Data with Confidence Level",
    xAxis=list("time"),
    xAxisTitle="Time",
    yAxis=list("status"),
    yAxisTitle="Survival Probability",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lung-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-lung-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Gender",
    colors=list("#2E9FDF", "#E7B800"),
    graphType="Scatter2D",
    kmRiskTable=FALSE,
    legendColumns=2,
    legendPosition="top",
    showKMConfidenceIntervals=FALSE,
    title="Lung Cancer Data - Minimal",
    xAxis=list("time"),
    xAxisTitle="Time",
    yAxis=list("status"),
    yAxisTitle="Survival Probability",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-km-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-km-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Strata",
    graphType="Scatter2D",
    kmRiskTable=TRUE,
    legendColumns=2,
    legendPosition="top",
    showKMConfidenceIntervals=FALSE,
    title="KM Plot with right censoring method",
    xAxis=list("Time"),
    xAxisTitle="Time",
    yAxis=list("Event"),
    yAxisTitle="Survival Probability",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-km-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-km-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Strata",
    graphType="Scatter2D",
    kmRiskTable=TRUE,
    kmTime="Time2",
    legendColumns=2,
    legendPosition="top",
    showKMConfidenceIntervals=FALSE,
    title="KM Plot with counting method",
    xAxis=list("Time"),
    xAxisTitle="Time",
    yAxis=list("Event"),
    yAxisTitle="Survival Probability",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Drug",
    graphType="Scatter2D",
    kmRiskTable=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showKMConfidenceIntervals=FALSE,
    xAxis=list("Survival", "Survival-Censor"),
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("addKMPlot", list()))
  )
}

cXkaplanmeier7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    legendInside=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottomLeft",
    showKMConfidenceIntervals=TRUE,
    xAxis=list("Survival", "Survival2"),
    xAxisTitle="Weeks",
    yAxis=list("Survival-Censor", "Survival2-Censor"),
    yAxisTitle="Probability of Survival",
    afterRender=list(list("switchSmpToAnnotation", list("Age")), list("switchSmpToAnnotation", list("Clin2")), list("switchSmpToAnnotation", list("Clin3")), list("addKMPlot", list()), list("createDOE", list()))
  )
}

cXkaplanmeier8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Sex",
    graphType="Scatter2D",
    invertCensored=TRUE,
    showKMConfidenceIntervals=FALSE,
    xAxis=list("Survival", "Survival-Censor"),
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("switchSmpToAnnotation", list("Age")), list("switchSmpToAnnotation", list("Clin2")), list("switchSmpToAnnotation", list("Clin3")), list("addKMPlot", list()), list("createDOE", list()))
  )
}

cXkaplanmeier9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier9-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier9-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="Drug",
    graphType="KaplanMeier",
    invertCensored=TRUE,
    legendBackgroundColor="rgb(255,255,255)",
    legendBox=TRUE,
    panelBackgroundColor="rgb(245,245,245)",
    showKMConfidenceIntervals=FALSE,
    subtitle="Overall survival by treatment arm (n = 361)",
    title="Reproducible Kaplan-Meier survival analysis",
    xAxis=list("Survival", "Survival-Censor"),
    xAxisGridMajorColor="rgb(255,255,255)",
    xAxisTitle="Time (weeks)",
    yAxisGridMajorColor="rgb(255,255,255)",
    yAxisTitle="Probability of survival"
  )
}

cXlayout1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXlayout2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    confidenceIntervalColorCoordinate=TRUE,
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    showRegressionFit="Species",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXlayout3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    showRegressionFit=TRUE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXlayout4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXlayout5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    confidenceIntervalColorCoordinate=TRUE,
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    showRegressionFit="Species",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXlayout6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTextFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Boxplot",
    showTransition=FALSE,
    smpTextFontStyle="italic",
    smpTextRotate=90,
    smpTitle="Species",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Iris flower data set",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")), list("segregateSamples", list("Species")))
  )
}

cXlayout7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Dotplot",
    legendColumns=3,
    legendPosition="bottom",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    xAxis=list("MPG", "Weight", "Drive_Ratio", "Horsepower", "Displacement", "Cylinders"),
    afterRender=list(list("groupSamples", list("Country")), list("segregateSamples", list("Country")))
  )
}

cXlayout8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateSamples", list("Factor1")), list("groupSamples", list("Factor1")))
  )
}

cXlayout9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Bar",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutType="rows",
    showTransition=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("V1", "V2", "V3", "V4"),
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scents-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-scents-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    histogramBins=FALSE,
    showTransition=FALSE,
    smpTextRotate=90,
    smpTitle="Smoking Status",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3", "S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("groupSamples", list("Smoker")), list("createDOE", list()))
  )
}

cXlayout12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-body2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-body2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=FALSE,
    xAxis=list("Weight", "Height"),
    afterRender=list(list("createDOE", list()))
  )
}

cXlayout13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=FALSE,
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Survival", "Survival-Censor"),
    afterRender=list(list("switchSmpToAnnotation", list("Age")), list("switchSmpToAnnotation", list("Clin2")), list("switchSmpToAnnotation", list("Clin3")), list("addKMPlot", list()), list("createDOE", list()))
  )
}

cXlayout14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-layoutContinuous-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-layoutContinuous-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-layoutContinuous-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutAdjust=TRUE,
    layoutConfig=list(list(axisCoordinate="True", graphType="BarLine", showDataValues="True", xAxis=list("Duration"), xAxis2=list("Discontinued"), xAxisTitle="Duration of Treatment"), list(colorBy="Drug", legendColumns=5, legendInside="True", legendPosition="bottomLeft", showLegend="True", showLegendTitle="False", xAxisTitle="Change from Baseline (%)"), list(barLollipopFactor=1.5, barLollipopOpen="False", barType="lollipop", xAxisTitle="Baseline (mm)")),
    layoutTopology="3X1",
    showLegend=FALSE,
    stripBackgroundBorderColor="rgba(0,0,0,0)",
    stripShow=FALSE,
    stripTextColor="rgb(0,0,0)",
    title="Tumor Response and Duration by Subject Id",
    xAxis=list("Duration", "Discontinued", "Response", "Baseline"),
    xAxis2Show=FALSE,
    afterRender=list(list("segregateVariables", list("Panel")))
  )
}

cXlayout15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-overlays-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-overlays-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-overlays-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", type="Default"), Continuous=list(position="left", spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", thickness=50, type="Bar"), PhaseB=list(position="left", thickness=50, type="Bar"), PhaseC=list(position="left", thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    smpTextScaleFontFactor=1.1,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", thickness=50, type="StackedPercent"), Conc=list(position="top", thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", thickness=30, type="Increase"), Even=list(position="bottom", thickness=50, type="Bar"), Female=list(position="top", thickness=50, type="Pie"), Hot=list(color="red", position="bottom", thickness=50, type="StackedPercent"), Male=list(position="top", thickness=50, type="Pie"), Nice=list(color="green", position="bottom", thickness=50, type="Dotplot"), Odd=list(position="bottom", thickness=50, type="BarLine"), Site=list(position="top", type="Default"), Ugly=list(color="black", position="bottom", thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot"),
    varTextRotate=45,
    varTextScaleFontFactor=1.7,
    xAxis=list("V1", "V2", "V3", "V4", "V5", "V6")
  )
}

cXlayout16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    segregateVariablesBy=list("dataset"),
    showRegressionFit="dataset",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXlayout17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    layoutTopology="2X1",
    segregateVariablesBy=list("variable"),
    smpTextRotate=45,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXlayout18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-anscombeQuartet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-anscombeQuartet-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    confidenceIntervalColorCoordinate=TRUE,
    graphType="Scatter2D",
    segregateVariablesBy=list("dataset"),
    showRegressionFit="dataset",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("x", "y")
  )
}

cXline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oranges-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panel",
    blockContrast=TRUE,
    evenColor="rgb(226,236,248)",
    graphOrientation="vertical",
    graphType="Line",
    legendInside=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="topLeft",
    panelBackgroundColor="rgb(226,236,248)",
    smpTextRotate=90,
    smpTitle="Days Old",
    theme="GGPlot",
    title="Growth of Orange Trees",
    xAxis=list(1, 2, 3, 4, 5),
    xAxisTitle="Circumference (mm)"
  )
}

cXline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oranges2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-oranges2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Tree",
    graphOrientation="horizontal",
    graphType="Scatter2D",
    lineBy="Tree",
    showLegend=FALSE,
    title="Growth of Orange Trees",
    xAxis=list("Days Old"),
    yAxis=list("Circumference (mm)")
  )
}

cXline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Line",
    layoutTopology="1X3",
    legendPosition="right",
    lineDecoration="pattern",
    segregateSamplesBy=list("Factor3"),
    smpTextRotate=90,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="blackAndWhite",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXline4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-line-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-line-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Line",
    lineErrorType="area",
    lineType="spline",
    xAxis=list("Var1", "Var2"),
    afterRender=list(list("groupSamples", list("Time")))
  )
}

cXline5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-timeline-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-timeline-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="https://www.molbiolcell.org/doi/full/10.1091/mbc.e17-03-0136",
    colorBy="Condition",
    graphType="Scatter2D",
    lineBy="Condition",
    ribbonBy=list("CI_upper", "CI_lower"),
    ribbonByType="area",
    showTransition=FALSE,
    title="Spatiotemporal Control of RhoGTPase Activation",
    xAxis=list("Time"),
    xAxisTitle="Time [s]",
    yAxis=list("mean"),
    yAxisTitle="Ratio YFP/CFP [-]"
  )
}

cXline6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-timeline2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-timeline2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="https://www.molbiolcell.org/doi/full/10.1091/mbc.e17-03-0136",
    colorBy="Condition",
    colorScheme="Rpalette",
    graphType="Scatter2D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    scatterType="line",
    showTransition=FALSE,
    title="Spatiotemporal Control of RhoGTPase Activation",
    xAxis=list("Time"),
    xAxisTitle="Time [s]",
    yAxis=list("Cell-1", "Cell-2", "Cell-3", "Cell-4", "Cell-5", "Cell-6", "Cell-7", "Cell-8", "Cell-9", "Cell-10", "Cell-11", "Cell-12", "Cell-13", "Cell-14", "Cell-15", "Cell-16", "Cell-17", "Cell-18", "Cell-19", "Cell-20", "Cell-21", "Cell-22", "Cell-23", "Cell-24", "Cell-25", "Cell-26", "Cell-27", "Cell-28", "Cell-29", "Cell-30", "Cell-31", "Cell-32", "Cell-33", "Cell-34", "Cell-35", "Cell-36", "Cell-37", "Cell-38", "Cell-39", "Cell-40", "Cell-41", "Cell-42", "Cell-43", "Cell-44", "Cell-45", "Cell-46", "Cell-47", "Cell-48", "Cell-49", "Cell-50", "Cell-51", "Cell-52", "Cell-53", "Cell-54", "Cell-55", "Cell-56", "Cell-57", "Cell-58", "Cell-59", "Cell-60", "Cell-61", "Cell-62", "Cell-63"),
    yAxisTitle="Ratio YFP/CFP [-]"
  )
}

cXlinearfit1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    graphType="Scatter2D",
    showDecorations=TRUE,
    stringVariableFactors=list("cyl"),
    title="QQ-Plot",
    xAxis=list("mpg"),
    yAxis=list("mpg"),
    afterRender=list(list("addQQPlot", list()))
  )
}

cXlinearfit2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    showDecorations=TRUE,
    stringVariableFactors=list("cyl"),
    title="QQ-Plot colored by cyl",
    xAxis=list("mpg"),
    yAxis=list("mpg"),
    afterRender=list(list("addQQPlot", list()))
  )
}

cXlinearfit3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mpg-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-mpg-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    fitLineColor="rgb(0,0,255)",
    graphType="Scatter2D",
    quantiles=list(0.25, 0.5, 0.75),
    showDecorations=TRUE,
    showQuantileRegressionFit=TRUE,
    title="Quantile Regression",
    xAxis=list("displ"),
    yAxis=list("hwy")
  )
}

cXlollipop1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lollipop-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-lollipop-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="lollipop",
    colorScheme="CanvasXpress",
    dataPointSizeScaleFactor=6,
    graphType="Bar",
    sizeBy="val",
    widthFactor=0.2,
    xAxis=list("V1")
  )
}

cXlollipop2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lollipop2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-lollipop2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barLollipopOpen=TRUE,
    barType="lollipopBullet",
    colorBy="Color",
    colorScheme="GGPlot",
    dataPointSizeScaleFactor=7,
    graphType="Bar",
    marginBottom=50,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    rangeColors=list("rgb(200,200,200)"),
    setMaxX=150,
    setMinX=-150,
    showDataValues=TRUE,
    showLegend=FALSE,
    title="Occupations",
    xAxis=list("Var1"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXmap1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-OlympicMedalsT-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorBy="Total",
    graphType="Map",
    legendPosition="bottom",
    mapId="medals",
    theme="tableau",
    title="Total Number of Olympic Medals in Paris - 2024",
    topoJSON="https://www.canvasxpress.org/data/maps/WORLD.json"
  )
}

cXmap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="CO2",
    graphType="Map",
    legendPosition="left",
    mapId="countries",
    theme="solarized",
    title="CO2 Emmisions During 2018",
    topoJSON="https://www.canvasxpress.org/data/maps/WORLD.json"
  )
}

cXmap3 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="variable",
    decorations=list(connections=list(list(color="red", source=list(40.7, -74), target=list(37.7, -122), type="spline"), list(color="red", source=list(40.7, -74), target=list(25.7, -80.1), type="spline"), list(color="red", source=list(37.7, -122), target=list(25.7, -80.1), type="splineDashed")), marker=list(list(color="blue", coords=list(40.7, -74), label="New York", shape="teardrop", size=5), list(color="blue", coords=list(37.7, -122), label="San Francisco", shape="teardrop", size=5), list(color="blue", coords=list(25.7, -80.1), label="Miami", shape="teardrop", size=5), list(color="green", coords=list(41.8, -87.6), label="Chicago", shape="circle", size=4), list(color="green", coords=list(36.1, -115.1), label="Las Vegas", shape="circle", size=3), list(color="black", coords=list(42.3, -71), label="Boston", shape="star", size=6))),
    graphType="Map",
    mapConfig=list(center=list(34.7, -96.1), zoom=3.2),
    mapId="colorCountries",
    showLegend=FALSE,
    topoJSON="https://www.canvasxpress.org/data/maps/WORLD.json"
  )
}

cXmap4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-election2000-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-election2000-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Winner",
    graphType="Map",
    legendOrder=list(Winner=list("Republican", "Democrat")),
    mapId="albersStates",
    mapProjection="albers",
    theme="wallStreetJournal",
    title="2000 Presidential Elections",
    topoJSON="https://www.canvasxpress.org/data/maps/USA.json"
  )
}

cXmap5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-election2000-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-election2000-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Winner",
    decorations=list(pie=list(list(colors=list("blue", "red", "yellow", "green"), size=2.5, smps=list("Democrat", "Republican", "Libertarian", "Other")))),
    graphType="Map",
    legendColumns=4,
    legendOrder=list(Winner=list("Republican", "Democrat")),
    mapId="albersStatesPie",
    mapProjection="albers",
    sizeBy="Total",
    theme="wallStreetJournal",
    title="2000 Presidential Elections",
    topoJSON="https://www.canvasxpress.org/data/maps/USA.json"
  )
}

cXmap6 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="Order",
    graphType="Map",
    legendPosition="bottom",
    mapId="albersCounties",
    title="Mercator Projection",
    topoJSON="https://www.canvasxpress.org/data/maps/USA-COUNTIES.json"
  )
}

cXmap7 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="Order",
    graphType="Map",
    legendPosition="bottom",
    mapId="mercatorCounties",
    mapProjection="albers",
    title="Albers Projection",
    topoJSON="https://www.canvasxpress.org/data/maps/USA-COUNTIES.json"
  )
}

cXmap8 <- function() {
  library(canvasXpress)
  x=read.table("https://www.canvasxpress.org/data/r/cX-australia-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    smpAnnot=x,
    colorBy="variable",
    colorScheme="Bootstrap",
    graphType="Map",
    legendInside=TRUE,
    legendPosition="bottomLeft",
    legendTextScaleFontFactor=0.85,
    mapConfig=list(zoom=3),
    mapId="australia",
    markerBy="Category",
    title="Cyclones in Australia 1940-2020",
    topoJSON="https://www.canvasxpress.org/data/maps/AUS.json",
    workflowBy="Year"
  )
}

cXmap9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-colombia-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorBy="Property1",
    colorSpectrum=list("rgb(247,252,253)", "rgb(229,245,249)", "rgb(204,236,230)", "rgb(153,216,201)", "rgb(102,194,164)", "rgb(65,174,118)", "rgb(35,139,69)", "rgb(0,109,44)", "rgb(0,68,27)"),
    decorations=list(marker=list(list(color="red", coords=list(10.3932, -75.4832), label="Cartagena", shape="teardrop", size=4), list(color="blue", coords=list(12.5769, -81.7051), label="San Andres", shape="teardrop", size=6))),
    graphType="Map",
    legendInside=TRUE,
    legendPosition="bottomLeft",
    mapId="colombia",
    topoJSON="https://www.canvasxpress.org/data/maps/COL.json"
  )
}

cXmap10 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="variable",
    colorScheme="Light",
    graphType="Map",
    legendInside=TRUE,
    legendPosition="bottomLeft",
    legendTextScaleFontFactor=0.85,
    mapId="italy",
    topoJSON="https://www.canvasxpress.org/data/maps/ITA.json"
  )
}

cXmap11 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    graphType="Map",
    mapColor="grey",
    mapId="spain",
    mapOutlineColor="white",
    topoJSON="https://www.canvasxpress.org/data/maps/ESP.json"
  )
}

cXmap12 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="Order",
    graphType="Map",
    mapConfig=list(zoom=3.2),
    mapConfigFeatures=list("1"=list(scale=list(0.5, 0.8), translate=list(-100, -30)), "11"=list(scale=list(1.5, 1.5), translate=list(85, -5))),
    mapId="customUSA",
    topoJSON="https://www.canvasxpress.org/data/maps/USA.json"
  )
}

cXmap13 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="varId",
    decorations=list(connections=list(list(color="red", source=list(40.7, -74), target=list(37.7, -122), type="spline"), list(color="red", source=list(40.7, -74), target=list(25.7, -80.1), type="spline"), list(color="red", source=list(37.7, -122), target=list(25.7, -80.1), type="splineDashed")), marker=list(list(color="blue", coords=list(40.7, -74), label="New York", shape="teardrop", size=5), list(color="blue", coords=list(37.7, -122), label="San Francisco", shape="teardrop", size=5), list(color="blue", coords=list(25.7, -80.1), label="Miami", shape="teardrop", size=5), list(color="green", coords=list(41.8, -87.6), label="Chicago", shape="circle", size=4), list(color="green", coords=list(36.1, -115.1), label="Las Vegas", shape="circle", size=3), list(color="black", coords=list(42.3, -71), label="Boston", shape="star", size=6))),
    graphType="Map",
    mapConfig=list(center=list(-90, 30)),
    mapGraticuleShow=TRUE,
    mapGraticuleType="solid",
    mapId="worldCountries",
    mapProjection="orthographic",
    showLegend=FALSE,
    title="Ortographic Projection",
    topoJSON="https://www.canvasxpress.org/data/maps/WORLD-LOW.json"
  )
}

cXmap14 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    decorations=list(marker=list(list(color="blue", coords=list(40.701, -73.985), label="New York 1", shape="circle", size=1), list(color="red", coords=list(40.702, -74.011), label="New York 2", shape="teardrop", size=1.5), list(color="green", coords=list(40.703, -73.991), label="New York 3", shape="star", size=3))),
    graphType="Map",
    mapConfig=list(center=list(40.7, -74), zoom=15),
    showLegend=FALSE,
    useLeaflet=TRUE
  )
}

cXmap15 <- function() {
  library(canvasXpress)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mapdecor-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    smpAnnot=x,
    graphType="Map",
    mapConfig=list(center=list(40.7, -74), zoom=15),
    markerBy="shape",
    showLegend=FALSE,
    useLeaflet=TRUE
  )
}

cXmap16 <- function() {
  library(canvasXpress)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mapdecor2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    smpAnnot=x,
    graphType="Map",
    leafletZoomAlphaColor=1,
    mapConfig=list(center=list(37.6, -99), zoom=4),
    mapMarkerShape="circle",
    mapMarkerShapeScaleFactor=0.5,
    markerBy="State",
    showLegend=FALSE,
    useLeaflet=TRUE
  )
}

cXmap17 <- function() {
  library(canvasXpress)
  x=read.table("https://www.canvasxpress.org/data/r/cX-mapdecor2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    smpAnnot=x,
    graphType="Map",
    leafletZoomAlphaColor=1,
    mapConfig=list(center=list(37.6, -99), zoom=4),
    mapMarkerShape="circle",
    mapMarkerShapeScaleFactor=0.75,
    markerBy="State",
    showLegend=FALSE,
    sizeBy="Population",
    useLeaflet=TRUE
  )
}

cXmeter1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="gauge",
    rangeSegments=list(0, 25, 50, 75, 100),
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="speedometer",
    rangeSegments=list(0, 25, 50, 75, 200),
    setMax=200,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="digital",
    rangeSegments=list(0, 25, 50, 75, 100),
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="state",
    xAxis=list("Performance")
  )
}

cXmeter5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="horizontal",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="vertical",
    rangeSegments=list(0, 25, 50, 75, 100),
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-meter2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Meter",
    meterType="number",
    meterVar="Revenue",
    xAxis=list("Revenue")
  )
}

cXmeter8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("Quarter"),
    meterType="digital",
    meterVar="Revenue",
    summaryType="sum",
    xAxis=list("Revenue")
  )
}

cXmeter9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterType="gauge",
    meterVar="mpg",
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    background="rgb(13,17,23)",
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterBackgroundColor="rgb(22,27,34)",
    meterType="card",
    meterVar="mpg",
    rangeColors=list("rgb(88,166,255)", "rgb(63,185,80)", "rgb(210,153,34)", "rgb(188,140,255)", "rgb(255,123,114)"),
    smpTitleColor="rgb(139,148,158)",
    summaryType="average",
    xAxis=list("mpg"),
    xAxisGridMajorColor="rgb(48,54,61)",
    xAxisTextColor="rgb(139,148,158)"
  )
}

cXmeter11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    background="rgb(13,17,23)",
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterAlign="center",
    meterBackgroundColor="rgb(22,27,34)",
    meterType="card",
    meterVar="mpg",
    rangeColors=list("rgb(88,166,255)", "rgb(63,185,80)", "rgb(210,153,34)", "rgb(188,140,255)", "rgb(255,123,114)"),
    smpTitleColor="rgb(139,148,158)",
    summaryType="average",
    xAxis=list("mpg"),
    xAxisGridMajorColor="rgb(48,54,61)",
    xAxisTextColor="rgb(139,148,158)"
  )
}

cXmeter12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterType="gauge",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterType="digital",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterThickness=0.8,
    meterType="state",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterThickness=0.6,
    meterTitleAlign="start",
    meterType="horizontal",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterTitleAlign="end",
    meterType="vertical",
    setMax=100,
    setMin=0,
    xAxis=list("Performance")
  )
}

cXmeter17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterCard=TRUE,
    meterType="gauge",
    meterVar="mpg",
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterMargin=20,
    meterType="card",
    meterVar="mpg",
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterCard=TRUE,
    meterType="number",
    meterVar="mpg",
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter20 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter4-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterCard=TRUE,
    meterThickness=0.7,
    meterType="horizontal",
    meterVar="mpg",
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter21 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter21-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterCard=TRUE,
    meterType="ring",
    rangeColors=list("rgb(124,77,255)"),
    summaryType="sum",
    xAxis=list("Full-Stack Developer")
  )
}

cXmeter22 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter22-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter22-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("cyl"),
    meterCard=TRUE,
    meterType="ring",
    meterVar="mpg",
    rangeColors=list("rgb(239,83,80)", "rgb(255,167,38)", "rgb(102,187,106)"),
    summaryType="average",
    xAxis=list("mpg")
  )
}

cXmeter23 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter23-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-meter23-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Meter",
    groupingFactors=list("Department"),
    meterCard=TRUE,
    meterRingTitlePosition="topLeft",
    meterType="ring",
    meterVar="Satisfaction",
    rangeColors=list("rgb(38,166,154)"),
    summaryType="average",
    xAxis=list("Satisfaction")
  )
}

cXmeter24 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-meter24-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    bulletTargetVar="rgb(20,20,20)",
    bulletTargetVarName="Goal",
    graphType="Meter",
    meterType="gauge",
    rangeSegments=list(0, 25, 50, 75, 100),
    setMax=100,
    setMin=0,
    summaryType="sum",
    xAxis=list("Revenue")
  )
}

cXnetwork1 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserable-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserable-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    colorSpectrum=list("purple", "blue", "cyan", "green", "yellow", "orange", "red"),
    graphType="Network",
    networkLayoutType="forceDirected",
    showAnimation=TRUE,
    title="Les Miserable"
  )
}

cXnetwork2 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserableBH-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserableBH-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    colorSpectrum=list("purple", "blue", "cyan", "green", "yellow", "orange", "red"),
    graphType="Network",
    networkLayoutType="forceDirected",
    showAnimation=TRUE,
    title="Les Miserable",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork3 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-miserables-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-miserables-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    graphType="Network",
    networkColaJaccardLinkLengthDefault=0.7,
    networkColaJaccardLinkLengths=40,
    networkColaStartUnconstrainedIterations=50,
    networkLayoutType="cola"
  )
}

cXnetwork4 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-miserablesG-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-miserablesG-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  groups=read.table("https://www.canvasxpress.org/data/r/cX-miserablesG-groups.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    groupData=groups,
    colorNodeBy="group",
    graphType="Network",
    networkColaAvoidOverlaps=TRUE,
    networkColaJaccardLinkLengthDefault=0.7,
    networkColaJaccardLinkLengths=40,
    networkColaStartUnconstrainedIterations=50,
    networkLayoutType="cola"
  )
}

cXnetwork5 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-miserables-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-miserables-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    graphType="Network",
    is3DNetwork=TRUE,
    networkColaJaccardLinkLengthDefault=0.7,
    networkColaJaccardLinkLengths=40,
    networkColaStartUnconstrainedIterations=50,
    networkLayoutType="cola"
  )
}

cXnetwork6 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-miserablesC-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-miserablesC-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    graphType="Network",
    networkColaJaccardLinkLengthDefault=0.7,
    networkColaJaccardLinkLengths=60,
    networkColaStartUnconstrainedIterations=30,
    networkLayoutType="cola"
  )
}

cXnetwork7 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-dunart-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-dunart-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  groups=read.table("https://www.canvasxpress.org/data/r/cX-dunart-groups.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  constraints=read.table("https://www.canvasxpress.org/data/r/cX-dunart-constraints.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    groupData=groups,
    constraintData=constraints,
    graphType="Network",
    networkLayoutType="cola"
  )
}

cXnetwork8 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-chris-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-chris-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    graphType="Network",
    networkColaStartUnconstrainedIterations=30,
    networkColaSymmetricDiffLinkLengths=5,
    networkLayoutType="cola",
    nodeColor="rgb(31,119,180)",
    nodeSizeScaleFactor=0.5
  )
}

cXnetwork9 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  constraints=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-constraints.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    constraintData=constraints,
    graphType="Network",
    networkColaAllConstraintsIterations=20,
    networkColaAvoidOverlaps=TRUE,
    networkColaFlowLayoutAxis="y",
    networkColaFlowLayoutSeparation=30,
    networkColaStartUnconstrainedIterations=10,
    networkColaSymmetricDiffLinkLengths=6,
    networkColaUserConstraintIterations=20,
    networkLayoutType="cola",
    nodeColor="rgb(31,119,180)",
    nodeSizeScaleFactor=0.5
  )
}

cXnetwork10 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  constraints=read.table("https://www.canvasxpress.org/data/r/cX-chrisC-constraints.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    constraintData=constraints,
    graphType="Network",
    is3DNetwork=TRUE,
    networkColaAllConstraintsIterations=20,
    networkColaAvoidOverlaps=TRUE,
    networkColaFlowLayoutAxis="y",
    networkColaFlowLayoutSeparation=30,
    networkColaStartUnconstrainedIterations=10,
    networkColaSymmetricDiffLinkLengths=6,
    networkColaUserConstraintIterations=20,
    networkLayoutType="cola",
    nodeColor="rgb(31,119,180)",
    nodeSizeScaleFactor=0.5
  )
}

cXnetwork11 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-hierGroup-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-hierGroup-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  groups=read.table("https://www.canvasxpress.org/data/r/cX-hierGroup-groups.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    groupData=groups,
    edgeColor="rgb(122,78,79)",
    edgeThickness=3,
    graphType="Network",
    networkColaAllConstraintsIterations=50,
    networkColaAvoidOverlaps=TRUE,
    networkColaGridSnapIterations=50,
    networkColaLinkDistance=80,
    networkColaStartUnconstrainedIterations=100,
    networkColaUserConstraintIterations=0,
    networkLayoutType="cola"
  )
}

cXnetwork12 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-constraints-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-constraints-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  constraints=read.table("https://www.canvasxpress.org/data/r/cX-constraints-constraints.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    constraintData=constraints,
    edgeColor="rgb(122,78,79)",
    edgeThickness=3,
    graphType="Network",
    networkColaAllConstraintsIterations=10,
    networkColaAvoidOverlaps=TRUE,
    networkColaHandleDisconnected=TRUE,
    networkColaLinkDistance=80,
    networkColaStartUnconstrainedIterations=10,
    networkColaUserConstraintIterations=10,
    networkLayoutType="cola"
  )
}

cXnetwork13 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserableC-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-lesmiserableC-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    background="rgb(245,245,245)",
    colorNodeBy="group",
    graphType="Network",
    networkLayoutType="circular",
    nodeScaleFontFactor=1.8,
    showAnimation=TRUE,
    showLegend=FALSE,
    showNodeNameSizeThreshold=25,
    showNodeNameThreshold=100,
    sizeNodeBy="nodeEdges",
    title="Les Miserable"
  )
}

cXnetwork14 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-networkradial-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-networkradial-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    graphType="Network",
    networkLayoutType="radial",
    nodeFontColor="rgb(29,34,43)",
    nodeScaleFontFactor=2,
    showAnimation=TRUE,
    title="Radial Network"
  )
}

cXnetwork15 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-networkbasic-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-networkbasic-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    calculateLayout=FALSE,
    decorations=list("exp1", "exp2", "exp3"),
    decorationsPosition="top",
    decorationsType="bar",
    graphType="Network",
    networkFreezeOnLoad=TRUE,
    nodeFontColor="rgb(29,34,43)",
    showAnimation=TRUE,
    showDecorations=TRUE
  )
}

cXnetwork16 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-networkkarate-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-networkkarate-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    coordinateNetworkConvexHullCommunityColor=TRUE,
    graphType="Network",
    showNetworkCommunities=TRUE,
    title="Zachary's famous Karate Club"
  )
}

cXnetwork17 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-wpapoptosis-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-wpapoptosis-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    adjustBezier=FALSE,
    calculateLayout=FALSE,
    graphType="Network",
    networkFreeze=TRUE,
    networkNodesOnTop=FALSE,
    preScaleNetwork=FALSE,
    showNodeNameThreshold=20000,
    title="Apoptosis"
  )
}

cXnetwork18 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-wpapoptosis-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-wpapoptosis-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    adjustBezier=FALSE,
    calculateLayout=FALSE,
    colorNodeBy="Exp1",
    graphType="Network",
    networkFreeze=TRUE,
    networkNodesOnTop=FALSE,
    preScaleNetwork=FALSE,
    showNodeNameThreshold=20000,
    title="Apoptosis"
  )
}

cXnetwork19 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/xml/hsa05222.xml",
    appendNetworkData=list("https://www.canvasxpress.org/data/txt/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    colorNodeBy="Exp1",
    graphType="Network"
  )
}

cXnetwork20 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/xml/hsa05222.xml",
    appendNetworkData=list("https://www.canvasxpress.org/data/txt/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    decorations=list("Exp2", "Exp3"),
    decorationsHeight=18,
    decorationsPosition="right",
    decorationsType="pie",
    graphType="Network"
  )
}

cXnetwork21 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/xml/WP3624_95209.gpml",
    graphType="Network"
  )
}

cXnetwork22 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/xml/example.xgmml",
    graphType="Network"
  )
}

cXnetwork23 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/xml/Apoptosis.xml",
    graphType="Network"
  )
}

cXnetwork24 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/txt/networkData.txt",
    colorNodeBy="name_mod1",
    graphType="Network",
    sizeEdgeBy="aa%1"
  )
}

cXnetwork25 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-doctrine2-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-doctrine2-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork26 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-faker-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-faker-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork27 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-jquery-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-jquery-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork28 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-lichess-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-lichess-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork29 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-propel2-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-propel2-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork30 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-rails-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-rails-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork31 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-symfony-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-symfony-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork32 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-twig-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-twig-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork33 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-uptime-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-uptime-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    networkConvergenceThreshold=0.001,
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork34 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-wordpress-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-wordpress-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork35 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-zf2-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-zf2-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeColor="rgb(158,202,225)",
    graphType="Network",
    useBarnesHutSimulation=TRUE
  )
}

cXnetwork36 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/r/cX-network36-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/r/cX-network36-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorEdgeBy="sign",
    colorKey=list(sign=list(activation="#2c7fb8", repression="#d95f0e")),
    edgeThickness=2,
    graphType="Network",
    lineEdgeBy="evidence",
    lineKey=list(evidence=list(chipseq="solid", eqtl="dashed")),
    networkLayoutType="forceDirected",
    nodeFontColor="rgb(30,30,30)",
    showAnimation=TRUE,
    sizeEdgeBy="coef",
    title="Gene Regulatory Network - Edge Line Style by Evidence"
  )
}

cXnonlinearfit1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-nonlinearfit-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    xAxis=list("Concentration"),
    xAxisTransform="log10",
    xAxisTransformTicks=TRUE,
    yAxis=list("V1"),
    yAxisExact=TRUE
  )
}

cXnonlinearfit2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-nor24-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("X"),
    yAxis=list("Y"),
    afterRender=list(list("addNormalDistributionLine", list()))
  )
}

cXnonlinearfit3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-log11-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(logarithmic=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Age"),
    yAxis=list("Height")
  )
}

cXnonlinearfit4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exp14-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(exponential=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Time"),
    yAxis=list("Temp")
  )
}

cXnonlinearfit5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-pow11-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(power=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Diameter"),
    yAxis=list("Length")
  )
}

cXnonlinearfit6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-poly8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(polynomial=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("X"),
    yAxis=list("Y")
  )
}

cXnonlinearfit7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lin20-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(linear=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Hours"),
    yAxis=list("Score")
  )
}

cXoncoprint1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    overlaysThickness=100,
    xAxis=list("V1", "V2", "V3")
  )
}

cXoncoprint2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    overlaysThickness=100,
    smpOverlayProperties=list(Annt2=list(position="right", type="Bar"), Annt3=list(type="Stacked"), Annt4=list(type="Stacked"), Annt5=list(type="Stacked")),
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5"),
    xAxis=list("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9")
  )
}

cXoncoprint3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    overlaysThickness=100,
    patternBy="Pattern",
    patternByData="data4",
    smpOverlayProperties=list(Annt2=list(position="right", type="Bar"), Annt3=list(type="Stacked"), Annt4=list(type="Stacked"), Annt5=list(type="Stacked")),
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5"),
    xAxis=list("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9")
  )
}

cXoncoprint4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-LungCancinoma-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-LungCancinoma-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-LungCancinoma-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-LungCancinoma-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-LungCancinoma-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data3",
    oncoprintMUT="data4",
    overlaysThickness=100,
    xAxis=list("TCGA-18-3406-01", "TCGA-18-3407-01", "TCGA-18-3408-01", "TCGA-18-3409-01", "TCGA-18-3410-01", "TCGA-18-3411-01", "TCGA-18-3412-01", "TCGA-18-3414-01", "TCGA-18-3415-01", "TCGA-18-3416-01", "TCGA-18-3417-01", "TCGA-18-3419-01", "TCGA-18-3421-01", "TCGA-18-4083-01", "TCGA-18-4086-01", "TCGA-18-4721-01", "TCGA-18-5592-01", "TCGA-18-5595-01", "TCGA-21-1070-01", "TCGA-21-1071-01", "TCGA-21-1076-01", "TCGA-21-1077-01", "TCGA-21-1078-01", "TCGA-21-1081-01", "TCGA-21-5782-01", "TCGA-21-5784-01", "TCGA-21-5786-01", "TCGA-21-5787-01", "TCGA-22-0944-01", "TCGA-22-1002-01", "TCGA-22-1011-01", "TCGA-22-1012-01", "TCGA-22-1016-01", "TCGA-22-4591-01", "TCGA-22-4593-01", "TCGA-22-4595-01", "TCGA-22-4599-01", "TCGA-22-4601-01", "TCGA-22-4604-01", "TCGA-22-4607-01", "TCGA-22-4613-01", "TCGA-22-5471-01", "TCGA-22-5472-01", "TCGA-22-5473-01", "TCGA-22-5474-01", "TCGA-22-5477-01", "TCGA-22-5478-01", "TCGA-22-5480-01", "TCGA-22-5482-01", "TCGA-22-5485-01", "TCGA-22-5489-01", "TCGA-22-5491-01", "TCGA-22-5492-01", "TCGA-33-4532-01", "TCGA-33-4533-01", "TCGA-33-4538-01", "TCGA-33-4547-01", "TCGA-33-4566-01", "TCGA-33-4582-01", "TCGA-33-4583-01", "TCGA-33-4586-01", "TCGA-33-6737-01", "TCGA-34-2596-01", "TCGA-34-2600-01", "TCGA-34-2608-01", "TCGA-34-5231-01", "TCGA-34-5232-01", "TCGA-34-5234-01", "TCGA-34-5236-01", "TCGA-34-5239-01", "TCGA-34-5240-01", "TCGA-34-5241-01", "TCGA-34-5927-01", "TCGA-34-5928-01", "TCGA-34-5929-01", "TCGA-37-3783-01", "TCGA-37-3789-01", "TCGA-37-4133-01", "TCGA-37-4135-01", "TCGA-37-4141-01", "TCGA-37-5819-01", "TCGA-39-5016-01", "TCGA-39-5019-01", "TCGA-39-5021-01", "TCGA-39-5022-01", "TCGA-39-5024-01", "TCGA-39-5027-01", "TCGA-39-5028-01", "TCGA-39-5029-01", "TCGA-39-5030-01", "TCGA-39-5031-01", "TCGA-39-5035-01", "TCGA-39-5036-01", "TCGA-39-5037-01", "TCGA-39-5039-01", "TCGA-43-2578-01", "TCGA-43-3394-01", "TCGA-43-3920-01", "TCGA-43-5668-01", "TCGA-43-6143-01", "TCGA-43-6647-01", "TCGA-43-6770-01", "TCGA-43-6771-01", "TCGA-46-3765-01", "TCGA-46-3766-01", "TCGA-46-3767-01", "TCGA-46-3768-01", "TCGA-46-3769-01", "TCGA-46-6025-01", "TCGA-46-6026-01", "TCGA-51-4079-01", "TCGA-51-4080-01", "TCGA-51-4081-01", "TCGA-56-1622-01", "TCGA-56-5897-01", "TCGA-56-5898-01", "TCGA-56-6545-01", "TCGA-56-6546-01", "TCGA-60-2698-01", "TCGA-60-2707-01", "TCGA-60-2708-01", "TCGA-60-2709-01", "TCGA-60-2710-01", "TCGA-60-2711-01", "TCGA-60-2712-01", "TCGA-60-2713-01", "TCGA-60-2715-01", "TCGA-60-2719-01", "TCGA-60-2720-01", "TCGA-60-2721-01", "TCGA-60-2722-01", "TCGA-60-2723-01", "TCGA-60-2724-01", "TCGA-60-2725-01", "TCGA-60-2726-01", "TCGA-63-5128-01", "TCGA-63-5131-01", "TCGA-63-6202-01", "TCGA-66-2727-01", "TCGA-66-2734-01", "TCGA-66-2742-01", "TCGA-66-2744-01", "TCGA-66-2754-01", "TCGA-66-2755-01", "TCGA-66-2756-01", "TCGA-66-2757-01", "TCGA-66-2758-01", "TCGA-66-2759-01", "TCGA-66-2763-01", "TCGA-66-2765-01", "TCGA-66-2766-01", "TCGA-66-2767-01", "TCGA-66-2768-01", "TCGA-66-2770-01", "TCGA-66-2771-01", "TCGA-66-2773-01", "TCGA-66-2777-01", "TCGA-66-2778-01", "TCGA-66-2780-01", "TCGA-66-2781-01", "TCGA-66-2782-01", "TCGA-66-2783-01", "TCGA-66-2785-01", "TCGA-66-2786-01", "TCGA-66-2787-01", "TCGA-66-2788-01", "TCGA-66-2789-01", "TCGA-66-2791-01", "TCGA-66-2792-01", "TCGA-66-2793-01", "TCGA-66-2794-01", "TCGA-66-2795-01", "TCGA-66-2800-01", "TCGA-70-6722-01", "TCGA-70-6723-01", "TCGA-85-6175-01", "TCGA-85-6560-01", "TCGA-85-6561-01")
  )
}

cXoncoprint5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint5-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint5-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint5-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100
  )
}

cXoncoprint6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint6-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint6-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint6-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100
  )
}

cXoncoprint7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint7-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint7-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint7-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100
  )
}

cXoncoprint8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint8-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint8-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint8-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintEXP="data4",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100
  )
}

cXoncoprint9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint9-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint9-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint9-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintHeatmapPosition="bottom",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100,
    showHeatmapOncoprint=TRUE
  )
}

cXoncoprint10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint10-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint10-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/r/cX-oncoprint10-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3),
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintHeatmapPosition="top",
    oncoprintMUT="data3",
    oncoprintPresorted=TRUE,
    overlaysThickness=100,
    showHeatmapOncoprint=TRUE
  )
}

cXoptionswall1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-optionswall1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="OptionsWall",
    optionsWallChain=list(call=list(iv=list("None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "0.2457", "0.2541", "0.2573", "0.2688", "0.2623", "0.2648", "0.2715", "0.2863", "0.2915", "0.2841", "0.3023", "0.315", "0.3222", "0.3403", "0.3805", "0.3632", "0.4644", "0.4144", "0.4884", "0.4706", "0.4781", "0.4652", "0.5891", "0.4584"), premium=list(38.1, 29.2, 29.2, 27.51, 24.5, 20.08, 23.02, 18.18, 15.2, 13.63, 12.95, 8.64, 7.35, 6.1, 4.9, 4.05, 3.24, 2.73, 2.0, 1.55, 1.25, 1.11, 0.89, 0.6, 0.43, 0.29, 0.18, 0.14, 0.17, 0.07, 0.25, 0.07, 0.16, 0.08, 0.06, 0.03, 0.16, 0.01), volume=list(307.0, 313.0, 0.0, 717.0, 0.0, 671.0, 1.0, 3763.0, 1.0, 937.0, 35.0, 5354.0, 99.0, 1715.0, 88.0, 2555.0, 183.0, 1210.0, 162.0, 4460.0, 85.0, 1914.0, 217.0, 4602.0, 1192.0, 4783.0, 686.0, 4317.0, 2913.0, 2208.0, 306.0, 6066.0, 348.0, 1285.0, 221.0, 2651.0, 463.0, 1379.0)), expiry="2026-09-18", put=list(iv=list("0.3521", "0.3353", "0.3507", "0.3262", "0.3119", "0.3073", "0.2977", "0.3025", "0.3349", "0.2971", "0.3", "0.3098", "0.3067", "0.318", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None"), premium=list(0.17, 0.28, 0.5, 0.51, 0.6, 0.8, 1.0, 1.44, 2.45, 2.43, 3.2, 4.26, 5.2, 6.6, 7.5, 9.44, 11.14, 13.87, 11.9, 17.92, 20.15, 21.18, 24.8, 25.0, 28.75, 36.99, 39.48, 41.3, 50.46, 54.27, 62.62, 64.27, 86.77, 74.46, 79.48, 82.2, 87.22, 111.55), volume=list(3652.0, 2019.0, 19.0, 2399.0, 37.0, 2047.0, 74.0, 3454.0, 46.0, 1717.0, 45.0, 3788.0, 44.0, 832.0, 141.0, 2310.0, 7.0, 217.0, 3.0, 2441.0, 0.0, 135.0, 0.0, 820.0, 485.0, 761.0, 99.0, 440.0, 9.0, 56.0, 5.0, 88.0, 3.0, 13.0, 0.0, 2.0, 0.0, 0.0)), strikes=list(200.0, 205.0, 207.5, 210.0, 212.5, 215.0, 217.5, 220.0, 222.5, 225.0, 227.5, 230.0, 232.5, 235.0, 237.5, 240.0, 242.5, 245.0, 247.5, 250.0, 252.5, 255.0, 257.5, 260.0, 265.0, 270.0, 275.0, 280.0, 285.0, 290.0, 295.0, 300.0, 305.0, 310.0, 315.0, 320.0, 325.0, 330.0)),
    optionsWallExpiry="2026-09-18",
    optionsWallFlankMetric="iv",
    optionsWallSpot=235.59,
    title="OptionsWall: IBM implied-volatility wall (real)"
  )
}

cXoptionswall2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-optionswall2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="OptionsWall",
    optionsWallChain=list(call=list(iv=list("None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "0.2457", "0.2541", "0.2573", "0.2688", "0.2623", "0.2648", "0.2715", "0.2863", "0.2915", "0.2841", "0.3023", "0.315", "0.3222", "0.3403", "0.3805", "0.3632", "0.4644", "0.4144", "0.4884", "0.4706", "0.4781", "0.4652", "0.5891", "0.4584"), premium=list(38.1, 29.2, 29.2, 27.51, 24.5, 20.08, 23.02, 18.18, 15.2, 13.63, 12.95, 8.64, 7.35, 6.1, 4.9, 4.05, 3.24, 2.73, 2.0, 1.55, 1.25, 1.11, 0.89, 0.6, 0.43, 0.29, 0.18, 0.14, 0.17, 0.07, 0.25, 0.07, 0.16, 0.08, 0.06, 0.03, 0.16, 0.01), volume=list(307.0, 313.0, 0.0, 717.0, 0.0, 671.0, 1.0, 3763.0, 1.0, 937.0, 35.0, 5354.0, 99.0, 1715.0, 88.0, 2555.0, 183.0, 1210.0, 162.0, 4460.0, 85.0, 1914.0, 217.0, 4602.0, 1192.0, 4783.0, 686.0, 4317.0, 2913.0, 2208.0, 306.0, 6066.0, 348.0, 1285.0, 221.0, 2651.0, 463.0, 1379.0)), expiry="2026-09-18", put=list(iv=list("0.3521", "0.3353", "0.3507", "0.3262", "0.3119", "0.3073", "0.2977", "0.3025", "0.3349", "0.2971", "0.3", "0.3098", "0.3067", "0.318", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None", "None"), premium=list(0.17, 0.28, 0.5, 0.51, 0.6, 0.8, 1.0, 1.44, 2.45, 2.43, 3.2, 4.26, 5.2, 6.6, 7.5, 9.44, 11.14, 13.87, 11.9, 17.92, 20.15, 21.18, 24.8, 25.0, 28.75, 36.99, 39.48, 41.3, 50.46, 54.27, 62.62, 64.27, 86.77, 74.46, 79.48, 82.2, 87.22, 111.55), volume=list(3652.0, 2019.0, 19.0, 2399.0, 37.0, 2047.0, 74.0, 3454.0, 46.0, 1717.0, 45.0, 3788.0, 44.0, 832.0, 141.0, 2310.0, 7.0, 217.0, 3.0, 2441.0, 0.0, 135.0, 0.0, 820.0, 485.0, 761.0, 99.0, 440.0, 9.0, 56.0, 5.0, 88.0, 3.0, 13.0, 0.0, 2.0, 0.0, 0.0)), strikes=list(200.0, 205.0, 207.5, 210.0, 212.5, 215.0, 217.5, 220.0, 222.5, 225.0, 227.5, 230.0, 232.5, 235.0, 237.5, 240.0, 242.5, 245.0, 247.5, 250.0, 252.5, 255.0, 257.5, 260.0, 265.0, 270.0, 275.0, 280.0, 285.0, 290.0, 295.0, 300.0, 305.0, 310.0, 315.0, 320.0, 325.0, 330.0)),
    optionsWallExpiry="2026-09-18",
    optionsWallFlankMetric="premium",
    optionsWallSpot=235.59,
    title="OptionsWall: IBM premium wall (real)"
  )
}

cXparallelcoordinates1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    showTransition=FALSE,
    smpTextRotate=90,
    title="Iris flower data set",
    xAxis=list("s1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "s12", "s13", "s14", "s15", "s16", "s17", "s18", "s19", "s20", "s21", "s22", "s23", "s24", "s25", "s26", "s27", "s28", "s29", "s30", "s31", "s32", "s33", "s34", "s35", "s36", "s37", "s38", "s39", "s40", "s41", "s42", "s43", "s44", "s45", "s46", "s47", "s48", "s49", "s50", "s51", "s52", "s53", "s54", "s55", "s56", "s57", "s58", "s59", "s60", "s61", "s62", "s63", "s64", "s65", "s66", "s67", "s68", "s69", "s70", "s71", "s72", "s73", "s74", "s75", "s76", "s77", "s78", "s79", "s80", "s81", "s82", "s83", "s84", "s85", "s86", "s87", "s88", "s89", "s90", "s91", "s92", "s93", "s94", "s95", "s96", "s97", "s98", "s99", "s100", "s101", "s102", "s103", "s104", "s105", "s106", "s107", "s108", "s109", "s110", "s111", "s112", "s113", "s114", "s115", "s116", "s117", "s118", "s119", "s120", "s121", "s122", "s123", "s124", "s125", "s126", "s127", "s128", "s129", "s130", "s131", "s132", "s133", "s134", "s135", "s136", "s137", "s138", "s139", "s140", "s141", "s142", "s143", "s144", "s145", "s146", "s147", "s148", "s149", "s150")
  )
}

cXparallelcoordinates2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    smpTextRotate=90,
    title="Iris flower data set",
    xAxis=list("s1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "s12", "s13", "s14", "s15", "s16", "s17", "s18", "s19", "s20", "s21", "s22", "s23", "s24", "s25", "s26", "s27", "s28", "s29", "s30", "s31", "s32", "s33", "s34", "s35", "s36", "s37", "s38", "s39", "s40", "s41", "s42", "s43", "s44", "s45", "s46", "s47", "s48", "s49", "s50", "s51", "s52", "s53", "s54", "s55", "s56", "s57", "s58", "s59", "s60", "s61", "s62", "s63", "s64", "s65", "s66", "s67", "s68", "s69", "s70", "s71", "s72", "s73", "s74", "s75", "s76", "s77", "s78", "s79", "s80", "s81", "s82", "s83", "s84", "s85", "s86", "s87", "s88", "s89", "s90", "s91", "s92", "s93", "s94", "s95", "s96", "s97", "s98", "s99", "s100", "s101", "s102", "s103", "s104", "s105", "s106", "s107", "s108", "s109", "s110", "s111", "s112", "s113", "s114", "s115", "s116", "s117", "s118", "s119", "s120", "s121", "s122", "s123", "s124", "s125", "s126", "s127", "s128", "s129", "s130", "s131", "s132", "s133", "s134", "s135", "s136", "s137", "s138", "s139", "s140", "s141", "s142", "s143", "s144", "s145", "s146", "s147", "s148", "s149", "s150"),
    afterRender=list(list("switchAnnotationToSmp", list("Species")))
  )
}

cXpie1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Pie",
    layout="2X3",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    pieSegmentLabels="inside",
    pieSegmentPrecision=0,
    pieSegmentSeparation=1,
    showPieGrid=TRUE,
    showPieSampleLabel=TRUE,
    showTransition=FALSE,
    xAxis=list("S1", "S2", "S3", "S4", "S5", "S6")
  )
}

cXpie2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Pie",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    pieSegmentLabels="outside",
    pieSegmentPrecision=1,
    pieSegmentSeparation=2,
    pieType="solid",
    showTransition=FALSE,
    xAxis=list("S1")
  )
}

cXpie3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Pie",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    pieBy="Factor1",
    pieSegmentLabels="inside",
    pieSegmentPrecision=0,
    showTransition=FALSE
  )
}

cXradar1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("line"),
    showTransition=FALSE,
    title="Radar - Line",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    ringGraphType=list("area"),
    showTransition=FALSE,
    title="Radar - Area",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("bar"),
    showTransition=FALSE,
    title="Radar - Bar",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    ringGraphType=list("dot"),
    showTransition=FALSE,
    title="Radar - Scatter",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    ringGraphType=list("stacked"),
    showTransition=FALSE,
    title="Radar - Stacked",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=180,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("line"),
    showTransition=FALSE,
    title="Half Radar",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=180,
    circularRotate=-90,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    ringGraphType=list("line"),
    showTransition=FALSE,
    title="Rotated Half Radar",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    ringGraphType=list("line"),
    showTransition=FALSE,
    smpOverlays=list("Factor3", "-", "Factor1", "Factor2"),
    title="Radar with Overlays",
    transitionStep=50,
    transitionTime=1500,
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXradar9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-radar-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-radar-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularTrackGraphType=list("scatter"),
    circularType="radar",
    colorBy="color",
    colorKey=list(color=list(blue="#0000FF", brown="#A52A2A", green="#00FF00", red="#FF0000")),
    graphType="Circular",
    rAxis="radians",
    rAxisPercentShow=FALSE,
    rAxisShow=TRUE,
    setMaxR=6.283185307179586,
    setMaxY=5,
    setMinR=0,
    setMinY=0,
    showLegend=TRUE,
    showSampleNames=FALSE,
    sizeBy="size",
    yAxis=list("radius")
  )
}

cXridgeline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    ridgeBy="Species",
    ridgelineScale=2,
    setMaxX=9,
    setMinX=3.5,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("Sepal.Length")
  )
}

cXridgeline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    ridgeBy="Species",
    ridgelineScale=1.5,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("Sepal.Length"),
    xAxisRugShow=TRUE
  )
}

cXridgeline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    ridgeBy="Species",
    ridgelineScale=2.5,
    showFilledHistogramDensity=TRUE,
    showHistogramDataPoints=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("Sepal.Length")
  )
}

cXridgeline4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    ridgeBy="Species",
    ridgelineScale=1,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramQuantiles=TRUE,
    xAxis=list("Sepal.Length")
  )
}

cXridgeline5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-lincoln-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-lincoln-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="data",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=20,
    ridgeBy="Month",
    ridgelineScale=2.5,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("Temperature")
  )
}

cXridgeline6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ridgeBy="dataset",
    ridgelineScale=2.5,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("x", "y")
  )
}

cXridgeline7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-anscombeQuartet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-anscombeQuartet-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ridgeBy="dataset",
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    xAxis=list("x", "y")
  )
}

cXsplom1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="both",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="upper",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="lower",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlation",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlationHistogram",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlationDensity",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="all",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsplom8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    xAxis=list("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )
}

cXsankey1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodesColor="rgba(20, 250, 50, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    showTransition=FALSE,
    title="Single Level Sankey",
    xAxis=list("Weight")
  )
}

cXsankey2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Weight",
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Single Level Sankey",
    xAxis=list("Weight")
  )
}

cXsankey3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodesColor="rgba(20, 150, 250, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Multilevel Sankey",
    xAxis=list("Weight")
  )
}

cXsankey4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Weight",
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Multilevel Sankey",
    xAxis=list("Weight")
  )
}

cXsankey5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyNodesColor="rgb(255,255,255)",
    scheme="GGPlot",
    title="Alluvial Plot",
    xAxis=list("Freq")
  )
}

cXsankey6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Department",
    graphType="Sankey",
    sankeyAxes=list("Department", "Division", "Requester", "Program", "Operator", "Tool"),
    sankeyNodesColor="rgb(255,255,255)",
    title="Alluvial Plot",
    xAxis=list("Ticket")
  )
}

cXsankey7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodesColor="rgba(20, 150, 250, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    sankeyType="proportional",
    showTransition=FALSE,
    title="Multilevel Sankey (proportional)",
    xAxis=list("Weight")
  )
}

cXsankey8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodesColor="rgba(20, 150, 250, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    sankeyType="equal",
    showTransition=FALSE,
    title="Multilevel Sankey (equal strata)",
    xAxis=list("Weight")
  )
}

cXsankey9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodesColor="rgba(20, 150, 250, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    sankeyType="aligned",
    showTransition=FALSE,
    title="Multilevel Sankey (aligned)",
    xAxis=list("Weight")
  )
}

cXsankey10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="proportional",
    scheme="GGPlot",
    showTransition=FALSE,
    title="Alluvial Plot (proportional)",
    xAxis=list("Freq")
  )
}

cXsankey11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="equal",
    scheme="GGPlot",
    showTransition=FALSE,
    title="Alluvial Plot (equal strata)",
    xAxis=list("Freq")
  )
}

cXsankey12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="aligned",
    scheme="GGPlot",
    showTransition=FALSE,
    title="Alluvial Plot (aligned)",
    xAxis=list("Freq")
  )
}

cXsankey13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Department",
    graphType="Sankey",
    sankeyAxes=list("Department", "Division", "Requester", "Program", "Operator", "Tool"),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="proportional",
    showTransition=FALSE,
    title="Alluvial Plot (proportional)",
    xAxis=list("Ticket")
  )
}

cXsankey14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Department",
    graphType="Sankey",
    sankeyAxes=list("Department", "Division", "Requester", "Program", "Operator", "Tool"),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="aligned",
    showTransition=FALSE,
    title="Alluvial Plot (aligned)",
    xAxis=list("Ticket")
  )
}

cXsankey15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyNodeSort="descending",
    sankeyNodesColor="rgba(20, 150, 250, 0.4)",
    sankeySource="Source",
    sankeyTarget="Target",
    sankeyType="proportional",
    showTransition=FALSE,
    title="Multilevel Sankey Sorted by Value",
    xAxis=list("Weight")
  )
}

cXsankey16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyNodeSort="factor",
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="proportional",
    scheme="GGPlot",
    showTransition=FALSE,
    title="Alluvial Plot with Factor-Ordered Strata",
    xAxis=list("Freq")
  )
}

cXsankey17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Survived",
    colorScheme="GGPlot",
    graphOrientation="horizontal",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyAxesOrder=list(Age=list("Child", "Adult"), Class=list("1st", "2nd", "3rd", "Crew"), Sex=list("Female", "Male"), Survived=list("Yes", "No")),
    sankeyNodesColor="rgb(255,255,255)",
    sankeyType="proportional",
    scheme="GGPlot",
    showTransition=FALSE,
    title="Alluvial Plot with Custom Stratum Order",
    xAxis=list("Freq")
  )
}

cXsankey18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-landcover-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-landcover-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Continent",
    colorKey=list(Continent=list(Africa="rgb(61,150,220)", Antarctica="rgb(0,166,194)", "Arctic Ocean"="rgb(222,104,163)", Asia="rgb(102,160,14)", "Atlantic Ocean"="rgb(206,108,203)", Australia="rgb(0,169,98)", Europe="rgb(158,148,0)", "Indian Ocean"="rgb(216,116,109)", "North America"="rgb(194,132,36)", "Pacific Ocean"="rgb(160,128,224)", "South America"="rgb(0,171,151)")),
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyAxes=list("Global", "Continent", "LandCoverType", "Habitat"),
    sankeyAxesOrder=list(Continent=list("North America", "Europe", "Asia", "Australia", "South America", "Antarctica", "Africa", "Pacific Ocean", "Atlantic Ocean", "Arctic Ocean", "Indian Ocean"), Global="Global", Habitat=list("soil", "shoot", "root", "rhizosphere", "deadwood", "air", "sediment", "litter", "lichen", "water", "topsoil", "dust"), LandCoverType=list("forest", "grassland", "cropland", "aquatic", "desert", "woodland", "shrubland", "tundra", "wetland", "urban", "mangrove")),
    sankeyLinkLineWidth=0.25,
    sankeyLinkOrder="color",
    sankeyLinksOpacity=0.55,
    sankeyLodeGuidance="zigzag",
    sankeyNodePadding=0.5,
    sankeyNodeSort="factor",
    sankeyNodeWidth=66,
    sankeyNodesColor="rgb(237,237,237)",
    sankeyTextAuto=FALSE,
    sankeyTextScaleFontFactor=0.55,
    sankeyTitleColor="rgb(44,111,178)",
    sankeyTitleFontStyle="bold",
    sankeyTitlePosition="top",
    sankeyTitleScaleFontFactor=0.85,
    sankeyType="proportional",
    theme="GGPlot",
    title="Alluvial Plot with Multilevel Land Cover Flows",
    xAxis=list("freq")
  )
}

cXsankey19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-titanicSankey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-titanicSankey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeyAxes=list("Class", "Sex", "Age", "Survived"),
    sankeyAxesOrder=list(Age=list("Child", "Adult"), Class=list("Crew", "3rd", "2nd", "1st"), Sex=list("Male", "Female"), Survived=list("Yes", "No")),
    sankeyColorNodesByValue=TRUE,
    sankeyLinkLineWidth=0.25,
    sankeyLinkOrder="color",
    sankeyLinksOpacity=0.5,
    sankeyLodeGuidance="zigzag",
    sankeyNodeColorMap=list("1st"="#F8766D", "2nd"="#D89000", "3rd"="#A3A500", Adult="#39B600", Child="#00BF7D", Crew="#00BFC4", Female="#00B0F6", Male="#9590FF", No="#E76BF3", Yes="#FF62BC"),
    sankeyNodeLegendTitle="Nodes",
    sankeyNodeSort="factor",
    sankeyNodeWidth=100,
    sankeyTextAuto=FALSE,
    sankeyTitleColor="rgba(77,77,77,1)",
    title="Sankey Diagram with Node-Coloured Strata",
    xAxis=list("freq")
  )
}

cXscatter2d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    decorations=list(marker=list(list(sample=list("Alcohol", "Tobacco"), text="Maybe an Outlier?", variable="Northern Ireland", x=0.45, y=0.18))),
    graphType="Scatter2D",
    showTransition=FALSE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Alcohol"),
    yAxis=list("Tobacco")
  )
}

cXscatter2d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-spider-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-spider-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Response",
    graphType="Scatter2D",
    legendBox=TRUE,
    legendInside=TRUE,
    legendPosition="topRight",
    lineBy="Subject",
    title="Tumor Response by Week",
    xAxis=list("Weeks"),
    yAxis=list("Change From Baseline %")
  )
}

cXscatter2d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-loess2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=TRUE,
    showLoessFit=TRUE,
    title="Loess Fit",
    xAxis=list("E"),
    yAxis=list("NOx")
  )
}

cXscatter2d4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    graphType="Scatter2D",
    histogramBins=5,
    histogramStat="count",
    legendBox=TRUE,
    setMaxX=100,
    setMaxY=150,
    setMinX=0,
    setMinY=0,
    shapeBy="Smoker",
    showHistogramBars=TRUE,
    showTransition=FALSE,
    sizeBy="Age",
    title="Data on the time subjects required to complete a pencil and paper maze\nwhen they were smelling a floral scent and when they were not.",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    xAxisExact=TRUE,
    xAxisHistogramShow=TRUE,
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    yAxisExact=TRUE,
    yAxisHistogramShow=TRUE
  )
}

cXscatter2d5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    confidenceIntervalColorCoordinate=TRUE,
    graphType="Scatter2D",
    legendBox=TRUE,
    showRegressionFit="cyl",
    stringVariableFactors=list("cyl"),
    xAxis=list("wt"),
    yAxis=list("mpg")
  )
}

cXscatter2d6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    confidenceIntervalColorCoordinate=TRUE,
    graphType="Scatter2D",
    legendBox=TRUE,
    showRegressionFit="cyl",
    showRegressionFullRange=TRUE,
    stringVariableFactors=list("cyl"),
    xAxis=list("wt"),
    yAxis=list("mpg")
  )
}

cXscatter2d7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    colorScheme="GreyHC",
    graphType="Scatter2D",
    histogramBins=5,
    histogramStat="count",
    legendBox=TRUE,
    objectBorderColor="rgb(0,0,0)",
    setMaxX=100,
    setMaxY=150,
    setMinX=0,
    setMinY=0,
    shapeBy="Smoker",
    showHistogramBars=TRUE,
    sizeBy="Age",
    title="Data on the time subjects required to complete a pencil and paper maze\nwhen they were smelling a floral scent and when they were not.",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    xAxisExact=TRUE,
    xAxisHistogramShow=TRUE,
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    yAxisExact=TRUE,
    yAxisHistogramShow=TRUE
  )
}

cXscatter2d8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989)",
    citationScaleFontFactor=0.75,
    graphType="Scatter2D",
    showRegressionFit=TRUE,
    title="Mean heights of a group of children in Kalama",
    xAxis=list("Age"),
    yAxis=list("Height")
  )
}

cXscatter2d9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-breastcancert-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="panel",
    citation="Velleman, P. F. and Hoaglin, D. C. (1981).\nApplications, Basics, and Computing of Exploratory Data Analysis. Belmont. CA :  Wadsworth, Inc., pp. 127-134.",
    colors=list("rgba(64,64,64,0.5)"),
    decorationsBackgroundColor="rgb(238,238,238)",
    decorationsBorderColor="rgb(0,0,0)",
    decorationsPosition="bottomRight",
    graphType="Scatter2D",
    legendBackgroundColor="rgba(255,255,255,0)",
    legendInside=TRUE,
    panelBackgroundColor="rgb(238,238,238)",
    showDecorations=TRUE,
    showRegressionFit=TRUE,
    showTransition=FALSE,
    title="Mean annual temperature (in degrees F) and Mortality Index for neoplasms of the female breast.",
    xAxis=list("Mortality"),
    xAxisGridMajorColor="rgb(255,255,255)",
    yAxis=list("Temperature"),
    yAxisGridMajorColor="rgb(255,255,255)"
  )
}

cXscatter2d10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-nonlinearfit-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    xAxis=list("Concentration"),
    xAxisTransform="log10",
    xAxisTransformTicks=TRUE,
    yAxis=list("V1"),
    yAxisExact=TRUE
  )
}

cXscatter2d11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatterR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatterR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="rPretty",
    backgroundType="panel",
    colorBy="Group",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
    decorations=list(line=list(list(color="rgba(205,0,0,0.5)", width=2, y=0.5), list(color="rgba(0,104,139,0.5)", width=2, y=-0.5))),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    legendInside=TRUE,
    legendPosition="bottomRight",
    panelBackgroundColor="rgb(238,238,238)",
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLoessFit=TRUE,
    showTransition=FALSE,
    sizeBy="FC",
    sizes=list(4, 12, 14, 15, 16, 17, 18),
    title="Profile plot",
    xAxis=list("AveExpr"),
    xAxisGridMajorColor="rgb(255,255,255)",
    yAxis=list("logFC"),
    yAxisGridMajorColor="rgb(255,255,255)"
  )
}

cXscatter2d12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatterR2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatterR2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="Group",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
    decorations=list(line=list(list(color="rgba(205,0,0,0.5)", width=2, x=0.5), list(color="rgba(0,104,139,0.5)", width=2, x=-0.5))),
    graphType="Scatter2D",
    hoverTemplate="Group :  {Group}<br/>Gene :  {vars}<br/>logFC :  {logFC}<br/>-log-pVal :  {-log-pVal}<br/>FC :  {FC}<br/>",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    panelBackgroundColor="rgb(238,238,238)",
    showDecorations=TRUE,
    sizeBy="FC",
    sizes=list(4, 12, 14, 15, 16, 17, 18),
    title="Volcano plot",
    xAxis=list("logFC"),
    xAxisGridMajorColor="rgb(255,255,255)",
    yAxis=list("-log-pVal"),
    yAxisGridMajorColor="rgb(255,255,255)"
  )
}

cXscatter2d13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatterR3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatterR3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="rPretty",
    backgroundType="panel",
    colorBy="Group",
    colors=list("rgba(255,215,0,0.5)", "rgba(64,64,64,0.5)", "rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    decorations=list(line=list(list(color="rgba(64,64,64,0.5)", width=2, x=0), list(color="rgba(64,64,64,0.5)", width=2, y=0), list(color="rgba(255,215,0,0.5)", width=2, x=-5, x2=5, y=-5, y2=5))),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    legendInside=TRUE,
    legendPosition="bottomRight",
    panelBackgroundColor="rgb(238,238,238)",
    showDecorations=TRUE,
    showTransition=FALSE,
    sizeBy="Hit",
    sizeByShowLegend=FALSE,
    sizes=list(4, 14),
    title="Contrast plot",
    xAxis=list("logFC-X"),
    xAxisGridMajorColor="rgb(255,255,255)",
    yAxis=list("logFC-Y"),
    yAxisGridMajorColor="rgb(255,255,255)"
  )
}

cXscatter2d14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatterR4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="rPretty",
    backgroundType="panel",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    graphType="Scatter2D",
    legendBackgroundColor="rgba(255,255,255,0)",
    legendInside=TRUE,
    legendPosition="topRight",
    panelBackgroundColor="rgb(238,238,238)",
    title="Waterfall plot",
    xAxis=list("Row"),
    xAxisGridMajorColor="rgb(255,255,255)",
    yAxis=list("S1", "S2"),
    yAxisGridMajorColor="rgb(255,255,255)"
  )
}

cXscatter2d15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-visium-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-visium-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundImage="https://www.canvasxpress.org/assets/images/visium.png",
    backgroundType="panelImage",
    colorBy="signal",
    graphType="Scatter2D",
    plotBox=FALSE,
    scatterType="visium",
    title="Visium Spatial Transcriptomics",
    visiumFlip=FALSE,
    xAxis=list("imagecol"),
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE,
    yAxis=list("imagerow"),
    yAxisGridMajorShow=FALSE,
    yAxisGridMinorShow=FALSE,
    yAxisShow=FALSE
  )
}

cXscatter2d16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-gwas-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    chromosomeLengths=list(1500, 1191, 1040, 945, 877, 825, 784, 750, 721, 696, 674, 655, 638, 622, 608, 595, 583, 572, 562, 553, 544, 535),
    decorations=list(line=list(list(color="rgb(255,0,0)", width=1, y=7), list(color="rgb(0,0,255)", width=1, y=5)), marker=list(list(align="left", offsetX=5, offsetY=0, rotate=-45, sample=list("Chr", "Pos", "-log10(pValue)"), text="rs4064", type="text", variable="rs4064"))),
    graphType="Scatter2D",
    highlightVar=list("rs13895", "rs11846"),
    manhattanMarkerChromosomeNumber="Chr",
    manhattanMarkerLogPValue="-log10(pValue)",
    manhattanMarkerPosition="Pos",
    scatterOutlineThreshold=5000,
    scatterType="manhattan",
    title="Manhattan Plot",
    xAxis=list("Pos"),
    yAxis=list("-log10(pValue)")
  )
}

cXscatter2d17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-fcyt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    dataPointSize=5,
    graphType="Scatter2D",
    scatterOutlineThreshold=1,
    showScatterDensity=TRUE,
    xAxis=list("FL1-A"),
    xAxisTitle="FL1-A",
    xAxisTransform="log10",
    yAxis=list("FL2-A"),
    yAxisTitle="FL2-A",
    yAxisTransform="log10"
  )
}

cXscatter2d18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bump-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-bump-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="group",
    dataPointSize=26,
    graphType="Bump",
    lineBy="group",
    theme="GGPlot"
  )
}

cXscatter2d19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatter2d19-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatter2d19-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="Group",
    colorKey=list(Group=list(Decreased="rgba(33,102,172,0.75)", Increased="rgba(197,27,38,0.75)", NoChange="rgba(150,150,150,0.35)")),
    decorations=list(line=list(list(color="rgba(120,120,120,0.8)", width=1, x=1), list(color="rgba(120,120,120,0.8)", width=1, x=-1), list(color="rgba(120,120,120,0.8)", width=1, y=1.301))),
    graphType="Scatter2D",
    hoverTemplate="Gene: {vars}<br/>log2FC: {logFC}<br/>-log10 p: {-log-pVal}<br/>Regulation: {Group}<br/>Fold change: {FC}",
    labelBy="vars",
    labelSelect=list("AND", list("y", ">", 2), list("OR", list("x", "<", "-1"), list("x", ">", "1"))),
    labelSize=11,
    legendBackgroundColor="rgb(255,255,255)",
    legendBox=TRUE,
    panelBackgroundColor="rgb(245,245,245)",
    setMaxX=2.8,
    setMaxY=4.2,
    setMinX=-3,
    showDecorations=TRUE,
    sizeBy="FC",
    sizes=list(3, 6, 9, 12, 15),
    subtitle="Differential expression: 1,000 genes",
    title="Publication-ready volcano plot",
    xAxis=list("logFC"),
    xAxisGridMajorColor="rgb(255,255,255)",
    xAxisTitle="log2 fold change",
    yAxis=list("-log-pVal"),
    yAxisGridMajorColor="rgb(255,255,255)",
    yAxisTitle="-log10 p-value"
  )
}

cXscatter2d20 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatter2d20-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-scatter2d20-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTickScaleFontFactor=0.8,
    backgroundType="panel",
    colorBy="CellType",
    dataPointSize=4,
    graphType="Scatter2D",
    legendBackgroundColor="rgb(255,255,255)",
    legendBox=TRUE,
    panelBackgroundColor="rgb(245,245,245)",
    subtitle="3,000 cells, 8 annotated cell types",
    title="Single-cell UMAP explorer",
    xAxis=list("UMAP-1"),
    xAxisGridMajorColor="rgb(255,255,255)",
    xAxisTitle="UMAP-1",
    yAxis=list("UMAP-2"),
    yAxisGridMajorColor="rgb(255,255,255)",
    yAxisTitle="UMAP-2"
  )
}

cXscatter3d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTextScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Sepal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTextScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    ellipseBy="Species",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Petal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-loess3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    showConfidenceIntervals=TRUE,
    showLoessFit=TRUE,
    title="Loess Fit",
    xAxis=list("E"),
    xAxisExact=TRUE,
    yAxis=list("NOx"),
    yAxisExact=TRUE,
    zAxis=list("C"),
    zAxisExact=TRUE
  )
}

cXscatter3d4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatter3d-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatter3d5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-scatter3d-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    scatterType="bar",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatter3d6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorBy="Annt1",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    shapeBy="Annt2",
    sizeBy="Annt3",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatterbubble2d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bubble-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-bubble-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    showTransition=FALSE,
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXscatterbubble2d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="ScatterBubble2D",
    xAxis=list("S1", "S4"),
    yAxis=list("S2", "S5"),
    zAxis=list("S3", "S6")
  )
}

cXscatterbubble2d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bubble-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-bubble-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    workflowBy="Year",
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXstacked1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stacked2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-stacked2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorScheme="Blues",
    foreground="rgb(0,0,0)",
    graphOrientation="vertical",
    graphType="Stacked",
    groupingFactors=list("Factor1"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    sampleSpaceFactor=1,
    showTransition=FALSE,
    title="Random Data",
    treemapBy=list("Factor2", "Factor3"),
    xAxis=list("Var1", "Var2", "Var3")
  )
}

cXstacked2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1,
    showDataValues=TRUE,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstacked3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstacked4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    segregateSamplesBy=list("Factor3"),
    showDataValues=TRUE,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstacked5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-diverging-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="wilkinson",
    colorScheme="CanvasXpress",
    graphOrientation="horizontal",
    graphType="Stacked",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    marginRight=20,
    showDataValues=TRUE,
    title="Diverging Stacked Graph",
    xAxis=list("Pants on Fire", "False", "Mostly False", "Half True", "Mostly True", "True"),
    xAxisTickFormat="%s%%"
  )
}

cXstackedline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="StackedLine",
    lineThickness=3,
    lineType="spline",
    showDataValues=TRUE,
    showTransition=FALSE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="StackedLine",
    legendInside=TRUE,
    legendPosition="topRight",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedpercent1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1,
    showDataValues=TRUE,
    showTransition=FALSE,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstackedpercent2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    showDataValues=TRUE,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstackedpercent3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1.5,
    smpTextScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXstackedpercent4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-diverging-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="wilkinson",
    colorScheme="CanvasXpress",
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    marginRight=20,
    showDataValues=TRUE,
    title="Diverging Stacked Percent Graph",
    xAxis=list("Pants on Fire", "False", "Mostly False", "Half True", "Mostly True", "True"),
    xAxisTickFormat="%s%%"
  )
}

cXstackedpercent5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-movieRoles-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-movieRoles-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-movieRoles-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    backgroundType="solid",
    barPath=TRUE,
    barPathColor="rgb(48,116,154)",
    barPathTransparency=1,
    colorBy="Color",
    colors=list("rgb(255,190,179)", "rgb(251,153,134)", "rgb(244,112,96)", "rgb(230,68,72)", "rgb(210,41,63)", "rgb(173,18,58)"),
    fontName="Waltograph",
    fontsExternal=list(list(name="Waltograph", url="https://www.canvasxpress.org/assets/fonts/waltograph42.otf")),
    graphOrientation="horizontal",
    graphType="StackedPercent",
    layoutCollapse=TRUE,
    legendBackgroundColor="rgb(63,149,180)",
    legendColumns=2,
    legendKeyBackgroundBorderColor="rgb(63,149,180)",
    legendKeyBackgroundColor="rgb(63,149,180)",
    legendPosition="bottom",
    legendTextColor="rgb(255,255,255)",
    legendTextScaleFontFactor=2,
    marginBottom=10,
    marginLeft=10,
    marginRight=50,
    marginTop=30,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    patternBy="InOut",
    patterns=list("solid", "stripeHorizontal", "hatchForward", "hatchReverse", "stripeVertical", "polkaDot"),
    plotBackgroundColor="rgb(63,149,180)",
    segregateVariablesBy=list("Gender"),
    showColorLegend=FALSE,
    showLegend=TRUE,
    showLegendTitle=FALSE,
    smpTextColor="rgb(255,255,255)",
    smpTextScaleFontFactor=1.2,
    stripBackgroundBorderColor="rgba(255,255,255,0)",
    stripBackgroundColor="rgba(255,255,255,0)",
    stripTextColor="rgb(255,255,255)",
    stripTextScaleFontFactor=2.2,
    title="Fewer Role Models",
    titleAlign="center",
    titleColor="rgb(252,157,156)",
    titleScaleFontFactor=4.5,
    xAxis=list("Females-in", "Females-out", "Males-in", "Males-out"),
    xAxis2Show=FALSE,
    xAxisGridMajorShow=FALSE,
    xAxisGridMinorShow=FALSE,
    xAxisShow=FALSE
  )
}

cXstackedpercentline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="StackedPercentLine",
    lineThickness=3,
    lineType="spline",
    showDataValues=TRUE,
    showTransition=FALSE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedpercentline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="StackedPercentLine",
    lineThickness=3,
    lineType="spline",
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstreamgraph1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.75,
    scatterStreamExtraSpan=0.1,
    scatterStreamNumber=1000,
    scatterStreamTrueRange="both",
    scatterStreamType="mirror",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.75,
    scatterStreamExtraSpan=0.2,
    scatterStreamNumber=1000,
    scatterStreamTrueRange="none",
    scatterStreamType="mirror",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=1,
    scatterStreamExtraSpan=0.2,
    scatterStreamNumber=1000,
    scatterStreamTrueRange="none",
    scatterStreamType="mirror",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.75,
    scatterStreamExtraSpan=0.1,
    scatterStreamNumber=15,
    scatterStreamTrueRange="both",
    scatterStreamType="mirror",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.75,
    scatterStreamExtraSpan=0.1,
    scatterStreamNumber=1000,
    scatterStreamType="ridge",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-blockbusters-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="panel",
    colorBy="genre",
    colors=list("rgb(255,180,0)", "rgb(255,199,64)", "rgb(194,0,8)", "rgb(255,2,13)", "rgb(19,175,239)"),
    dataPointSizeScaleFactor=0,
    graphType="Scatter2D",
    panelBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.75,
    scatterStreamExtraSpan=0.1,
    scatterStreamNumber=1000,
    scatterStreamType="proportional",
    scatterType="stream",
    showConfidenceIntervals=FALSE,
    showLoessFit="genre",
    xAxis=list("year"),
    xAxisGridMinorShow=FALSE,
    yAxis=list("box_office"),
    yAxisGridMinorShow=FALSE
  )
}

cXstreamgraph7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-comics-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-comics-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundType="solid",
    citation="Visualization inspired by Cédric Scherer's • Data by Claremont Run Project via Malcom Barret • Popularity Scores by ranker.com",
    citationFontStyle="italic",
    citationScaleFontFactor=0.7,
    colorBy="char_costume",
    colorKey=list(char_costume=list("Gambit (casual)   "="rgb(142,3,142)", "Gambit (costumed)   "="rgb(213,5,213)", "Magneto (casual)   "="rgb(194,0,8)", "Magneto (costumed)   "="rgb(255,2,13)", "Nightcrawler (casual)   "="rgb(19,175,239)", "Nightcrawler (costumed)   "="rgb(78,195,243)", "Storm (casual)"="rgb(89,90,82)", "Storm (costumed)"="rgb(115,117,106)", "Wolverine (casual)   "="rgb(255,180,0)", "Wolverine (costumed)   "="rgb(255,199,64)")),
    dataPointSizeScaleFactor=0,
    decorations=list(image=list(list(height=64, scope="depicted", src="https://www.canvasxpress.org/assets/images/uncannyxmen.png", width=100, x=305, y=-500)), label=list(list(align="left", background="rgb(255,255,255)", color="rgb(142,3,142)", justify=50, label="**Gambit** was introduced for the first time inissue #266 called Gambit => Out of the Frying Pan nevertheless, he is the **4 most popular X-Men character**!", scope="depicted", x=250, y=-90), list(align="left", background="rgb(255,255,255)", color="rgb(255,180,0)", justify=50, label="**Wolverine is the most popular X-Men** and has a regular presence in the X-Men comics between 1975 and 1991.", scope="depicted", x=65, y=70), list(align="left", background="rgb(255,255,255)", color="rgb(194,0,8)", justify=50, label="**Magneto** was ranked by IGN as the *Greatest Comic Book Villain of All Time*. And even though he only appears from time to time he **ranks 2nd **—4 ranks higher than his friend and opponent Professor X!", scope="narrative", x=215, y=-90), list(align="left", background="rgb(255,255,255)", color="rgb(19,175,239)", justify=50, label="The **3rd most popular X-men character Nightcrawler** gets injured during the 'Mutant Massacre' and fell into a coma after an attack from Riptide in issue #211", scope="speech", x=211, y=-110), list(align="left", background="rgb(255,255,255)", color="rgb(89,90,82)", justify=50, label="**Storm** is by far the most thoughtful of the five most popular X-Men characters, especially in issues #220, #223 and #265. Storm **ranks 5th**", scope="thought", x=220, y=-73)), text=list(list(align="left", color="rgb(0,0,0)", label="Depicted", scope="depicted", x=85, y=-50), list(align="left", color="rgb(0,0,0)", label="Narrative\nStatements", scope="narrative", x=85, y=-50), list(align="left", color="rgb(0,0,0)", label="Speech\nBubbles", scope="speech", x=85, y=-50), list(align="left", color="rgb(0,0,0)", label="Thought\nBubbles", scope="thought", x=85, y=-50))),
    decorationsClipped=FALSE,
    decorationsTextScaleFontFactor=0.45,
    fontName="Trebuchet MS",
    graphType="Scatter2D",
    layoutTopology="4X1",
    layoutType="rows",
    legendBackgroundBorderColor="rgb(0,0,0)",
    legendBackgroundColor="rgb(255,255,255)",
    legendColumns=5,
    legendOrder=list(char_costume=list("Wolverine (casual)   ", "Magneto (casual)   ", "Nightcrawler (casual)   ", "Gambit (casual)   ", "Storm (casual)", "Wolverine (costumed)   ", "Magneto (costumed)   ", "Nightcrawler (costumed)   ", "Gambit (costumed)   ", "Storm (costumed)")),
    legendPosition="bottom",
    legendTextScaleFontFactor=0.45,
    marginBottom=25,
    marginTop=25,
    panelBackgroundColor="rgb(222,222,222)",
    plotBackgroundColor="rgb(222,222,222)",
    scatterStreamBandwidth=0.55,
    scatterStreamExtraSpan=0.1,
    scatterStreamWiggles=list("Wolverine (casual)   ", "Wolverine (costumed)   ", "Magneto (casual)   ", "Magneto (costumed)   ", "Nightcrawler (casual)   ", "Nightcrawler (costumed)   ", "Gambit (casual)   ", "Gambit (costumed)   ", "Storm (casual)", "Storm (costumed)"),
    scatterType="stream",
    segregateVariablesBy=list("parameter"),
    setMaxX=325,
    setMinX=75,
    showLegendTitle=FALSE,
    showLoessFit="char_costume",
    stripShow=FALSE,
    title="Appearance of the Five Most Popular X-Men Characters in Chris Claremont's Comics",
    titleScaleFontFactor=0.6,
    xAxis=list("issue"),
    xAxisGridMajorLineType="dotted",
    xAxisGridMajorSize=2,
    xAxisGridMinorShow=FALSE,
    yAxis=list("value"),
    yAxisGridMajorShow=FALSE,
    yAxisGridMinorShow=FALSE,
    yAxisShow=FALSE,
    yAxisTickBottomShow=FALSE,
    yAxisTickTopShow=FALSE,
    yAxisTicks=0,
    yAxisTitle=FALSE
  )
}

cXsunburst1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=0,
    circularType="sunburst",
    colorBy="Quarter",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Simple Sunburst",
    xAxis=list("Sales")
  )
}

cXsunburst2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=0,
    circularType="sunburst",
    colorBy="Month",
    colorScheme="RdYlBu",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Simple Sunburst Colored by Category",
    xAxis=list("Sales")
  )
}

cXsunburst3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=-90,
    circularType="sunburst",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Rotated Sunburst",
    xAxis=list("Sales")
  )
}

cXsunburst4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=180,
    circularRotate=-90,
    circularType="sunburst",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Rotated Half Sunburst",
    xAxis=list("Sales")
  )
}

cXswimmer1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-swimmer-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-swimmer-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    colorScheme="CanvasXpress",
    graphOrientation="horizontal",
    graphType="Bar",
    groupingFactors=list("Subject"),
    objectColorTransparency=0.5,
    smpOverlays=list("Durable"),
    sortData=list(list("cat", "smp", "Response")),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    title="Tumor Response with Duration by Stage and Month",
    xAxis=list("high", "start", "end"),
    xAxisTitle="Duration of Treatment in Months"
  )
}

cXswimmer2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-swimmer-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-swimmer-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Subject"),
    objectColorTransparency=0.5,
    smpOverlayProperties=list(Durable=list(position="bottom"), Response=list(position="bottom", thickness=100, type="Bar")),
    smpOverlays=list("Durable", "Response"),
    smpTextRotate=90,
    sortData=list(list("cat", "smp", "Response")),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    title="Tumor Response with Duration by Stage and Month",
    xAxis=list("high", "start", "end"),
    xAxisTitle="Duration of Treatment in Months"
  )
}

cXtcga1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    binned=TRUE,
    boxplotWhiskersType="single",
    colorBy="dataset",
    colorScheme="JCO",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    plotStyle="open",
    segregateVariablesBy=list("variable"),
    showBoxplotOriginalData=TRUE,
    smpTextRotate=90,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXtcga2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotWhiskersType="single",
    colorBy="dataset",
    colorScheme="JCO",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    plotStyle="open",
    segregateVariablesBy=list("variable"),
    smpTextRotate=90,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXtcga3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotWhiskersType="single",
    colorBy="variable",
    colorScheme="JCO",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    plotStyle="open",
    smpTextRotate=90,
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXtcga4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotWhiskersType="single",
    colorBy="dataset",
    colorScheme="JCO",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    plotStyle="open",
    segregateVariablesBy=list("variable"),
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXtcga5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    boxplotWhiskersType="single",
    colorBy="dataset",
    colorScheme="JCO",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dataset"),
    histogramBins=150,
    jitter=TRUE,
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    plotStyle="open",
    segregateVariablesBy=list("variable"),
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1")
  )
}

cXtcga6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=15,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    showFilledHistogramDensity=TRUE,
    showHistogram=TRUE,
    showHistogramBars=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1"),
    xAxisRugShow=FALSE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=15,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    segregateVariablesBy=list("dataset"),
    showFilledHistogramDensity=TRUE,
    showHistogram="dataset",
    showHistogramBars=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1"),
    xAxisRugShow=FALSE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorKey=list(dataset=list(BRCA="#0073c2", LUSC="#efc000", OV="#868686")),
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=15,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogram="dataset",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripBackgroundColor="rgba(0,0,0,0)",
    stripTextColor="rgb(0,0,0)",
    toolbarType="over",
    xAxis=list("GATA3", "PTEN", "XBP1"),
    xAxisRugShow=TRUE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorScheme="JCO",
    graphType="Scatter2D",
    layoutTopology="1X3",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    scatterType="qq",
    xAxis=list("GATA3", "PTEN", "XBP1"),
    xAxisTitle="",
    yAxisTitle=""
  )
}

cXtcga10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorScheme="JCO",
    graphType="Scatter2D",
    layoutTopology="1X3",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    scatterType="cdf",
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    xAxis=list("GATA3", "PTEN", "XBP1"),
    xAxisTitle="Expression",
    yAxisTitle="F(Expression)"
  )
}

cXtagcloud1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Country",
    graphType="TagCloud",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showTransition=FALSE,
    xAxis=list("MPG", "Weight", "Drive_Ratio", "Horsepower", "Displacement", "Cylinders")
  )
}

cXtree1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree",
    treeLabelAlign="left",
    xAxis=list("Order")
  )
}

cXtree2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-tree2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-tree2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Tree",
    hierarchy=list("Level1", "Level2"),
    showTransition=TRUE,
    title="Collapsible Tree",
    xAxis=list("Order")
  )
}

cXtree3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot1",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showTransition=TRUE,
    title="Collapsible Tree",
    treeLabelAlign="right",
    xAxis=list("Order")
  )
}

cXtree4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot2",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree",
    xAxis=list("Order")
  )
}

cXtree5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot2",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree",
    treeType="circular",
    xAxis=list("Order")
  )
}

cXtree6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-bracket-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-bracket-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Tree",
    hierarchy=list("Final", "Semifinal", "4th", "8th"),
    showTransition=FALSE,
    title="Bracket",
    treeBracketLabelAlign="left",
    treeClickDisable=TRUE,
    treeInverted=TRUE,
    treeNodeSizeScaleFactor=4,
    treeType="bracket",
    xAxis=list("Goals")
  )
}

cXtreemap1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.15, y=0.1))),
    graphType="Treemap",
    objectBorderColor="rgb(0,0,0)",
    showDecorations=FALSE,
    showTransition=FALSE,
    title="Population colored by Gross National Income 2014",
    xAxis=list("population"),
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXtreemap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Treemap",
    xAxis=list("V1", "V2", "V3", "V4")
  )
}

cXtreemap3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.2, y=0.1))),
    graphOrientation="vertical",
    graphType="Stacked",
    legendInside=TRUE,
    legendPosition="right",
    objectBorderColor="rgb(0,0,0)",
    smpTextRotate=45,
    subtitle="2014 Census",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    xAxis=list("population"),
    xAxisGridMinorShow=FALSE,
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXupset1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-upsetMovies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/r/cX-upsetMovies-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Heatmap",
    heatmapType="upset",
    xAxis=list("Action", "Adventure", "Children", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "Noir", "Horror", "Musical", "Mystery", "Romance", "SciFi", "Thriller", "War", "Western")
  )
}

cXupset2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-upsetMutations-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    heatmapType="upset",
    xAxis=list("TTN", "PTEN", "TP53", "EGFR", "MUC16", "FLG", "RYR2", "PCLO", "PIK3R1", "PIK3CA", "NF1", "MUC17", "HMCN1", "SPTA1", "USH2A", "RB1", "PKHD1", "OBSCN", "AHNAK2", "RYR3", "RELN", "FRAS1", "GPR98", "DNAH5", "ATRX", "APOB", "TCHH", "SYNE1", "LRP2", "KEL", "HRNR", "DNAH3", "COL6A3", "MUC5B", "LAMA1", "DSP", "DNAH8", "CNTNAP2", "SDK1", "NBPF10", "DNAH2", "NLRP5", "MLL3", "IDH1", "HCN1", "FCGBP", "DOCK5", "RIMS2", "PCDHA1", "MXRA5", "HEATR7B2", "GRIN2A", "FGD5", "TMEM132D", "STAG2", "SEMA3C", "SCN9A", "PRDM9", "POM121L12", "PIK3CG", "PDGFRA", "GABRA6", "FLG2", "FBN3", "FBN2", "FAT2", "DNAH11", "DMD", "COL1A2", "ABCC9", "XIRP2", "TSHZ2", "TEX15", "SLIT3", "RBM47", "PIK3C2G", "PCDH11X", "MYH2", "MACF1", "KSR2", "DNAH9", "DCHS2", "CSMD3", "CDH18", "BCOR", "AHNAK", "ZAN", "TRRAP", "THSD7B", "TAF1L", "SPAG17", "SLCO5A1", "SCN10A", "RYR1", "RIMBP2", "PLEKHG4B", "PCDHB7", "NPTX2", "NOS1", "LZTR1")
  )
}

cXvenn1 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(A=340, AB=639, ABC=552, ABCD=148, ABD=578, AC=456, ACD=298, AD=257, B=562, BC=915, BCD=613, BD=354, C=620, CD=143, D=592),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    showTransition=FALSE,
    vennGroups=4
  )
}

cXvenn2 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(A=340, AB=639, ABC=552, ABCD=148, ABD=578, AC=456, ACD=298, AD=257, B=562, BC=915, BCD=613, BD=354, C=620, CD=143, D=592),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    showTransition=FALSE,
    vennGroups=3
  )
}

cXvenn3 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(A=340, AB=639, ABC=552, ABCD=148, ABD=578, AC=456, ACD=298, AD=257, B=562, BC=915, BCD=613, BD=354, C=620, CD=143, D=592),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    vennGroups=2
  )
}

cXviolin1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="area",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="count",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="width",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinTrim=FALSE,
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotMean=TRUE,
    boxplotMeanColor="rgb(255,215,0)",
    boxplotMeanColorBorder="red",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotMedianColor="red",
    boxplotMedianWidth=5,
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    binAlignment="center",
    binned=TRUE,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotColor="gold",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    shapeBy="supp",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinColor="gold",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose"),
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="supp",
    colorScheme="GGPlot",
    connectBy="order",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=FALSE,
    panelBackgroundColor="#E5E5E5",
    segregateSamplesBy=list("supp"),
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose", "order"),
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin18-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin18-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Half Violin Plot (Left)",
    violinScale="area",
    violinSide="lt",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin19-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin19-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Half Violin Plot (Right)",
    violinScale="area",
    violinSide="rb",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin20 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin20-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin20-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Half Violin with Boxplot",
    violinScale="area",
    violinSide="lt",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin21 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin21-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin21-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Raincloud Plot",
    violinScale="area",
    violinSide="lt",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin22 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin22-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin22-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=0,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Horizontal Raincloud Plot",
    violinScale="area",
    violinSide="lt",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin23 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin23-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin23-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="supp",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    jitterFactor=0.5,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose", "supp"),
    title="Split Violin by Supplement",
    violinPointsSide="center",
    violinScale="area",
    violinSide="split",
    violinTrim=FALSE,
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin24 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin24-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin24-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    colorBy="supp",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=FALSE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=0,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    stringSampleFactors=list("dose", "supp"),
    title="Horizontal Split Violin",
    violinScale="area",
    violinSide="split",
    violinTrim=FALSE,
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin25 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin25-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin25-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Per-Group Half Violin Sides",
    violinScale="area",
    violinSide=list("0.5"="lt", "1"="rb", "2"="lt"),
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin26 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin26-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin26-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Custom Partition Order",
    violinPartitionOrder=list("points", "boxplot", "violin"),
    violinScale="area",
    violinSide="rb",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin27 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin27-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin27-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTitleFontStyle="bold",
    background="white",
    backgroundType="panel",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guidesColor="white",
    guidesLineType="solid",
    guidesShow=TRUE,
    jitter=TRUE,
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    title="Points Side Override",
    violinPointsSide="lt",
    violinScale="area",
    violinSide="lt",
    xAxis=list("len"),
    xAxis2Show=FALSE,
    xAxisGridMajorColor="white",
    xAxisGridMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin28 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin28-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin28-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="panel",
    colorBy="Cohort",
    connectBy="Subject",
    connectByPointColor=TRUE,
    connectByWidth=1,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("Condition"),
    guidesColor="white",
    guidesShow=TRUE,
    jitter=TRUE,
    jitterFactor=0.7,
    legendColumns=3,
    legendPosition="top",
    panelBackgroundColor="#E5E5E5",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTitle="Condition",
    stringSampleFactors=list("Condition"),
    title="Connected Raincloud (Baseline vs Followup)",
    violinScale="area",
    violinSide=list(Baseline="lt", Followup="rb"),
    violinTrim=FALSE,
    xAxis=list("Value"),
    xAxisTitle="Value"
  )
}

cXviolin29 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-violin29-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-violin29-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="panel",
    boxplotWidthRatioIfViolin=0.15,
    colorBy="Cohort",
    colorScheme="GGPlot",
    connectBy="Subject",
    connectByPointColor=TRUE,
    connectByWidth=1,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("Condition"),
    guidesColor="white",
    guidesShow=TRUE,
    jitter=TRUE,
    jitterFactor=0.6,
    layoutTopology="1X3",
    panelBackgroundColor="#EDEDED",
    segregateSamplesBy=list("Cohort"),
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showBoxplotOriginalDataColor=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpTextRotate=90,
    smpTextScaleFontFactor=0.83,
    smpTitle="Condition",
    stringSampleFactors=list("Condition", "Cohort"),
    title="Paired Raincloud by Cohort",
    violinScale="width",
    violinSide=list(Baseline="lt", Followup="rb"),
    violinTransparency=0.5,
    xAxis=list("Value"),
    xAxisTitle="Value"
  )
}

cXwaterfall1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-waterfall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-waterfall-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Waterfall plot changes in QoL scores",
    xAxis=list("QoL-Score"),
    xAxisTitle="Change from baseline (%) in QoL score"
  )
}

cXwaterfall2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-waterfall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-waterfall-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    segregateSamplesBy=list("Treatment"),
    showLegend=FALSE,
    showSampleNames=FALSE,
    stripBackgroundBorderColor="rgb(0,0,0)",
    stripTextColor="rgb(0,0,0)",
    title="Waterfall plot changes in QoL scores",
    xAxis=list("QoL-Score"),
    xAxisTitle="Change from baseline (%) in QoL score"
  )
}

cXwaterfall3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-waterfall2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/r/cX-waterfall2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Tissue",
    colorScheme="NEJM",
    graphOrientation="vertical",
    graphType="Bar",
    legendInside=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="topRight",
    showSampleNames=FALSE,
    smpOverlayProperties=list(Status=list(position="bottom", scheme="White")),
    smpOverlays=list("Status"),
    title="Clinical Trial",
    xAxis=list("Shrinkage"),
    xAxis2Show=FALSE,
    xAxisTitle="Best tumor shrinkage (%)"
  )
}

cXwaterfall4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-waterfall3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Waterfall",
    showLegend=FALSE,
    smpTextRotate=90,
    smpTitle="Samples",
    title="Traditional Waterfall",
    xAxis=list("V1"),
    xAxisTitle="Value"
  )
}

cXwaterfall5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/r/cX-waterfall4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Waterfall",
    smpTextRotate=90,
    smpTitle="Samples",
    title="Traditional Waterfall",
    xAxis=list("V1", "V2"),
    xAxisTitle="Value"
  )
}

