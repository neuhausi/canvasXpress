cXarea1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="CanvasXpress",
    graphOrientation="vertical",
    graphType="Area",
    lineType="rect",
    objectBorderColor=FALSE,
    showLegend=FALSE,
    showSampleNames=TRUE,
    showTransition=FALSE,
    smpLabelRotate=90,
    smpTitle="time"
  )
}

cXarea2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    objectBorderColor=FALSE,
    objectColorTransparency=0.7,
    showTransition=FALSE,
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    theme="CanvasXpress",
    title="Age distribution of population in the United States",
    xAxis2Show=FALSE,
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Area",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="right",
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis2Show=FALSE,
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="percent",
    colorScheme="CanvasXpress",
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    showTransition=FALSE,
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis2Show=FALSE,
    xAxisTitle="Normalized Percentage of People"
  )
}

cXarea5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=FALSE,
    title="Steam Plot"
  )
}

cXarea6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-area2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    axisAlgorithm="wilkinsonExtended",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    objectBorderColor=FALSE,
    objectColorTransparency=0.6,
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Data Mountain"
  )
}

cXarealine1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-arealine-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="CanvasXpress",
    graphOrientation="vertical",
    graphType="AreaLine",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarealine2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-arealine-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="AreaLine",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarealine3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-arealine-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Paired",
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="AreaLine",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United States",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXbar1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-basic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpTitle="Samples",
    theme="CanvasXpress",
    title="Bar Graph Title",
    xAxisTitle="Value"
  )
}

cXbar2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-basic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(marker=list(list(color="red", fontSize=14, position="top", sample="S1", text="p < 0.01 ***", type="annotation", variable="V1"), list(fontSize=14, position="top", sample="S2", text="p < 0.05 **", type="annotation", variable="V1"), list(color="red", fontSize=14, fontStyle="bold", sample="S2", sample2="S3", text="p < 0.01 ***", type="comparison", variable="V1", variable2="V1"))),
    graphOrientation="vertical",
    graphType="Bar",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpTitle="Samples",
    theme="CanvasXpress",
    title="Simple Bar graph with annotations",
    xAxisTitle="Value"
  )
}

cXbar3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-basic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    showDataValues=TRUE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpTitle="Samples",
    theme="CanvasXpress",
    title="Bar Graph Title",
    xAxisTitle="Value"
  )
}

cXbar4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-basic2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    smpLabelRotate=90,
    smpTitle="Samples",
    theme="CanvasXpress",
    title="Bar graph with two series",
    xAxisTitle="Value"
  )
}

cXbar5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorScheme="CanvasXpress",
    decorations=list(marker=list(list(sample="setosa", text="Species with__nl__lowest petal__nl__width", variable="Petal.Width", x=0.4, y=0.85))),
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Species"),
    legendColumns=2,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottom",
    showTransition=FALSE,
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE
  )
}

cXbar6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Species"),
    legendColumns=2,
    legendPosition="bottom",
    showTransition=FALSE,
    smpLabelRotate=90,
    smpTitle="Species",
    splitSamplesBy="Species",
    theme="blackAndWhite",
    title="Iris flower data set",
    xAxis2Show=FALSE
  )
}

cXbar7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    fontStyle="bold italic",
    graphOrientation="vertical",
    graphType="Bar",
    legendTextFontStyle="italic",
    plotByVariable=TRUE,
    smpLabelFontStyle="italic",
    smpLabelInterval=2,
    smpLabelRotate=45,
    smpTitle="Sample Title",
    theme="CanvasXpress",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorBy="Drug Sensitivity",
    colorScheme="CanvasXpress",
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    decorationsTextScaleFontFactor=1.3,
    graphOrientation="vertical",
    graphType="Bar",
    legendBox=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    smpTitle="Cell Lines",
    smpTitleFontStyle="bold",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-simple-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-simple-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorBy="IC50",
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    decorationsTextScaleFontFactor=1.3,
    graphOrientation="vertical",
    graphType="Bar",
    smpOverlays=list("Drug Sensitivity"),
    smpTitle="Cell Lines",
    smpTitleFontStyle="bold",
    theme="CanvasXpress",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="CanvasXpress",
    graphType="Bar",
    is3DPlot=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    scatterType="bar",
    widthFactor=1.2,
    x3DRatio=0.5
  )
}

cXbar11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.2, y=0.1))),
    graphOrientation="vertical",
    graphType="Stacked",
    groupingFactors=list("continent"),
    legendInside=TRUE,
    legendPosition="right",
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    smpLabelRotate=45,
    subtitle="2014 Census",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    widthFactor=4,
    xAxisTicksMinorShow=FALSE
  )
}

cXbar12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-swimmer-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-swimmer-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    colorScheme="CanvasXpress",
    graphOrientation="horizontal",
    graphType="Bar",
    groupingFactors=list("Subject"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor=FALSE,
    objectColorTransparency=0.5,
    smpOverlays=list("Durable"),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    title="Tumor Response with Duration by Stage and Month",
    xAxisTitle="Duration of Treatment in Months"
  )
}

cXbar13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-swimmer-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-swimmer-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    graphOrientation="vertical",
    graphType="Bar",
    groupingFactors=list("Subject"),
    objectBorderColor=FALSE,
    objectColorTransparency=0.5,
    smpOverlayProperties=list(Durable=list(position="bottom"), Response=list(position="bottom", thickness=100, type="Bar")),
    smpOverlays=list("Durable", "Response"),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    theme="CanvasXpress",
    title="Tumor Response with Duration by Stage and Month",
    xAxisTitle="Duration of Treatment in Months"
  )
}

cXbar14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-audrey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-audrey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Result",
    colorScheme="Greens",
    graphType="Bar",
    groupingFactors=list("Award"),
    legendColumns=2,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=2,
    maxSmpStringLen=50,
    objectBorderColor="rgb(0,0,0)",
    showLegendTitle=FALSE,
    smpLabelScaleFontFactor=2,
    stackBy="Result",
    summaryType="count",
    title="The Awards of Audrey Hepburn",
    xAxis2Show=TRUE,
    xAxisShow=FALSE
  )
}

cXbar15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-animationMovies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    background="rgb(48,114,148)",
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
    showLegend=FALSE,
    smpLabelColor="rgb(255,255,255)",
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.5,
    title="Animation Movies",
    titleColor="rgb(255,255,255)",
    titleScaleFontFactor=2.5,
    widthFactor=1.1,
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXbar16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-movies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-movies-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    background="rgb(48,114,148)",
    backgroundType="solid",
    barPath=TRUE,
    barPathColor="rgb(48,126,164)",
    barPathTransparency=1,
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
    showLegend=FALSE,
    smpLabelColor="rgb(255,255,255)",
    smpLabelScaleFontFactor=3,
    title="Friendship, Love, Family",
    titleColor="rgb(254,225,60)",
    titleScaleFontFactor=2.5,
    widthFactor=1.1,
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXbarline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=45,
    smpTitle="Collection of Samples",
    subtitle="Random Data",
    theme="CanvasXpress",
    title="Bar-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxis2TickFormat="%.0f T",
    xAxisTickFormat="%.0f M"
  )
}

cXbarline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxis2=list("V3", "V4")
  )
}

cXbarline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Bar-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXboxplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    objectBorderColor=FALSE,
    objectColorTransparency=0.5,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    boxplotNotched=TRUE,
    boxplotOutliersRatio=3,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    splitSamplesBy="dose",
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    boxplotMean=TRUE,
    boxplotMeanColor="rgb(255,215,0)",
    boxplotMeanColorBorder="red",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    boxplotMedianColor="red",
    boxplotMedianWidth=5,
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    boxplotHingeFunction="fivenum",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    jitter=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    binAlignment="center",
    binned=TRUE,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    jitter=FALSE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=TRUE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    shapeBy="supp",
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotType="range",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len",
    afterRender=list(list("pivotX", list("dose")))
  )
}

cXboxplot16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    segregateSamplesBy=list("supp"),
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="supp",
    colorScheme="GGPlot",
    connectBy="order",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    segregateSamplesBy=list("supp"),
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose", "order"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXboxplot19 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)"
  )
}

cXbubble1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Annual CO2 Emmisions in 2018"
  )
}

cXbubble2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Annual CO2 Emmisions in 2018"
  )
}

cXbubble3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    afterRender=list(list("modifyLabelCoordinates", list(list("Central America", -100, 100, true))), list("modifyLabelCoordinates", list(list("South America", 10, -50, true))), list("modifyLabelCoordinates", list(list("North America", 10, -50))))
  )
}

cXbubble4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-CO2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-CO2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    afterRender=list(list("modifyLabelCoordinates", list(list("Central America", -100, 100, true))), list("modifyLabelCoordinates", list(list("South America", 10, -50, true))), list("modifyLabelCoordinates", list(list("North America", 10, -50))))
  )
}

cXchord1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
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
    theme="CanvasXpress",
    title="Rotated Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-chord-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Rotated Half Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    connections=list(list("rgb(255,0,0)", "s1", "s15"), list("rgb(0,255,0)", "s25", "s120"), list("rgb(255,0,0)", "s34", "s2"), list("rgb(255,0,0)", "s47", "s69"), list("rgb(255,0,0)", "s15", "s74"), list("rgb(0,120,0)", "s57", "s87"), list("rgb(255,34,0)", "s54", "s118"), list("rgb(255,0,100)", "s78", "s18"), list("rgb(255,134,0)", "s90", "s48"), list("rgb(120,0,0)", "s120", "s68"), list("rgb(255,0,0)", "s131", "s92"), list("rgb(0,255,0)", "s148", "s119"), list("rgb(0,0,255)", "s10", "s14"), list("rgb(255,0,0)", "s56", "s6"), list("rgb(255,0,0)", "s98", "s90"), list("rgb(255,0,0)", "s113", "s20")),
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("dot", "heatmap", "bar"),
    ringGraphWeight=list(50, 25, 25),
    segregateSamplesBy=list("Species"),
    segregateVariablesBy=list("Ring"),
    showTransition=FALSE,
    smpOverlays=list("Species"),
    title="Iris flower data set (1D Circular Plot)",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-circular2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-circular2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-circular2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    connections=list(list("rgb(0,0,255)", "setosa", 42, "versicolor", 35, 1, 2), list("rgb(0,255,0)", "virginica", 26, "versicolor", 15, 4, 8), list("rgb(120,0,255)", "setosa", 36, "virginica", 5, 6, 9), list("rgb(0,40,255)", "versicolor", 9, "versicolor", 18, 2, 5), list("rgb(80,0,55)", "versicolor", 14, "setosa", 9, 3, 4), list("rgb(0,55,140)", "setosa", 12, "setosa", 41, 5, 2), list("rgb(255,0,0)", "virginica", 25, "setosa", 3, 2, 6)),
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    rAxis="Number",
    ringGraphWeight=list(25, 25, 25, 25),
    segregateSamplesBy=list("Species"),
    segregateVariablesBy=list("Ring"),
    showTransition=FALSE,
    title="Iris flower data set (2D Circular Plot)",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Species",
    connections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("heatmap"),
    samplesClustered=TRUE,
    smpDendrogramPosition="outside",
    smpOverlays=list("Species"),
    title="Iris flower data set (Dendrogram Outside)"
  )
}

cXcircular4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-circular-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-circular-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-circular-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Species",
    connections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    graphType="Circular",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ringGraphType=list("heatmap"),
    ringsOrder=list("labels", "overlays", "dendrogram", "labels", "data"),
    samplesClustered=TRUE,
    smpDendrogramPosition="inside",
    smpOverlays=list("Species"),
    title="Iris flower data set (Dendrogram Inside)"
  )
}

cXcircular5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    arcSegmentsSeparation=3,
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    connections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    graphType="Circular",
    showIdeogram=TRUE,
    title="Default Settings"
  )
}

cXcircular6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    arcSegmentsSeparation=3,
    circularAnchors2Align="inside",
    circularAnchorsAlign="outside",
    circularCenterProportion=0.5,
    circularLabelsAlign="inside",
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    connections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    graphType="Circular",
    ringGraphType=list("heatmap", "stacked"),
    ringsOrder=list("chromosomes", "Annt1", "Lev:1", "anchors", "labels", "ideogram", "anchors2", "Lev:4"),
    segregateSamplesBy=list("Factor4"),
    showIdeogram=TRUE,
    title="Custom Plotting Order"
  )
}

cXcircular7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-ideogram-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-ideogram-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-ideogram-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    arcSegmentsRadius=list(1, 1.05, 1.1, 1.15),
    arcSegmentsSeparation=3,
    colorScheme="Tableau",
    colors=list("#332288", "#6699CC", "#88CCEE", "#44AA99", "#117733", "#999933", "#DDCC77", "#661100", "#CC6677", "#AA4466", "#882255", "#AA4499"),
    connections=list(list("rgb(0,0,255)", 1, 17615830, 13, 60500000, 100000000, 20000000), list("rgb(0,255,0)", 1, 2300000, 8, 13650000, 40000000, 80000000), list("rgb(120,0,255)", 3, 71800000, 17, 6800000, 50000000, 25000000), list("rgb(0,40,255)", 7, 71800000, 12, 5520000, 200000000, 80000000), list("rgb(80,0,55)", 4, 8430000, 22, 6600000, 100000000, 50000000), list("rgb(0,55,140)", 4, 3100000, 14, 64100000, 58000000, 10000000), list("rgb(255,0,0)", 2, 94840000, 20, 6243500, 70000000, 30000000)),
    graphType="Circular",
    ringGraphType=list("heatmap", "area", "stacked", "dot", "bar"),
    ringsOrder=list("scale", "ideogram", "labels", "anchors", "Annt2", "Annt1", "Lev:1", "Lev:2", "Lev:3", "Lev:4"),
    segregateSamplesBy=list("Factor4"),
    showIdeogram=TRUE,
    title="Custom radi for Chromosomes and Custom Plotting Order"
  )
}

cXcircular8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-circularNoData-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-circularNoData-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    arcSegmentsSeparation=1,
    circularLabelsAlign="inside",
    colorScheme="Favorite",
    connections=list(list("EA832040", "EA1011925A27"), list("EA832040", "EA832496"), list("EA832040", "EA832497"), list("EA832039", "EA1011925A19"), list("EA832039", "EA832486"), list("EA832039", "EA832492"), list("EA832044", "EA1011925A3"), list("EA832045", "EA1011925A5"), list("EA832048", "EA1011925A10"), list("EA832048", "EA832502"), list("EA832048", "EA832503"), list("EA832051", "EA1011925A9"), list("EA832051", "EA832507"), list("EA832051", "EA832509"), list("EA832050", "EA1011925A12"), list("EA1011925A18", "EA832483"), list("EA1011925A18", "EA832491"), list("EA1011925A19", "EA832039"), list("EA1011925A19", "EA832486"), list("EA1011925A19", "EA832492"), list("EA1011925A23", "EA832484"), list("EA1011925A23", "EA832501"), list("EA1011925A24", "EA832489"), list("EA1011925A25", "EA832498"), list("EA1011925A27", "EA832040"), list("EA1011925A27", "EA832496"), list("EA1011925A27", "EA832497"), list("EA1011925A30", "EA832487"), list("EA1011925A30", "EA832488"), list("EA1011925A1", "EA832521"), list("EA1011925A1", "EA832525"), list("EA1011925A2", "EA832510"), list("EA1011925A2", "EA832511"), list("EA1011925A3", "EA832044"), list("EA1011925A4", "EA832514"), list("EA1011925A4", "EA832515"), list("EA1011925A5", "EA832045"), list("EA1011925A6", "EA832519"), list("EA1011925A7", "EA832508"), list("EA1011925A7", "EA832513"), list("EA1011925A8", "EA836531"), list("EA1011925A8", "EA832504"), list("EA1011925A8", "EA832524"), list("EA1011925A9", "EA832051"), list("EA1011925A9", "EA832507"), list("EA1011925A9", "EA832509"), list("EA1011925A10", "EA832048"), list("EA1011925A10", "EA832502"), list("EA1011925A10", "EA832503"), list("EA1011925A11", "EA832523"), list("EA1011925A12", "EA832050"), list("EA1011925A13", "EA832506"), list("EA1011925A13", "EA832527"), list("EA1011925A14", "EA832520"), list("EA1011925A15", "EA832517"), list("EA1011925A15", "EA832518"), list("EA1011925A16", "EA836533"), list("EA1011925A16", "EA832475"), list("EA1011925A16", "EA832526"), list("EA832475", "EA836533"), list("EA832475", "EA1011925A16"), list("EA832475", "EA832526"), list("EA832476", "EA832480"), list("EA832479", "EA832490"), list("EA832480", "EA832476"), list("EA832481", "EA836505"), list("EA832481", "EA832493"), list("EA832482", "EA832499"), list("EA832483", "EA1011925A18"), list("EA832483", "EA832491"), list("EA832484", "EA1011925A23"), list("EA832484", "EA832501"), list("EA832486", "EA1011925A19"), list("EA832486", "EA832039"), list("EA832486", "EA832492"), list("EA832487", "EA1011925A30"), list("EA832487", "EA832488"), list("EA832488", "EA1011925A30"), list("EA832488", "EA832487"), list("EA832489", "EA1011925A24"), list("EA832490", "EA832479"), list("EA832491", "EA1011925A18"), list("EA832491", "EA832483"), list("EA832492", "EA1011925A19"), list("EA832492", "EA832039"), list("EA832492", "EA832486"), list("EA832493", "EA836505"), list("EA832493", "EA832481"), list("EA832494", "EA832495"), list("EA832495", "EA832494"), list("EA832496", "EA1011925A27"), list("EA832496", "EA832040"), list("EA832496", "EA832497"), list("EA832497", "EA1011925A27"), list("EA832497", "EA832040"), list("EA832497", "EA832496"), list("EA832498", "EA1011925A25"), list("EA832498", "EA832500"), list("EA832499", "EA832482"), list("EA832500", "EA832498"), list("EA832501", "EA1011925A23"), list("EA832501", "EA832484"), list("EA832502", "EA1011925A10"), list("EA832502", "EA832048"), list("EA832502", "EA832503"), list("EA832503", "EA1011925A10"), list("EA832503", "EA832048"), list("EA832503", "EA832502"), list("EA832504", "EA836531"), list("EA832504", "EA1011925A8"), list("EA832504", "EA832524"), list("EA832506", "EA1011925A13"), list("EA832506", "EA832527"), list("EA832507", "EA1011925A9"), list("EA832507", "EA832051"), list("EA832507", "EA832509"), list("EA832508", "EA1011925A7"), list("EA832508", "EA832513"), list("EA832509", "EA1011925A9"), list("EA832509", "EA832051"), list("EA832509", "EA832507"), list("EA832510", "EA1011925A2"), list("EA832510", "EA832511"), list("EA832511", "EA1011925A2"), list("EA832511", "EA832510"), list("EA832513", "EA1011925A7"), list("EA832513", "EA832508"), list("EA832514", "EA1011925A4"), list("EA832514", "EA832515"), list("EA832515", "EA1011925A4"), list("EA832515", "EA832514"), list("EA832517", "EA1011925A15"), list("EA832517", "EA832518"), list("EA832518", "EA1011925A15"), list("EA832518", "EA832517"), list("EA832519", "EA1011925A6"), list("EA832520", "EA1011925A14"), list("EA832521", "EA1011925A1"), list("EA832521", "EA832525"), list("EA832523", "EA1011925A11"), list("EA832524", "EA836531"), list("EA832524", "EA1011925A8"), list("EA832524", "EA832504"), list("EA832525", "EA1011925A1"), list("EA832525", "EA832521"), list("EA832526", "EA836533"), list("EA832526", "EA1011925A16"), list("EA832526", "EA832475"), list("EA832527", "EA1011925A13"), list("EA832527", "EA832506"), list("EA836488", "EA836513"), list("EA836488", "EA836514"), list("EA836494", "EA836528"), list("EA836494", "EA836529"), list("EA836492", "EA836493"), list("EA836496", "EA836535"), list("EA836496", "EA836536"), list("EA836493", "EA836492"), list("EA836533", "EA836534"), list("EA836533", "EA1011925A16"), list("EA836533", "EA832475"), list("EA836533", "EA832526"), list("EA836501", "EA836502"), list("EA836497", "EA836498"), list("EA836502", "EA836501"), list("EA836505", "EA832481"), list("EA836505", "EA832493"), list("EA836503", "EA836510"), list("EA836507", "EA836508"), list("EA836517", "EA836518"), list("EA836511", "EA836512"), list("EA836515", "EA836516"), list("EA836516", "EA836515"), list("EA836498", "EA836497"), list("EA836508", "EA836507"), list("EA836512", "EA836511"), list("EA836499", "EA836500"), list("EA836500", "EA836499"), list("EA836513", "EA836488"), list("EA836513", "EA836514"), list("EA836514", "EA836488"), list("EA836514", "EA836513"), list("EA836509", "EA836504"), list("EA836510", "EA836503"), list("EA836504", "EA836509"), list("EA836518", "EA836517"), list("EA836528", "EA836494"), list("EA836528", "EA836529"), list("EA836529", "EA836494"), list("EA836529", "EA836528"), list("EA836530", "EA836531"), list("EA836526", "EA836527"), list("EA836535", "EA836496"), list("EA836535", "EA836536"), list("EA836523", "EA836524"), list("EA836536", "EA836496"), list("EA836536", "EA836535"), list("EA836539", "EA836540"), list("EA836540", "EA836539"), list("EA836524", "EA836523"), list("EA836521", "EA836522"), list("EA836522", "EA836521"), list("EA836537", "EA836538"), list("EA836538", "EA836537"), list("EA836531", "EA836530"), list("EA836531", "EA1011925A8"), list("EA836531", "EA832504"), list("EA836531", "EA832524"), list("EA836534", "EA836533"), list("EA836527", "EA836526")),
    graphType="Circular",
    overlayLevelOrientation="perpendicular",
    overlayScaleFontFactor=1,
    ringsOrder=list("subject", "labels", "sample"),
    segregateSamplesBy=list("subject"),
    showLegend=FALSE,
    smpLabelScaleFontFactor=0.3,
    xAxis=list("var1"),
    xAxisShow=FALSE
  )
}

cXcontour1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-volcano-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    showContourLevel=TRUE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    subtitle="datasets - volcano",
    title="Topographic Information on Auckland's Maunga Whau Volcano",
    afterRender=list(list("createContour"))
  )
}

cXcontour2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-contour-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourType="normal",
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    title="Basic Contour Plot",
    afterRender=list(list("createContour"))
  )
}

cXcontour3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-contour2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourFilled=TRUE,
    graphType="ScatterBubble2D",
    showContourLevel=TRUE,
    title="Basic Contour Plot",
    afterRender=list(list("createContour"))
  )
}

cXcontour4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-contour3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourFilled=TRUE,
    contourType="normal",
    graphType="ScatterBubble2D",
    title="Custom Contour Plot",
    afterRender=list(list("createContour"))
  )
}

cXcontour5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-contour4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourType="normal",
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    lineType="spline",
    showContourLevel=FALSE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    afterRender=list(list("createContour"))
  )
}

cXcontour6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-contourdensity-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    contourType="normal",
    graphType="Scatter2D",
    showContourDataPoints=TRUE,
    showContourLevel=FALSE,
    afterRender=list(list("createContour"))
  )
}

cXcorrelation1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    graphType="Correlation",
    showTransition=FALSE,
    title="Correlation Plot",
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    correlationType="circle",
    graphType="Correlation",
    showTransition=FALSE,
    title="Correlation Plot",
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAnchorLegend=TRUE,
    correlationAnchorLegendAlignWidth=20,
    correlationAxis="variables",
    graphType="Correlation",
    title="Correlation Plot",
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mtcarst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    title="Heatmap - Correlation",
    afterRender=list(list("createHeatmapCorrelation"), list("clusterVariables"), list("clusterSamples"))
  )
}

cXdashboard1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-titanic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-titanic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    afterRender=list(list("createHistogram"), list("createDOE"))
  )
}

cXdashboard2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mpg2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-mpg2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("model"),
    histogramBins=FALSE,
    histogramType="stacked",
    theme="gameOfThronesStannis",
    afterRender=list(list("createHistogram"), list("createDOE"))
  )
}

cXdashboard3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scents-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-scents-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    histogramBins=FALSE,
    showTransition=FALSE,
    smpLabelRotate=90,
    smpTitle="Smoking Status",
    theme="lastAirBenderWater",
    afterRender=list(list("groupSamples", list("Smoker")), list("createDOE"))
  )
}

cXdashboard4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-body2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-body2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=FALSE,
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("createDOE"))
  )
}

cXdashboard5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="gameOfThronesTargaryen",
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKMPlot"), list("createDOE"))
  )
}

cXdashboard6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-bc-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorBy="Stay Home Sick",
    graphType="Map",
    histogramBins=FALSE,
    legendPosition="top",
    mapId="bc",
    mapPropertyId="LOCAL_HLTH_AREA_CODE",
    topoJSON="https://www.canvasxpress.org/data/bc.json",
    afterRender=list(list("createDOE"), list("updateDOEGraphSize", list(list('2X2', 0))))
  )
}

cXdensity1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    showHistogramDensity=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData="sex",
    showHistogramDensity=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData="sex",
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData="sex",
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-density-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    histogramData="sex",
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress"
  )
}

cXdensity8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-density2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-density2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    histogramStat="count",
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    theme="CanvasXpress",
    xAxisHistogramHeight=150,
    xAxisHistogramShow=TRUE,
    yAxisHistogramHeight=150,
    yAxisHistogramShow=TRUE
  )
}

cXdensity9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    histogramStat="count",
    segregateVariablesBy=list("Species"),
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    theme="CanvasXpress"
  )
}

cXdensity10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    histogramStat="count",
    segregateVariablesBy=list("Species"),
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    theme="CanvasXpress"
  )
}

cXdensity11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    histogramStat="count",
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    theme="CanvasXpress"
  )
}

cXdensity12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramData=TRUE,
    histogramStat="count",
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    theme="CanvasXpress"
  )
}

cXdonnut1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=0,
    circularType="sunburst",
    colorBy="Mont",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Month"),
    objectBorderColor="rgb(0,0,0)",
    showTransition=FALSE,
    title="Simple Donnut",
    transitionStep=50,
    transitionTime=1500
  )
}

cXdonnut2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXdotline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=45,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    theme="CanvasXpress",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4"),
    xAxisTickColor="rgb(0,0,0)"
  )
}

cXdotline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXdotline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Dot-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXdotplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Dotplot",
    lineType="spline",
    showSmpOverlaysLegend=TRUE,
    smpLabelRotate=45,
    smpOverlayProperties=list(Factor4=list(color="blue", showLegend=TRUE, thickness=50, type="Bar"), Factor5=list(color="grey", showLegend=TRUE, thickness=50, type="Bar"), Factor6=list(color="red", showLegend=TRUE, thickness=50, type="Bar")),
    smpOverlays=list("Factor1", "Factor2", "Factor3"),
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    theme="CanvasXpress",
    title="Dotplot Graph",
    xAxisTickFormat="%.0f Mil."
  )
}

cXdotplot2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTickFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Dotplot",
    jitter=TRUE,
    marginBottom=30,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    theme="CanvasXpress",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXdotplot3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Henderson, H. V. and Velleman, P. F. (1981), Building Regression Models Interactively. Biometrics, 37, 391-411.",
    citationFontStyle="italic",
    graphType="Dotplot",
    legendColumns=2,
    legendInside=TRUE,
    legendPosition="rightBottom",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    afterRender=list(list("groupSamples", list("Country")))
  )
}

cXdotplot4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-dumbbell-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dumbbell-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="wilkinson",
    connectBy="Connect",
    dotplotType="stacked",
    graphType="Dotplot",
    showTransition=FALSE,
    smpTitle="School",
    sortDir="descending",
    theme="CanvasXpress",
    title="Gender Earnings Disparity",
    xAxis2Title="Annual Salary",
    xAxisTickFormat="\$%sK",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="Annual Salary",
    afterRender=list(list("sortSamplesByVariable", list("Men")))
  )
}

cXdotplot5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    binned=TRUE,
    errorBarsColor="red",
    errorBarsType="standardDeviation",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    jitter=FALSE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
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
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    shapeBy="supp",
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    objectBorderColor="rgba(0,0,0)",
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("supp"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    objectBorderColor="rgba(0,0,0)",
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    splitSamplesBy="dose",
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    objectBorderColor="rgba(0,0,0)",
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    binned=TRUE,
    colorBy="dose",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    legendTitleScaleFontFactor=1.8,
    objectBorderColor="rgba(0,0,0)",
    segregateSamplesBy=list("supp"),
    showErrorBars=FALSE,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXdotplot11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendKeyBackgroundColor="rgba(255,255,255,0)"
  )
}

cXdotplot12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-lotr-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-lotr-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundImage="https://www.canvasxpress.org/assets/images/lotr-background.png",
    backgroundType="image",
    colorBy="Character",
    colors=list("rgb(45,24,18)", "rgb(95,50,31)", "rgb(22,25,16)", "rgb(56,54,25)", "rgb(165,113,76)", "rgb(116,50,36)", "rgb(170,99,47)", "rgb(195,152,60)", "rgb(0,0,0)"),
    dotplotOutlineThreshold=1,
    dotplotType="movement",
    fontName="Bilbo",
    fonts=list("Bilbo"),
    graphOrientation="horizontal",
    graphType="Dotplot",
    groupingFactors=list("Character"),
    images=list("https://www.canvasxpress.org/assets/images/Frodo.png", "https://www.canvasxpress.org/assets/images/Gandalf.png", "https://www.canvasxpress.org/assets/images/Merry.png", "https://www.canvasxpress.org/assets/images/Pippin.png", "https://www.canvasxpress.org/assets/images/Sam.png", "https://www.canvasxpress.org/assets/images/Aragorn.png", "https://www.canvasxpress.org/assets/images/Boromir.png", "https://www.canvasxpress.org/assets/images/Gimli.png", "https://www.canvasxpress.org/assets/images/Legolas.png"),
    layoutAdjust=TRUE,
    layoutBoxShow=FALSE,
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
    showLegend=FALSE,
    sizeBy="Words",
    sizeByContinuous=TRUE,
    sizeByShowLegend=FALSE,
    sizes=list(5, 10, 15, 25, 35, 40, 50, 60, 70, 90, 120),
    smpLabelImage=TRUE,
    smpLabelImageRound=TRUE,
    smpLabelScaleFontFactor=0.9,
    title="Words per Chapter by Character",
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXdotplot13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-audrey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-audrey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showLegendTitle=FALSE,
    smpLabelInterval=8,
    smpLabelRotate=90,
    timeFormat="year",
    title="The Life and Films of Audrey Hepburn",
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXdotplot14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-audrey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-audrey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendTextScaleFontFactor=2,
    legendTitleScaleFontFactor=2,
    maxSmpStringLen=50,
    objectBorderColor="rgba(0,0,0)",
    showLegendTitle=FALSE,
    smpLabelScaleFontFactor=2,
    title="The Awards of Audrey Hepburn",
    xAxis2Show=TRUE,
    xAxisShow=FALSE
  )
}

cXdotplot15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-timeliner-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-timeliner-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    sizes=list(2, 15, 25, 35, 70, 150),
    smpLabelInterval=100,
    smpLabelRotate=90,
    timeFormat="isoDate",
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXfacet1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="rows",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXfacet2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=TRUE,
    layoutType="rows",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateSamples", list("Factor1")), list("segregateVariables", list("Annt2")))
  )
}

cXfacet3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="cols",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateVariables", list("Annt2")))
  )
}

cXfacet4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutCollapse=FALSE,
    layoutType="wrap",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateSamples", list("Factor1")), list("segregateVariables", list("Annt2")))
  )
}

cXfacet5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="cols",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="rows",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=FALSE,
    layoutType="wrap",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list(list("Opinion", "Sex"))))
  )
}

cXfacet8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    layoutCollapse=TRUE,
    layoutType="cols",
    legendBox=TRUE,
    shapeBy="Age",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Floral scent data set",
    xAxis=list("U-Trial 1", "U-Trial 2", "U-Trial 3"),
    yAxis=list("S-Trial 1", "S-Trial 2", "S-Trial 3"),
    afterRender=list(list("segregateVariables", list("Opinion")))
  )
}

cXfish1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fish-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="window",
    backgroundWindow="#ffe4c4",
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
    title="Sample1"
  )
}

cXfish2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fish2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="windowSolidGradient",
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
    varLabelColor="green",
    varLabelRotate=30
  )
}

cXfish3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fish3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="windowSolidGradient",
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
    title="BRC32"
  )
}

cXfish4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fish4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="windowSolidGradient",
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
    legendKeyBackgroundColor="rgba(255,255,255,0)"
  )
}

cXfish5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fish-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="window",
    backgroundWindow="#ffe4c4",
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
    legendPosition="bottom"
  )
}

cXgantt1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    blockContrast=TRUE,
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    theme="CanvasXpress"
  )
}

cXgantt2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    ganttCompletion="Completion",
    ganttEnd="End",
    ganttStart="Start",
    graphType="Gantt",
    theme="CanvasXpress"
  )
}

cXgantt3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress"
  )
}

cXgantt4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-gantt2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress"
  )
}

cXgantt5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-gantt3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress"
  )
}

cXgantt6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gantt3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-gantt3-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress"
  )
}

cXgenome1 <- function() {
  library(canvasXpress)
  library(jsonlite)
  genome <- read_json("https://www.canvasxpress.org/data/cX-genomesimple.json")
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
  genome <- read_json("https://www.canvasxpress.org/data/cX-genomeintermediate.json")
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
  genome <- read_json("https://www.canvasxpress.org/data/cX-genomeadvanced.json")
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
  genome <- read_json("https://www.canvasxpress.org/data/cX-genomeideogram.json")
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
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("navy", "white", "firebrick3"),
    graphType="Heatmap",
    title="Simple Heatmap"
  )
}

cXheatmap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("navy", "white", "firebrick3"),
    graphType="Heatmap",
    heatmapCellBoxColor="rgb(255,255,255)",
    samplesClustered=TRUE,
    showTransition=FALSE,
    title="Clustered data",
    variablesClustered=TRUE
  )
}

cXheatmap3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    variablesClustered=TRUE
  )
}

cXheatmap4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    variablesClustered=TRUE
  )
}

cXheatmap5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    variablesClustered=TRUE
  )
}

cXheatmap6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    variablesClustered=TRUE
  )
}

cXheatmap7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpOverlays=list("Treatment", "Site"),
    splitSamplesBy="Treatment",
    title="Overlays in Heatmap",
    variablesClustered=TRUE
  )
}

cXheatmap8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=FALSE,
    smpOverlays=list("Treatment", "Site"),
    title="Highlight cells in Heatmap",
    variablesClustered=TRUE
  )
}

cXheatmap9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-heatmapR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-heatmapR-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-heatmapR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorKey=list(Sens=list("white", "green"), Site="Pastel1", Treatment="Accent", Type="YlGn"),
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=80,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=120,
    samplesClustered=TRUE,
    showTransition=FALSE,
    smpOverlayProperties=list(Dose=list(position="right", thickness=50, type="Dotplot"), Site=list(position="left"), Treatment=list(position="right")),
    smpOverlays=list("Treatment", "Site", "Dose"),
    title="Advanced Overlays in Heatmaps",
    varOverlayProperties=list(Sens=list(color="red", position="bottom", thickness=20, type="Bar"), Type=list(position="top")),
    varOverlays=list("Type", "Sens"),
    variablesClustered=TRUE
  )
}

cXheatmap10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    guides=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    outlineBy="Outline",
    outlineByData="data2",
    shapeBy="Shape",
    shapeByData="data3",
    sizeBy="Size",
    sizeByData="data4",
    afterRender=list(list("clusterSamples"))
  )
}

cXheatmap11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-multidimensionalheatmap2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorSpectrum=list("#f0f0f0", "#bdbdbd", "#636363", "#000000"),
    graphType="Heatmap",
    showHeatmapIndicator=FALSE,
    showLegend=FALSE,
    sizeBy="Size",
    sizeByContinuous=TRUE,
    sizeByData="data",
    title="A good old Northern Blot"
  )
}

cXheatmap12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-overlays-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-overlays-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-overlays-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    showSmpOverlaysLegend=FALSE,
    showVarOverlaysLegend=FALSE,
    smpLabelScaleFontFactor=1.1,
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", showLegend=TRUE, type="Default"), Boolean=list(position="left"), Continuous=list(position="left", showLegend=TRUE, spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", showLegend=TRUE, thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", showLegend=TRUE, thickness=50, type="Bar"), PhaseB=list(position="left", showLegend=TRUE, thickness=50, type="Bar"), PhaseC=list(position="left", showLegend=TRUE, thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Boolean", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    splitSamplesBy="Discrete",
    splitVariablesBy="Drug",
    varLabelRotate=45,
    varLabelScaleFontFactor=1.7,
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", showLegend=TRUE, thickness=50, type="StackedPercent"), Conc=list(position="top", showLegend=TRUE, thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", showLegend=TRUE, thickness=30, type="Increase"), Even=list(position="bottom", showLegend=TRUE, thickness=50, type="Bar"), Female=list(position="top", showLegend=TRUE, thickness=50, type="Pie"), Hot=list(color="red", position="bottom", showLegend=TRUE, thickness=50, type="StackedPercent"), Male=list(position="top", showLegend=TRUE, thickness=50, type="Pie"), Nice=list(color="green", position="bottom", showLegend=TRUE, thickness=50, type="Dotplot"), Odd=list(position="bottom", showLegend=TRUE, thickness=50, type="BarLine"), Site=list(position="top", showLegend=TRUE, type="Default"), Ugly=list(color="black", position="bottom", showLegend=TRUE, thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot")
  )
}

cXheatmap13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-pheatmap-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-pheatmap-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-pheatmap-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    heatmapIndicatorPosition="right",
    overlayFontStyle="bold",
    overlayScaleFontFactor=2,
    samplesClustered=TRUE,
    showLevelOverlays=FALSE,
    showSmpOverlaysLegend=TRUE,
    showVarOverlaysLegend=TRUE,
    smpDendrogramPosition="right",
    smpOverlayProperties=list(CellType=list(position="right", scheme="Matlab", showLegend=TRUE, type="Default"), Dose=list(color="blue", position="left", thickness=80, type="Bar"), Drug=list(position="left", scheme="Lancet", showLegend=TRUE, thickness=30, type="Increase"), Time=list(position="right", scheme="Greens", showLegend=TRUE, type="Default")),
    smpOverlays=list("Drug", "-", "Dose", "CellType", "-", "Time"),
    smpTitleLabelPosition="right",
    varOverlayProperties=list(GeneClass=list(position="top", scheme="GGPlot", showLegend=TRUE, thickness=20, type="Default"), ProteinA=list(color="green", position="top", thickness=45, type="Line")),
    varOverlays=list("ProteinA", "-", "GeneClass"),
    varTitleLabelPosition="bottom",
    variablesClustered=TRUE
  )
}

cXheatmap14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-pheatmap2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-pheatmap2-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-pheatmap2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-pheatmap2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2),
    smpAnnot=x,
    varAnnot=z,
    dendrogramHeight=50,
    graphType="Heatmap",
    guides=TRUE,
    heatmapIndicatorPosition="top",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    objectBorderColor="rgb(0,0,0)",
    samplesClustered=TRUE,
    showSmpDendrogram=FALSE,
    showVarDendrogram=FALSE,
    sizeBy="Size",
    sizeByData="data2",
    title="Bubble Heatmap Plot",
    variablesClustered=TRUE
  )
}

cXhexplotbinplot1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-dsmall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-dsmall-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-cancersurvivalt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-cancersurvivalt-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=10,
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects",
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-cancersurvivalt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-cancersurvivalt-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=20,
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects",
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    decorations=list(marker=list(list(sample=list("Alcohol", "Tobacco"), text="Maybe an Outlier?", variable="Northern Ireland", x=0.45, y=0.18))),
    graphType="Scatter2D",
    histogramBins=20,
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxisTitle="Pounds Spent",
    yAxisTitle="Frequency",
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="dodged",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="staggered",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramBins=5,
    histogramType="stacked",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    segregateVariablesBy=list("dataset"),
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mtcars2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-mtcars2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    histogramAsDotplot=TRUE,
    histogramBinWidth=3,
    theme="CanvasXpress",
    xAxis=list("mpg"),
    xAxisTitle="mpg",
    yAxisTitle="Frequency",
    afterRender=list(list("createHistogram"))
  )
}

cXkaplanmeier1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    showTransition=FALSE,
    title="Kaplan-Meier Plot",
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("addKMPlot"))
  )
}

cXkaplanmeier2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=TRUE,
    showTransition=FALSE,
    title="Kaplan-Meier Plot",
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("addKMPlot"))
  )
}

cXkaplanmeier3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Drug",
    graphType="Scatter2D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showConfidenceIntervals=FALSE,
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("addKMPlot"))
  )
}

cXkaplanmeier4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    legendInside=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottomLeft",
    showConfidenceIntervals=TRUE,
    xAxis=list("Survival", "Survival2"),
    xAxisTitle="Weeks",
    yAxis=list("Survival-Censor", "Survival2-Censor"),
    yAxisTitle="Probability of Survival",
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKMPlot"))
  )
}

cXkaplanmeier5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Sex",
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    xAxisTitle="Weeks",
    yAxisTitle="Probability of Survival",
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKMPlot"), list("createDOE"))
  )
}

cXlayout1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    theme="CanvasXpress"
  )
}

cXlayout2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    theme="CanvasXpress",
    afterRender=list(list("addRegressionLine", list("Species")))
  )
}

cXlayout3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    theme="CanvasXpress",
    afterRender=list(list("addRegressionLine"))
  )
}

cXlayout4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    theme="CanvasXpress"
  )
}

cXlayout5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    theme="CanvasXpress",
    afterRender=list(list("addRegressionLine", list("Species")))
  )
}

cXlayout6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-iris-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-iris-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTickFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Boxplot",
    showTransition=FALSE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    theme="CanvasXpress",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")), list("segregateSamples", list("Species")))
  )
}

cXlayout7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Dotplot",
    legendColumns=3,
    legendPosition="bottom",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    afterRender=list(list("groupSamples", list("Country")), list("segregateSamples", list("Country")))
  )
}

cXlayout8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("groupSamples", list("Factor1")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Bar",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateSamples", list("Factor1")), list("segregateVariables", list("Annt2")))
  )
}

cXlayout10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutType="rows",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scents-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-scents-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    showTransition=FALSE,
    smpLabelRotate=90,
    smpTitle="Smoking Status",
    afterRender=list(list("groupSamples", list("Smoker")), list("createDOE"))
  )
}

cXlayout12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-body2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-body2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("createDOE"))
  )
}

cXlayout13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-kaplanmeier3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKMPlot"), list("createDOE"))
  )
}

cXlayout14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-layoutContinuous-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-layoutContinuous-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-layoutContinuous-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutAdjust=TRUE,
    layoutConfig=list(list(axisCoordinate=TRUE, graphType="BarLine", showDataValues=TRUE, xAxis=list("Duration"), xAxis2=list("Discontinued"), xAxisTitle="Duration of Treatment"), list(colorBy="Drug", legendColumns=5, legendInside=TRUE, legendPosition="bottomLeft", showLegend=TRUE, showLegendTitle=FALSE, xAxisTitle="Change from Baseline (%)"), list(barLollipopFactor=1.5, barLollipopOpen=FALSE, barType="lollipop", xAxisTitle="Baseline (mm)")),
    layoutLabelShow=FALSE,
    layoutTopology="3X1",
    showLegend=FALSE,
    theme="CanvasXpress",
    title="Tumor Response and Duration by Subject Id",
    xAxis2Show=FALSE,
    afterRender=list(list("segregateVariables", list("Panel")))
  )
}

cXlayout15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-overlays-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-overlays-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-overlays-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    showTransition=FALSE,
    smpLabelScaleFontFactor=1.1,
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", type="Default"), Continuous=list(position="left", spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", thickness=50, type="Bar"), PhaseB=list(position="left", thickness=50, type="Bar"), PhaseC=list(position="left", thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    varLabelRotate=45,
    varLabelScaleFontFactor=1.7,
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", thickness=50, type="StackedPercent"), Conc=list(position="top", thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", thickness=30, type="Increase"), Even=list(position="bottom", thickness=50, type="Bar"), Female=list(position="top", thickness=50, type="Pie"), Hot=list(color="red", position="bottom", thickness=50, type="StackedPercent"), Male=list(position="top", thickness=50, type="Pie"), Nice=list(color="green", position="bottom", thickness=50, type="Dotplot"), Odd=list(position="bottom", thickness=50, type="BarLine"), Site=list(position="top", type="Default"), Ugly=list(color="black", position="bottom", thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot")
  )
}

cXlayout16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    segregateVariablesBy=list("dataset")
  )
}

cXlayout17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-datasaurus2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dataset"),
    layoutTopology="2X1",
    segregateVariablesBy=list("variable"),
    smpLabelRotate=45
  )
}

cXlayout18 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-anscombeQuartet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-anscombeQuartet-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    segregateVariablesBy=list("dataset"),
    afterRender=list(list("addRegressionLine", list("dataset")))
  )
}

cXline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-oranges-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    background="rgb(226,236,248)",
    backgroundType="window",
    blockContrast=TRUE,
    evenColor="rgb(226,236,248)",
    graphOrientation="vertical",
    graphType="Line",
    legendInside=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="bottomRight",
    smpLabelRotate=90,
    smpTitle="Days Old",
    theme="GGPlot",
    title="Growth of Orange Trees",
    xAxisTitle="Circumference (mm)"
  )
}

cXline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-oranges2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-oranges2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Tree",
    graphOrientation="horizontal",
    graphType="Scatter2D",
    lineBy="Tree",
    showLegend=FALSE,
    title="Growth of Orange Trees"
  )
}

cXline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Line",
    legendPosition="right",
    lineDecoration="pattern",
    smpLabelRotate=90,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    splitSamplesBy="Factor3",
    theme="blackAndWhite",
    title="Random Data"
  )
}

cXline4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-line-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-line-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Line",
    lineErrorType="area",
    lineType="spline",
    showTransition=FALSE,
    theme="CanvasXpress",
    afterRender=list(list("groupSamples", list("Time")))
  )
}

cXline5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-timeline-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-timeline-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="https://www.molbiolcell.org/doi/full/10.1091/mbc.e17-03-0136",
    colorBy="Condition",
    graphType="Scatter2D",
    lineBy="Condition",
    ribbonBy=list("CI_upper", "CI_lower"),
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Spatiotemporal Control of RhoGTPase Activation",
    xAxis=list("Time"),
    xAxisTitle="Time [s]",
    yAxis=list("mean"),
    yAxisTitle="Ratio YFP/CFP [-]"
  )
}

cXline6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-timeline2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-timeline2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    graphType="Scatter2D",
    showDecorations=TRUE,
    stringVariableFactors=list("cyl"),
    theme="CanvasXpress",
    title="QQ-Plot",
    xAxis=list("mpg"),
    yAxis=list("mpg"),
    afterRender=list(list("addQQPlot"))
  )
}

cXlinearfit2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    showDecorations=TRUE,
    stringVariableFactors=list("cyl"),
    theme="CanvasXpress",
    title="QQ-Plot colored by cyl",
    xAxis=list("mpg"),
    yAxis=list("mpg"),
    afterRender=list(list("addQQPlot"))
  )
}

cXlinearfit3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mpg-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-mpg-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    fitLineColor="rgb(0,0,255)",
    graphType="Scatter2D",
    quantiles=list(0.25, 0.5, 0.75),
    showDecorations=TRUE,
    showQuantileRegressionFit=TRUE,
    theme="CanvasXpress",
    title="Quantile Regression",
    xAxis=list("displ"),
    yAxis=list("hwy")
  )
}

cXlollipop1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-lollipop-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    barLollipopFactor=1.8,
    barType="lollipop",
    colorScheme="CanvasXpress",
    graphType="Bar",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showTransition=FALSE,
    widthFactor=0.6
  )
}

cXlollipop2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-lollipop2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-lollipop2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="solid",
    barLollipopFactor=1.5,
    barLollipopOpen=TRUE,
    barPath=TRUE,
    barPathColor="rgb(225,225,225)",
    barPathTransparency=1,
    barType="lollipop",
    colorBy="Color",
    colorScheme="GGPlot",
    graphType="Bar",
    marginBottom=50,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    setMaxX=150,
    setMinX=-150,
    showDataValues=TRUE,
    showLegend=FALSE,
    smpLabelScaleFontFactor=2,
    title="Occupations",
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXmap1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-olympicMedalsT-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-olympicMedalsT-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Total",
    graphType="Map",
    legendPosition="bottom",
    mapId="medals",
    theme="tableau",
    title="Total Number of Olympic Medals",
    topoJSON="https://www.canvasxpress.org/data/world.geo.json"
  )
}

cXmap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-CO2T-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-CO2T-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="CO2",
    graphType="Map",
    legendPosition="left",
    mapId="countries",
    theme="solarized",
    title="CO2 Emmisions During 2018",
    topoJSON="https://www.canvasxpress.org/data/world.geo.json"
  )
}

cXmap3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-map-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-map-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="id",
    decorations=list(connections=list(list(color="red", source=list(40.7, -74), target=list(37.7, -122), type="spline"), list(color="red", source=list(40.7, -74), target=list(25.7, -80.1), type="spline"), list(color="red", source=list(37.7, -122), target=list(25.7, -80.1), type="splineDashed")), marker=list(list(color="blue", coords=list(40.7, -74), label="New York", shape="teardrop", size=5), list(color="blue", coords=list(37.7, -122), label="San Francisco", shape="teardrop", size=5), list(color="blue", coords=list(25.7, -80.1), label="Miami", shape="teardrop", size=5), list(color="green", coords=list(41.8, -87.6), label="Chicago", shape="circle", size=4), list(color="green", coords=list(36.1, -115.1), label="Las Vegas", shape="circle", size=3), list(color="black", coords=list(42.3, -71), label="Boston", shape="star", size=6))),
    graphType="Map",
    mapConfig=list(center=list(34.7, -96.1), zoom=3.2),
    mapId="colorCountries",
    showLegend=FALSE,
    topoJSON="https://www.canvasxpress.org/data/world.geo.json"
  )
}

cXmap4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-election2000-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-election2000-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    topoJSON="https://www.canvasxpress.org/data/usa-albers-states.json"
  )
}

cXmap5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-election2000-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-election2000-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    topoJSON="https://www.canvasxpress.org/data/usa-albers-states.json"
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
    topoJSON="https://www.canvasxpress.org/data/usa-albers-counties.json"
  )
}

cXmap7 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="fips",
    graphType="Map",
    legendPosition="bottom",
    mapId="mercatorCounties",
    mapProjection="albers",
    title="Albers Projection",
    topoJSON="https://www.canvasxpress.org/data/usa-albers-counties.json"
  )
}

cXmap8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-australia-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-australia-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="STATE_NAME",
    graphType="Map",
    legendColumns=3,
    legendPosition="top",
    mapConfig=list(zoom=3),
    mapId="australia",
    markerBy="Category",
    motionBy="Year",
    theme="wallStreetJournal",
    title="Cyclones in Australia 1940-2020",
    topoJSON="https://www.canvasxpress.org/data/australia.geo.json"
  )
}

cXmap9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-colombia-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorBy="Prop1",
    decorations=list(marker=list(list(color="red", coords=list(10.3932, -75.4832), label="Cartagena", shape="teardrop", size=4), list(color="blue", coords=list(12.5769, -81.7051), label="San Andres", shape="teardrop", size=6))),
    graphType="Map",
    legendPosition="bottomRight",
    mapId="colombia",
    mapPropertyId="ID_1",
    topoJSON="https://www.canvasxpress.org/data/colombia.geo.json"
  )
}

cXmap10 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="NAME_1",
    graphType="Map",
    legendPosition="bottomLeft",
    mapId="italy",
    topoJSON="https://www.canvasxpress.org/data/italy.geo.json"
  )
}

cXmap11 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    background="black",
    graphType="Map",
    mapColor="black",
    mapId="spain",
    mapOutlineColor="white",
    topoJSON="https://www.canvasxpress.org/data/spain.geo.json"
  )
}

cXmap12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-codiv-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-codiv-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Cases",
    graphType="Map",
    mapId="covid",
    motionBy="Date",
    reproduceTime=100,
    showLegend=FALSE,
    sizeBy="Deaths",
    sizeByContinuous=TRUE,
    subtitle="Colored by Cases and Sized by Deaths",
    title="Geographic Distribution for COVID-19",
    topoJSON="https://www.canvasxpress.org/data/world.geo.json"
  )
}

cXmap13 <- function() {
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

cXmap14 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="name",
    decorations=list(connections=list(list(color="red", source=list(40.7, -74), target=list(37.7, -122), type="spline"), list(color="red", source=list(40.7, -74), target=list(25.7, -80.1), type="spline"), list(color="red", source=list(37.7, -122), target=list(25.7, -80.1), type="splineDashed")), marker=list(list(color="blue", coords=list(40.7, -74), label="New York", shape="teardrop", size=5), list(color="blue", coords=list(37.7, -122), label="San Francisco", shape="teardrop", size=5), list(color="blue", coords=list(25.7, -80.1), label="Miami", shape="teardrop", size=5), list(color="green", coords=list(41.8, -87.6), label="Chicago", shape="circle", size=4), list(color="green", coords=list(36.1, -115.1), label="Las Vegas", shape="circle", size=3), list(color="black", coords=list(42.3, -71), label="Boston", shape="star", size=6))),
    graphType="Map",
    mapConfig=list(center=list(-90, 30)),
    mapGraticuleShow=TRUE,
    mapGraticuleType="solid",
    mapId="worldCountries",
    mapProjection="orthographic",
    showLegend=FALSE,
    title="Ortographic Projection",
    topoJSON="https://www.canvasxpress.org/data/worldLow.json"
  )
}

cXmeter1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterColors=list("rgb(0,255,0)", "rgb(255,255,0)", "rgb(255,255,0)", "rgb(255,0,0)"),
    meterMax=100,
    meterMin=0,
    meterSegments=list(25, 50, 75, 100),
    meterType="gauge"
  )
}

cXmeter2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterColors=list("rgb(0,255,0)", "rgb(255,255,0)", "rgb(255,255,0)", "rgb(255,0,0)"),
    meterMax=200,
    meterMin=0,
    meterSegments=list(25, 50, 75, 200),
    meterType="speedometer"
  )
}

cXmeter3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterColors=list("rgb(0,255,0)", "rgb(255,255,0)", "rgb(255,255,0)", "rgb(255,0,0)"),
    meterMax=100,
    meterMin=0,
    meterSegments=list(25, 50, 75, 100),
    meterType="digital"
  )
}

cXmeter4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterType="state"
  )
}

cXmeter5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterMax=100,
    meterMin=0,
    meterType="horizontal"
  )
}

cXmeter6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Meter",
    meterColors=list("rgb(0,255,0)", "rgb(255,255,0)", "rgb(255,255,0)", "rgb(255,0,0)"),
    meterMax=100,
    meterMin=0,
    meterSegments=list(25, 50, 75, 100),
    meterType="vertical"
  )
}

cXmeter7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-meter2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-meter2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Meter",
    meterType="number",
    meterVar="Revenue"
  )
}

cXmeter8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-meter2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-meter2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-meter2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Meter",
    meterType="digital",
    meterVar="Revenue"
  )
}

cXnetwork1 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-lesmiserable-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-lesmiserable-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table("https://www.canvasxpress.org/data/cX-lesmiserableBH-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-lesmiserableBH-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table("https://www.canvasxpress.org/data/cX-lesmiserableC-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-lesmiserableC-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork4 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-networkradial-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-networkradial-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork5 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-networkbasic-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-networkbasic-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork6 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-networkkarate-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-networkkarate-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    coordinateNetworkConvexHullCommunityColor=TRUE,
    graphType="Network",
    showNetworkCommunities=TRUE,
    title="Zachary's famous Karate Club"
  )
}

cXnetwork7 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-wpapoptosis-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-wpapoptosis-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork8 <- function() {
  library(canvasXpress)
  nodes=read.table("https://www.canvasxpress.org/data/cX-wpapoptosis-nodes.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table("https://www.canvasxpress.org/data/cX-wpapoptosis-edges.txt", header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork9 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/hsa05222.xml",
    appendNetworkData=list("https://www.canvasxpress.org/data/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    colorNodeBy="Exp1",
    graphType="Network"
  )
}

cXnetwork10 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/hsa05222.xml",
    appendNetworkData=list("https://www.canvasxpress.org/data/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    decorations=list("Exp2", "Exp3"),
    decorationsHeight=18,
    decorationsPosition="right",
    decorationsType="pie",
    graphType="Network"
  )
}

cXnetwork11 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/WP3624_95209.gpml",
    graphType="Network"
  )
}

cXnetwork12 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/example.xgmml",
    graphType="Network"
  )
}

cXnetwork13 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/Apoptosis.xml",
    graphType="Network"
  )
}

cXnetwork14 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://www.canvasxpress.org/data/networkData.txt",
    colorNodeBy="name_mod1",
    graphType="Network",
    sizeEdgeBy="aa%1"
  )
}

cXnonlinearfit1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-nonlinearfit-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    theme="CanvasXpress",
    xAxisTransform="log10",
    xAxisTransformTicks=TRUE,
    yAxisExact=TRUE
  )
}

cXnonlinearfit2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-nor24-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress",
    xAxis=list("X"),
    yAxis=list("Y"),
    afterRender=list(list("addNormalDistributionLine"))
  )
}

cXnonlinearfit3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-log11-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(logarithmic=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress"
  )
}

cXnonlinearfit4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exp14-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(exponential=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress"
  )
}

cXnonlinearfit5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-pow11-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(power=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress"
  )
}

cXnonlinearfit6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-poly8-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(polynomial=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress"
  )
}

cXnonlinearfit7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-lin20-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(linear=list(list(color="red"))),
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    theme="CanvasXpress"
  )
}

cXoncoprint1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    overlaysThickness=100,
    showTransition=FALSE
  )
}

cXoncoprint2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data2",
    oncoprintMUT="data3",
    overlaysThickness=100,
    showTransition=FALSE,
    smpOverlayProperties=list(Annt2=list(position="right", type="Bar"), Annt3=list(type="Stacked"), Annt4=list(type="Stacked"), Annt5=list(type="Stacked")),
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5")
  )
}

cXoncoprint3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/cX-oncoprint-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-oncoprint-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-oncoprint-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5")
  )
}

cXoncoprint4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-LungCancinoma-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table("https://www.canvasxpress.org/data/cX-LungCancinoma-dat2.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table("https://www.canvasxpress.org/data/cX-LungCancinoma-dat3.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table("https://www.canvasxpress.org/data/cX-LungCancinoma-dat4.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-LungCancinoma-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    varAnnot=z,
    graphType="Heatmap",
    oncoprintCNA="data3",
    oncoprintMUT="data4",
    overlaysThickness=100
  )
}

cXparallelcoordinates1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    showTransition=FALSE,
    smpLabelRotate=90,
    theme="CanvasXpress",
    title="Iris flower data set"
  )
}

cXparallelcoordinates2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    smpLabelRotate=90,
    theme="CanvasXpress",
    title="Iris flower data set",
    afterRender=list(list("switchAnnotationToSmp", list("Species")))
  )
}

cXpie1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=FALSE
  )
}

cXradar1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXradar8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    transitionTime=1500
  )
}

cXridgeline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showHistogramDensity=TRUE
  )
}

cXridgeline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxisRugShow=TRUE
  )
}

cXridgeline3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showHistogramDensity=TRUE
  )
}

cXridgeline4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-petallength-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-petallength-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showHistogramQuantiles=TRUE
  )
}

cXridgeline5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-lincoln-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-lincoln-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showHistogramDensity=TRUE
  )
}

cXridgeline6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-datasaurus-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-datasaurus-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showHistogramDensity=TRUE
  )
}

cXridgeline7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-anscombeQuartet-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-anscombeQuartet-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    ridgeBy="dataset",
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE
  )
}

cXsplom1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="both",
    theme="CanvasXpress"
  )
}

cXsplom2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="upper",
    theme="CanvasXpress"
  )
}

cXsplom3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="lower",
    theme="CanvasXpress"
  )
}

cXsplom4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlation",
    theme="CanvasXpress"
  )
}

cXsplom5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlationHistogram",
    theme="CanvasXpress"
  )
}

cXsplom6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="correlationDensity",
    theme="CanvasXpress"
  )
}

cXsplom7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix="Species",
    scatterPlotMatrixType="all",
    theme="CanvasXpress"
  )
}

cXsplom8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    theme="CanvasXpress"
  )
}

cXsankey1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sankey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sankey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Single Level Sankey"
  )
}

cXsankey2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sankey-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sankey-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Weight",
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    theme="CanvasXpress",
    title="Single Level Sankey"
  )
}

cXsankey3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    theme="CanvasXpress",
    title="Multilevel Sankey"
  )
}

cXsankey4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sankey2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sankey2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Weight",
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Multilevel Sankey"
  )
}

cXscatter2d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-alcoholtobaccot-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    decorations=list(marker=list(list(sample=list("Alcohol", "Tobacco"), text="Maybe an Outlier?", variable="Northern Ireland", x=0.45, y=0.18))),
    graphType="Scatter2D",
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Alcohol"),
    yAxis=list("Tobacco")
  )
}

cXscatter2d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-spider-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-spider-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Response",
    graphType="Scatter2D",
    legendBox=TRUE,
    legendInside=TRUE,
    legendPosition="topRight",
    lineBy="Subject",
    theme="CanvasXpress",
    title="Tumor Response by Week",
    xAxis=list("Weeks"),
    yAxis=list("Change From Baseline %")
  )
}

cXscatter2d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-loess2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=TRUE,
    showLoessFit=TRUE,
    theme="CanvasXpress",
    title="Loess Fit",
    xAxis=list("E"),
    yAxis=list("NOx")
  )
}

cXscatter2d4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=FALSE,
    sizeBy="Age",
    theme="CanvasXpress",
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
  y=read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    legendBox=TRUE,
    stringVariableFactors=list("cyl"),
    theme="CanvasXpress",
    xAxis=list("wt"),
    yAxis=list("mpg"),
    afterRender=list(list("addRegressionLine", list("cyl")))
  )
}

cXscatter2d6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-mtcars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    legendBox=TRUE,
    showRegressionFullRange=TRUE,
    stringVariableFactors=list("cyl"),
    theme="CanvasXpress",
    xAxis=list("wt"),
    yAxis=list("mpg"),
    afterRender=list(list("addRegressionLine", list("cyl")))
  )
}

cXscatter2d7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scentst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scentst-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    colorScheme="White",
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
    sizeBy="Age",
    theme="CanvasXpress",
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
  y=read.table("https://www.canvasxpress.org/data/cX-ageheightt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    citation="Moore, David S., and George P. McCabe (1989)",
    citationScaleFontFactor=0.75,
    graphType="Scatter2D",
    theme="CanvasXpress",
    title="Mean heights of a group of children in Kalama",
    xAxis=list("Age"),
    yAxis=list("Height"),
    afterRender=list(list("addRegressionLine"))
  )
}

cXscatter2d9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-breastcancert-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    citation="Velleman, P. F. and Hoaglin, D. C. (1981).\nApplications, Basics, and Computing of Exploratory Data Analysis. Belmont. CA: Wadsworth, Inc., pp. 127-134.",
    colors=list("rgba(64,64,64,0.5)"),
    decorationsBackgroundColor="rgb(238,238,238)",
    decorationsBorderColor="rgb(0,0,0)",
    decorationsPosition="bottomRight",
    graphType="Scatter2D",
    legendBackgroundColor="rgba(255,255,255,0)",
    legendInside=TRUE,
    plotBox=FALSE,
    showDecorations=TRUE,
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Mean annual temperature (in degrees F) and Mortality Index for neoplasms of the female breast.",
    xAxis=list("Mortality"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("Temperature"),
    yAxisTickColor="rgb(255,255,255)",
    afterRender=list(list("addRegressionLine", list(list(FALSE, 'red'))))
  )
}

cXscatter2d10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-nonlinearfit-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    theme="CanvasXpress",
    xAxis=list("Concentration"),
    xAxisTransform="log10",
    xAxisTransformTicks=TRUE,
    yAxis=list("V1"),
    yAxisExact=TRUE
  )
}

cXscatter2d11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scatterR-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scatterR-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colorBy="Group",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
    decorations=list(line=list(list(color="rgba(205,0,0,0.5)", width=2, y=0.5), list(color="rgba(0,104,139,0.5)", width=2, y=-0.5))),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    legendInside=TRUE,
    legendPosition="bottomRight",
    plotBox=FALSE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLoessFit=TRUE,
    showTransition=FALSE,
    sizeBy="FC",
    sizes=list(4, 12, 14, 15, 16, 17, 18),
    theme="CanvasXpress",
    title="Profile plot",
    xAxis=list("AveExpr"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("logFC"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scatterR2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scatterR2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colorBy="Group",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)", "rgba(64,64,64,0.5)"),
    decorations=list(line=list(list(color="rgba(205,0,0,0.5)", width=2, x=0.5), list(color="rgba(0,104,139,0.5)", width=2, x=-0.5))),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    plotBox=FALSE,
    showDecorations=TRUE,
    showTransition=FALSE,
    sizeBy="FC",
    sizes=list(4, 12, 14, 15, 16, 17, 18),
    theme="CanvasXpress",
    title="Volcano plot",
    xAxis=list("logFC"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("-log-pVal"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scatterR3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-scatterR3-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colorBy="Group",
    colors=list("rgba(255,215,0,0.5)", "rgba(64,64,64,0.5)", "rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    decorations=list(line=list(list(color="rgba(64,64,64,0.5)", width=2, x=0), list(color="rgba(64,64,64,0.5)", width=2, y=0), list(color="rgba(255,215,0,0.5)", width=2, x=-5, x2=5, y=-5, y2=5))),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBox=TRUE,
    legendBoxColor="rgb(0,0,0)",
    legendInside=TRUE,
    legendPosition="bottomRight",
    plotBox=FALSE,
    showDecorations=TRUE,
    showTransition=FALSE,
    sizeBy="Hit",
    sizeByShowLegend=FALSE,
    sizes=list(4, 14),
    theme="CanvasXpress",
    title="Contrast plot",
    xAxis=list("logFC-X"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("logFC-Y"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scatterR4-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    graphType="Scatter2D",
    legendBackgroundColor="rgba(255,255,255,0)",
    legendInside=TRUE,
    legendPosition="topRight",
    plotBox=FALSE,
    theme="CanvasXpress",
    title="Waterfall plot",
    xAxis=list("Row"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("S1", "S2"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-visium-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-visium-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    backgroundImage="https://www.canvasxpress.org/assets/images/visium.png",
    backgroundType="windowImage",
    colorBy="signal",
    graphType="Scatter2D",
    plotBox=FALSE,
    scatterType="visium",
    title="Visium Spatial Transcriptomics",
    visiumFlip=FALSE,
    xAxis=list("imagecol"),
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE,
    yAxis=list("imagerow"),
    yAxisShow=FALSE,
    yAxisTicksMajorShow=FALSE,
    yAxisTicksMinorShow=FALSE
  )
}

cXscatter2d16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-gwas-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Manhattan Plot"
  )
}

cXscatter2d17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-fcyt-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXscatter3d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTickScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    theme="CanvasXpress",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Sepal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTickScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    ellipseBy="Species",
    graphType="Scatter3D",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    theme="CanvasXpress",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Petal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-loess3-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    showConfidenceIntervals=TRUE,
    showLoessFit=TRUE,
    theme="CanvasXpress",
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
  y=read.table("https://www.canvasxpress.org/data/cX-scatter3d-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    theme="CanvasXpress",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatter3d5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-scatter3d-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    scatterType="bar",
    theme="CanvasXpress",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatter3d6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic2-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    xAxis=list("S1"),
    yAxis=list("S2"),
    zAxis=list("S3")
  )
}

cXscatterbubble2d1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-bubble-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-bubble-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    showTransition=FALSE,
    theme="CanvasXpress",
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXscatterbubble2d2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="ScatterBubble2D",
    theme="CanvasXpress",
    xAxis=list("S1", "S4"),
    yAxis=list("S2", "S5"),
    zAxis=list("S3", "S6")
  )
}

cXscatterbubble2d3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-bubble-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-bubble-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    motionBy="Year",
    theme="CanvasXpress",
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXstacked1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-stacked2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-stacked2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    treemapBy=list("Factor2", "Factor3")
  )
}

cXstacked2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1,
    showDataValues=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstacked3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstacked4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    showDataValues=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    splitSamplesBy="Factor3",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstacked5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-diverging-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxisTickFormat="%s%%"
  )
}

cXstackedline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedpercent1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstackedpercent2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    showDataValues=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstackedpercent3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1.5,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    theme="CanvasXpress",
    title="Random Data"
  )
}

cXstackedpercent4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-diverging-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxisTickFormat="%s%%"
  )
}

cXstackedpercent5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-movieRoles-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-movieRoles-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-movieRoles-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    background="rgb(63,149,180)",
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
    layoutBoxShow=FALSE,
    layoutLabelColor="rgb(255,255,255)",
    marginBottom=50,
    marginLeft=50,
    marginRight=50,
    marginTop=50,
    maxTextSize=80,
    objectBorderColor="rgba(255,255,255,0)",
    patternBy="InOut",
    patterns=list("solid", "stripeHorizontal", "hatchForward", "hatchReverse", "stripeVertical", "polkaDot"),
    segregateVariablesBy=list("Gender"),
    showLegend=FALSE,
    smpLabelColor="rgb(255,255,255)",
    smpLabelScaleFontFactor=3,
    title="Fewer Role Models",
    titleColor="rgb(252,157,156)",
    titleScaleFontFactor=2.5,
    widthFactor=1.1,
    xAxis2Show=FALSE,
    xAxisShow=FALSE,
    xAxisTicksMajorShow=FALSE,
    xAxisTicksMinorShow=FALSE
  )
}

cXstackedpercentline1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXstackedpercentline2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    theme="CanvasXpress",
    title="Stacked-Line Graphs",
    xAxis=list("V1", "V2"),
    xAxis2=list("V3", "V4")
  )
}

cXsunburst1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Simple Sunburst"
  )
}

cXsunburst2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Simple Sunburst Colored by Category"
  )
}

cXsunburst3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Rotated Sunburst"
  )
}

cXsunburst4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-sunburst-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-sunburst-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Rotated Half Sunburst"
  )
}

cXtcga1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=90,
    toolbarType="over"
  )
}

cXtcga2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=90,
    toolbarType="over"
  )
}

cXtcga3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=90,
    toolbarType="over"
  )
}

cXtcga4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=90,
    toolbarType="over"
  )
}

cXtcga5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcga-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-exprtcga-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=90,
    toolbarType="over"
  )
}

cXtcga6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=15,
    histogramData=TRUE,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    showFilledHistogramDensity=FALSE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    toolbarType="over",
    xAxisRugShow=FALSE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=15,
    histogramData=TRUE,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    segregateVariablesBy=list("dataset"),
    showFilledHistogramDensity=FALSE,
    showHistogramDensity=TRUE,
    showHistogramMedian=FALSE,
    toolbarType="over",
    xAxisRugShow=FALSE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="dataset",
    colorKey=list(dataset=list(BRCA="#0073c2", LUSC="#efc000", OV="#868686")),
    colorScheme="JCO",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    histogramBins=15,
    histogramData=TRUE,
    histogramType="staggered",
    layoutTopology="1X3",
    legendColumns=3,
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    legendPosition="top",
    legendTextScaleFontFactor=1.5,
    segregateSamplesBy=list("sample"),
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    toolbarType="over",
    xAxisRugShow=TRUE,
    xAxisTitle="Expression",
    yAxisTitle="Density"
  )
}

cXtcga9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxisTitle="",
    yAxisTitle=""
  )
}

cXtcga10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-exprtcgat-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxisTitle="Expression",
    yAxisTitle="F(Expression)"
  )
}

cXtagcloud1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-cars-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-cars-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Country",
    graphType="TagCloud",
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showTransition=FALSE
  )
}

cXtree1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree"
  )
}

cXtree2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-tree2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-tree2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Tree",
    hierarchy=list("Level1", "Level2"),
    showTransition=TRUE,
    title="Collapsible Tree"
  )
}

cXtree3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot1",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    legendKeyBackgroundBorderColor="rgba(255,255,255,0)",
    legendKeyBackgroundColor="rgba(255,255,255,0)",
    showTransition=TRUE,
    title="Collapsible Tree"
  )
}

cXtree4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot2",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree"
  )
}

cXtree5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-tree-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-tree-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot2",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree",
    treeCircular=TRUE
  )
}

cXtreemap1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.15, y=0.1))),
    graphType="Treemap",
    objectBorderColor="rgb(0,0,0)",
    showDecorations=FALSE,
    showTransition=FALSE,
    theme="CanvasXpress",
    title="Population colored by Gross National Income 2014",
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXtreemap2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-generic-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-generic-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-generic-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Treemap",
    theme="CanvasXpress"
  )
}

cXtreemap3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-stacked1-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-stacked1-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    smpLabelRotate=45,
    subtitle="2014 Census",
    theme="CanvasXpress",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    widthFactor=4,
    xAxisTicksMinorShow=FALSE,
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXupset1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-upsetMovies-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table("https://www.canvasxpress.org/data/cX-upsetMovies-var.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Heatmap",
    heatmapType="upset"
  )
}

cXupset2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-upsetMutations-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    heatmapType="upset"
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
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="area",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="count",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin4 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="width",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin5 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=FALSE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinTrim=FALSE,
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin6 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin7 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotMean=TRUE,
    boxplotMeanColor="rgb(255,215,0)",
    boxplotMeanColorBorder="red",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin8 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotMedianColor="red",
    boxplotMedianWidth=5,
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showBoxplotIfViolin=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin9 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=TRUE,
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin10 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    binAlignment="center",
    binned=TRUE,
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin11 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotColor="gold",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=TRUE,
    legendTextScaleFontFactor=1.8,
    shapeBy="supp",
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin12 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    theme="CanvasXpress",
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin13 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin14 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="dose",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    showBoxplotIfViolin=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin15 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinColor="gold",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin16 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    boxplotConnect=TRUE,
    colorBy="supp",
    colorScheme="GGPlot",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    legendTextScaleFontFactor=1.8,
    segregateSamplesBy=list("supp"),
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXviolin17 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-toothgrowth-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    axisTickScaleFontFactor=1.8,
    axisTitleFontStyle="bold",
    axisTitleScaleFontFactor=1.8,
    background="white",
    backgroundType="window",
    backgroundWindow="#E5E5E5",
    colorBy="supp",
    colorScheme="GGPlot",
    connectBy="order",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose", "supp"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendTextScaleFontFactor=1.8,
    segregateSamplesBy=list("supp"),
    showBoxplotIfViolin=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose", "order"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisTickColor="white",
    xAxisTicksMinorShow=FALSE,
    xAxisTitle="len"
  )
}

cXwaterfall1 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-waterfall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-waterfall-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Waterfall plot changes in QoL scores",
    xAxisTitle="Change from baseline (%) in QoL score"
  )
}

cXwaterfall2 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-waterfall-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-waterfall-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Bar",
    segregateSamplesBy=list("Treatment"),
    showLegend=FALSE,
    showSampleNames=FALSE,
    title="Waterfall plot changes in QoL scores",
    xAxisTitle="Change from baseline (%) in QoL score"
  )
}

cXwaterfall3 <- function() {
  library(canvasXpress)
  y=read.table("https://www.canvasxpress.org/data/cX-waterfall2-dat.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table("https://www.canvasxpress.org/data/cX-waterfall2-smp.txt", header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    xAxis2Show=FALSE,
    xAxisTitle="Best tumor shrinkage (%)"
  )
}

