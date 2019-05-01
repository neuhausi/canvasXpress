cXarea1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    showLegend=FALSE,
    showSampleNames=FALSE,
    showTransition=TRUE,
    subtitle="http://menugget.blogspot.com/2013/12/data-mountains-and-streams-stacked-area.html",
    title="Steam Plot"
  )
}

cXarea2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="RlatticeShingle",
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    showTransition=TRUE,
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    transparency=0.5,
    xAxis2Show=FALSE,
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="percent",
    colorScheme="Basic",
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    showTransition=TRUE,
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    xAxis2Show=FALSE,
    xAxisTitle="Normalized Percentage of People"
  )
}

cXarea4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="Blues",
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    xAxis2Show=FALSE,
    xAxisTitle="Number of People (1000's)"
  )
}

cXarea5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="RlatticeShingle",
    graphOrientation="vertical",
    graphType="Area",
    legendPosition="right",
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    transformAxis="samples",
    transformType="zscore",
    transformedData=TRUE,
    transparency=0.5,
    xAxis2Show=FALSE,
    xAxisTitle="Normalized Scores of Number of People"
  )
}

cXarea6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    axisAlgorithm="wilkinsonExtended",
    colorScheme="ColorSpectrum",
    colorSpectrum=list("blue", "cyan", "yellow", "red"),
    graphOrientation="vertical",
    graphType="Area",
    lineType="spline",
    showLegend=FALSE,
    showSampleNames=FALSE,
    subtitle="http://menugget.blogspot.com/2013/12/data-mountains-and-streams-stacked-area.html",
    title="Data Mountain"
  )
}

cXarealine1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-arealine-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Basic",
    graphOrientation="vertical",
    graphType="AreaLine",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarealine2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-arealine-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    areaType="stacked",
    colorScheme="Spectral",
    graphOrientation="vertical",
    graphType="AreaLine",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXarealine3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-arealine-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    colorScheme="Paired",
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="AreaLine",
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    smpLabelInterval=20,
    smpLabelRotate=45,
    smpTitle="Year",
    subtitle="gcookbook - uspopage",
    title="Age distribution of population in the United State",
    xAxis=list("<5", "5-14", "15-24", "25-34"),
    xAxis2=list("35-44", "45-54", "55-64", ">64"),
    xAxisTitle="Number of People (1000's)"
  )
}

cXbar1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.15, y=0.1))),
    graphOrientation="vertical",
    graphType="Stacked",
    legendInside=TRUE,
    legendPosition="top",
    showTransition=TRUE,
    smpLabelRotate=45,
    subtitle="2014 Census",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    widthFactor=4,
    xAxisMinorTicks=FALSE,
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXbar2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-basic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    title="Simple Bar graph"
  )
}

cXbar3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-basic2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(marker=list(list(fontSize=12, sample="Sample1", text="p < 0.01 ***", type="annotation", variable="Variable1"), list(fontSize=12, sample="Sample2", text="p < 0.05 **", type="annotation", variable="Variable1"))),
    graphOrientation="vertical",
    graphType="Bar",
    title="Simple Bar graph with annotations"
  )
}

cXbar4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    decorations=list(marker=list(list(sample="setosa", text="Species with\nlowest petal\nwidth", variable="Petal.Width", x=0.4, y=0.85))),
    graphOrientation="vertical",
    graphType="Bar",
    legendColumns=2,
    legendPosition="bottom",
    showTransition=TRUE,
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXbar5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    fontStyle="bold italic",
    graphOrientation="vertical",
    graphType="Bar",
    legendFontStyle="italic",
    plotByVariable=TRUE,
    showShadow=TRUE,
    smpLabelFontStyle="italic",
    smpLabelInterval=2,
    smpLabelRotate=45,
    smpTitle="Sample Title",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-simple-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-simple-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorBy="Drug Sensitivity",
    colorScheme="basic",
    decorationScaleFontFactor=1.3,
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    graphOrientation="vertical",
    graphType="Bar",
    legendBox=TRUE,
    showFunctionNamesAfterRender=FALSE,
    showShadow=TRUE,
    smpTitle="Cell Lines",
    smpTitleFontStyle="bold",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-simple-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-simple-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorBy="IC50",
    colorScheme="basic",
    decorationScaleFontFactor=1.3,
    decorations=list(line=list(list(align="left", color="rgb(255,0,0)", label="Cutoff", value=50, width=2))),
    graphOrientation="vertical",
    graphType="Bar",
    showShadow=TRUE,
    smpOverlays=list("Drug Sensitivity"),
    smpTitle="Cell Lines",
    smpTitleFontStyle="bold",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-lollipop-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    barLollipopFactor=3,
    barType="lollipop",
    graphType="Bar",
    showTransition=TRUE,
    widthFactor=0.1
  )
}

cXbar9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Bar",
    is3DPlot=TRUE,
    scatterType="bar",
    widthFactor=1.2,
    x3DRatio=0.5
  )
}

cXbar10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-swimmer-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-swimmer-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    graphOrientation="horizontal",
    graphType="Bar",
    smpOverlays=list("Durable"),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    title="Tumor Response with Duration by Stage and Month",
    xAxisTitle="Duration of Treatment in Months",
    afterRender=list(list("groupSamples", list("Subject")))
  )
}

cXbar11 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-swimmer-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-swimmer-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    barType="swimmer",
    colorBy="Stage",
    graphOrientation="vertical",
    graphType="Bar",
    smpOverlayProperties=list(Durable=list(position="bottom"), Response=list(position="bottom", thickness=100, type="Bar")),
    smpOverlays=list("Durable", "Response"),
    swimDurable="Durable",
    swimEnd="end",
    swimHigh="high",
    swimHighCap="High Cap",
    swimStart="start",
    swimStatus="Status",
    title="Tumor Response with Duration by Stage and Month",
    xAxisTitle="Duration of Treatment in Months",
    afterRender=list(list("groupSamples", list("Subject")))
  )
}

cXbarline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    backgroundGradient1Color="rgb(226,236,248)",
    backgroundGradient2Color="rgb(112,179,222)",
    backgroundType="gradient",
    graphOrientation="vertical",
    graphType="BarLine",
    legendBackgroundColor=FALSE,
    legendColumns=2,
    legendPosition="bottom",
    lineThickness=2,
    lineType="spline",
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelRotate=45,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4"),
    xAxis2TickFormat="%.0f T",
    xAxisTickColor="rgb(0,0,0)",
    xAxisTickFormat="%.0f M"
  )
}

cXbarline2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="BarLine",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXbarline3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="BarLine",
    legendColumns=4,
    legendPosition="bottom",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Bar-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXboxplot1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="horizontal",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    boxplotOutliersRatio=3,
    boxplotWishkersType="single",
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    boxplotHingeFunction="fivenum",
    boxplotNotched=TRUE,
    boxplotWishkersType="single",
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=TRUE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot11 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot12 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot13 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot14 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot15 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
    showLegend=TRUE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    stringSampleFactors=list("dose"),
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len",
    afterRender=list(list("pivotX", list("dose")))
  )
}

cXboxplot16 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot17 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXboxplot18 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXbubble1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularType="bubble",
    graphType="Circular",
    showTransition=TRUE,
    title="Simple Bubble Graph"
  )
}

cXbubble2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularRotate=45,
    circularType="bubble",
    colorBy="Level1",
    graphType="Circular",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Hierarchical Colored Bubble Graph"
  )
}

cXbubble3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularRotate=45,
    circularType="bubble",
    graphType="Circular",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Hierarchical Bubble Graph"
  )
}

cXchord1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-chord-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    circularArc=360,
    circularRotate=0,
    circularType="chord",
    colors=list("#000000", "#FFDD89", "#957244", "#F26223"),
    graphType="Circular",
    higlightGreyOut=TRUE,
    rAxisTickFormat=list("%sK", "val / 1000"),
    showTransition=TRUE,
    title="Simple Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-chord-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    circularArc=360,
    circularRotate=180,
    circularType="chord",
    colors=list("#000000", "#FFDD89", "#957244", "#F26223"),
    graphType="Circular",
    higlightGreyOut=TRUE,
    rAxisTickFormat=list("%sK", "val / 1000"),
    showTransition=TRUE,
    title="Rotated Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXchord3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-chord-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    circularArc=180,
    circularRotate=-90,
    circularType="chord",
    colors=list("#000000", "#FFDD89", "#957244", "#F26223"),
    graphType="Circular",
    higlightGreyOut=TRUE,
    rAxisTickFormat=list("%sK", "val / 1000"),
    showLegend=FALSE,
    showTransition=TRUE,
    title="Rotated Half Chord Graph",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-circular-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    connections=list(list("rgb(255,0,0)", "s1", "s15"), list("rgb(0,255,0)", "s25", "s120"), list("rgb(255,0,0)", "s34", "s2"), list("rgb(255,0,0)", "s47", "s69"), list("rgb(255,0,0)", "s15", "s74"), list("rgb(0,120,0)", "s57", "s87"), list("rgb(255,34,0)", "s54", "s118"), list("rgb(255,0,100)", "s78", "s18"), list("rgb(255,134,0)", "s90", "s48"), list("rgb(120,0,0)", "s120", "s68"), list("rgb(255,0,0)", "s131", "s92"), list("rgb(0,255,0)", "s148", "s119"), list("rgb(0,0,255)", "s10", "s14"), list("rgb(255,0,0)", "s56", "s6"), list("rgb(255,0,0)", "s98", "s90"), list("rgb(255,0,0)", "s113", "s20")),
    graphType="Circular",
    ringGraphType=list("dot", "heatmap", "bar"),
    ringGraphWeight=list(50, 25, 25),
    segregateSamplesBy=list("Species"),
    segregateVariablesBy=list("Ring"),
    showTransition=TRUE,
    smpOverlays=list("Species"),
    title="Iris flower data set (1D Circular Plot)",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-circular2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular2-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    connections=list(list("rgb(0,0,255)", "setosa", 42, "versicolor", 35, 1, 2), list("rgb(0,255,0)", "virginica", 26, "versicolor", 15, 4, 8), list("rgb(120,0,255)", "setosa", 36, "virginica", 5, 6, 9), list("rgb(0,40,255)", "versicolor", 9, "versicolor", 18, 2, 5), list("rgb(80,0,55)", "versicolor", 14, "setosa", 9, 3, 4), list("rgb(0,55,140)", "setosa", 12, "setosa", 41, 5, 2), list("rgb(255,0,0)", "virginica", 25, "setosa", 3, 2, 6)),
    graphType="Circular",
    rAxis="Number",
    ringGraphWeight=list(25, 25, 25, 25),
    segregateSamplesBy=list("Species"),
    segregateVariablesBy=list("Ring"),
    showTransition=TRUE,
    title="Iris flower data set (2D Circular Plot)",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcircular3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-circular-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Species",
    connections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    graphType="Circular",
    ringGraphType=list("heatmap"),
    samplesClustered=TRUE,
    smpDendrogramPosition="outside",
    smpOverlays=list("Species"),
    title="Iris flower data set (Dendrogram Outside)"
  )
}

cXcircular4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-circular-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Species",
    connections=list(list("rgb(120,0,255)", "s71", "s107"), list("rgb(120,0,255)", "s73", "s107"), list("rgb(120,0,255)", "s84", "s107")),
    graphType="Circular",
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
  y=read.table(system.file("extdata", "cX-ideogram-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-ideogram-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-ideogram-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-ideogram-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-ideogram-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-ideogram-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-ideogram-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-ideogram-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-ideogram-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-circularNoData-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circularNoData-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    arcSegmentsSeparation=1,
    circularLabelsAlign="inside",
    colorScheme="ColorSpectrum",
    connections=list(list("EA832040", "EA1011925A27"), list("EA832040", "EA832496"), list("EA832040", "EA832497"), list("EA832039", "EA1011925A19"), list("EA832039", "EA832486"), list("EA832039", "EA832492"), list("EA832044", "EA1011925A3"), list("EA832045", "EA1011925A5"), list("EA832048", "EA1011925A10"), list("EA832048", "EA832502"), list("EA832048", "EA832503"), list("EA832051", "EA1011925A9"), list("EA832051", "EA832507"), list("EA832051", "EA832509"), list("EA832050", "EA1011925A12"), list("EA1011925A18", "EA832483"), list("EA1011925A18", "EA832491"), list("EA1011925A19", "EA832039"), list("EA1011925A19", "EA832486"), list("EA1011925A19", "EA832492"), list("EA1011925A23", "EA832484"), list("EA1011925A23", "EA832501"), list("EA1011925A24", "EA832489"), list("EA1011925A25", "EA832498"), list("EA1011925A27", "EA832040"), list("EA1011925A27", "EA832496"), list("EA1011925A27", "EA832497"), list("EA1011925A30", "EA832487"), list("EA1011925A30", "EA832488"), list("EA1011925A1", "EA832521"), list("EA1011925A1", "EA832525"), list("EA1011925A2", "EA832510"), list("EA1011925A2", "EA832511"), list("EA1011925A3", "EA832044"), list("EA1011925A4", "EA832514"), list("EA1011925A4", "EA832515"), list("EA1011925A5", "EA832045"), list("EA1011925A6", "EA832519"), list("EA1011925A7", "EA832508"), list("EA1011925A7", "EA832513"), list("EA1011925A8", "EA836531"), list("EA1011925A8", "EA832504"), list("EA1011925A8", "EA832524"), list("EA1011925A9", "EA832051"), list("EA1011925A9", "EA832507"), list("EA1011925A9", "EA832509"), list("EA1011925A10", "EA832048"), list("EA1011925A10", "EA832502"), list("EA1011925A10", "EA832503"), list("EA1011925A11", "EA832523"), list("EA1011925A12", "EA832050"), list("EA1011925A13", "EA832506"), list("EA1011925A13", "EA832527"), list("EA1011925A14", "EA832520"), list("EA1011925A15", "EA832517"), list("EA1011925A15", "EA832518"), list("EA1011925A16", "EA836533"), list("EA1011925A16", "EA832475"), list("EA1011925A16", "EA832526"), list("EA832475", "EA836533"), list("EA832475", "EA1011925A16"), list("EA832475", "EA832526"), list("EA832476", "EA832480"), list("EA832479", "EA832490"), list("EA832480", "EA832476"), list("EA832481", "EA836505"), list("EA832481", "EA832493"), list("EA832482", "EA832499"), list("EA832483", "EA1011925A18"), list("EA832483", "EA832491"), list("EA832484", "EA1011925A23"), list("EA832484", "EA832501"), list("EA832486", "EA1011925A19"), list("EA832486", "EA832039"), list("EA832486", "EA832492"), list("EA832487", "EA1011925A30"), list("EA832487", "EA832488"), list("EA832488", "EA1011925A30"), list("EA832488", "EA832487"), list("EA832489", "EA1011925A24"), list("EA832490", "EA832479"), list("EA832491", "EA1011925A18"), list("EA832491", "EA832483"), list("EA832492", "EA1011925A19"), list("EA832492", "EA832039"), list("EA832492", "EA832486"), list("EA832493", "EA836505"), list("EA832493", "EA832481"), list("EA832494", "EA832495"), list("EA832495", "EA832494"), list("EA832496", "EA1011925A27"), list("EA832496", "EA832040"), list("EA832496", "EA832497"), list("EA832497", "EA1011925A27"), list("EA832497", "EA832040"), list("EA832497", "EA832496"), list("EA832498", "EA1011925A25"), list("EA832498", "EA832500"), list("EA832499", "EA832482"), list("EA832500", "EA832498"), list("EA832501", "EA1011925A23"), list("EA832501", "EA832484"), list("EA832502", "EA1011925A10"), list("EA832502", "EA832048"), list("EA832502", "EA832503"), list("EA832503", "EA1011925A10"), list("EA832503", "EA832048"), list("EA832503", "EA832502"), list("EA832504", "EA836531"), list("EA832504", "EA1011925A8"), list("EA832504", "EA832524"), list("EA832506", "EA1011925A13"), list("EA832506", "EA832527"), list("EA832507", "EA1011925A9"), list("EA832507", "EA832051"), list("EA832507", "EA832509"), list("EA832508", "EA1011925A7"), list("EA832508", "EA832513"), list("EA832509", "EA1011925A9"), list("EA832509", "EA832051"), list("EA832509", "EA832507"), list("EA832510", "EA1011925A2"), list("EA832510", "EA832511"), list("EA832511", "EA1011925A2"), list("EA832511", "EA832510"), list("EA832513", "EA1011925A7"), list("EA832513", "EA832508"), list("EA832514", "EA1011925A4"), list("EA832514", "EA832515"), list("EA832515", "EA1011925A4"), list("EA832515", "EA832514"), list("EA832517", "EA1011925A15"), list("EA832517", "EA832518"), list("EA832518", "EA1011925A15"), list("EA832518", "EA832517"), list("EA832519", "EA1011925A6"), list("EA832520", "EA1011925A14"), list("EA832521", "EA1011925A1"), list("EA832521", "EA832525"), list("EA832523", "EA1011925A11"), list("EA832524", "EA836531"), list("EA832524", "EA1011925A8"), list("EA832524", "EA832504"), list("EA832525", "EA1011925A1"), list("EA832525", "EA832521"), list("EA832526", "EA836533"), list("EA832526", "EA1011925A16"), list("EA832526", "EA832475"), list("EA832527", "EA1011925A13"), list("EA832527", "EA832506"), list("EA836488", "EA836513"), list("EA836488", "EA836514"), list("EA836494", "EA836528"), list("EA836494", "EA836529"), list("EA836492", "EA836493"), list("EA836496", "EA836535"), list("EA836496", "EA836536"), list("EA836493", "EA836492"), list("EA836533", "EA836534"), list("EA836533", "EA1011925A16"), list("EA836533", "EA832475"), list("EA836533", "EA832526"), list("EA836501", "EA836502"), list("EA836497", "EA836498"), list("EA836502", "EA836501"), list("EA836505", "EA832481"), list("EA836505", "EA832493"), list("EA836503", "EA836510"), list("EA836507", "EA836508"), list("EA836517", "EA836518"), list("EA836511", "EA836512"), list("EA836515", "EA836516"), list("EA836516", "EA836515"), list("EA836498", "EA836497"), list("EA836508", "EA836507"), list("EA836512", "EA836511"), list("EA836499", "EA836500"), list("EA836500", "EA836499"), list("EA836513", "EA836488"), list("EA836513", "EA836514"), list("EA836514", "EA836488"), list("EA836514", "EA836513"), list("EA836509", "EA836504"), list("EA836510", "EA836503"), list("EA836504", "EA836509"), list("EA836518", "EA836517"), list("EA836528", "EA836494"), list("EA836528", "EA836529"), list("EA836529", "EA836494"), list("EA836529", "EA836528"), list("EA836530", "EA836531"), list("EA836526", "EA836527"), list("EA836535", "EA836496"), list("EA836535", "EA836536"), list("EA836523", "EA836524"), list("EA836536", "EA836496"), list("EA836536", "EA836535"), list("EA836539", "EA836540"), list("EA836540", "EA836539"), list("EA836524", "EA836523"), list("EA836521", "EA836522"), list("EA836522", "EA836521"), list("EA836537", "EA836538"), list("EA836538", "EA836537"), list("EA836531", "EA836530"), list("EA836531", "EA1011925A8"), list("EA836531", "EA832504"), list("EA836531", "EA832524"), list("EA836534", "EA836533"), list("EA836527", "EA836526")),
    graphType="Circular",
    overlayLevelOrientation="perpendicular",
    overlayScaleFontFactor=0.3,
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
  y=read.table(system.file("extdata", "cX-volcano-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Heatmap",
    heatmapCellBox=FALSE,
    showSampleNames=FALSE,
    showVariableNames=FALSE,
    subtitle="datasets - volcano",
    title="Topographic Information on Auckland's Maunga Whau Volcano",
    afterRender=list(list("createContour"))
  )
}

cXcorrelation1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    gradient=TRUE,
    graphType="Correlation",
    showTransition=TRUE,
    title="Correlation Plot",
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    correlationAxis="samples",
    correlationType="circle",
    gradient=TRUE,
    graphType="Correlation",
    showTransition=TRUE,
    title="Correlation Plot",
    yAxisTitle="Correlation Title"
  )
}

cXcorrelation3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXdensity1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram=TRUE,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogramDensity=TRUE
  )
}

cXdensity2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram=TRUE,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE
  )
}

cXdensity3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram=TRUE,
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE
  )
}

cXdensity4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram="sex",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogramDensity=TRUE
  )
}

cXdensity5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram="sex",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE
  )
}

cXdensity6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram="sex",
    graphType="Scatter2D",
    hideHistogram=TRUE,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE
  )
}

cXdensity7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-density-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    asHistogram="sex",
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE
  )
}

cXdensity8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-density2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-density2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphType="Scatter2D",
    hideHistogram=FALSE,
    histogramBins=20,
    showFilledHistogramDensity=TRUE,
    showHistogramDensity=TRUE,
    showHistogramMedian=TRUE,
    xAxisHistogramHeight=150,
    xAxisHistogramShow=TRUE,
    yAxisHistogramHeight=150,
    yAxisHistogramShow=TRUE
  )
}

cXdonnut1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    title="Simple Donnut",
    transitionStep=50,
    transitionTime=1500
  )
}

cXdonnut2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    title="Donnut with two levels",
    transitionStep=50,
    transitionTime=1500
  )
}

cXdotline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    backgroundGradient1Color="rgb(226,236,248)",
    backgroundGradient2Color="rgb(112,179,222)",
    backgroundType="gradient",
    graphOrientation="vertical",
    graphType="DotLine",
    legendBackgroundColor=FALSE,
    legendColumns=2,
    legendPosition="bottom",
    lineThickness=2,
    lineType="spline",
    showShadow=TRUE,
    smpLabelRotate=45,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4"),
    xAxisTickColor="rgb(0,0,0)"
  )
}

cXdotline2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="vertical",
    graphType="DotLine",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXdotline3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dot-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXdotplot1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="basic",
    graphOrientation="vertical",
    graphType="Dotplot",
    legendColumns=2,
    lineType="spline",
    showAnimation=FALSE,
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelRotate=45,
    smpOverlays=list("Factor1", "Factor2", "Factor3"),
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Dotplot Graph",
    xAxisTickFormat="%.0f Mil."
  )
}

cXdotplot2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTickFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    decorations=list(marker=list(list(sample="setosa", text="Species with\nlowest petal\nwidth", variable="Petal.Width", x=0.4, y=0.85))),
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Dotplot",
    jitter=TRUE,
    marginBottom=30,
    showShadow=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXdotplot3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cars-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    citation="Henderson, H. V. and Velleman, P. F. (1981), Building Regression Models Interactively. Biometrics, 37, 391-411.",
    citationFontStyle="italic",
    graphType="Dotplot",
    legendColumns=2,
    legendInside=TRUE,
    legendPosition="rightBottom",
    showTransition=TRUE,
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    afterRender=list(list("groupSamples", list("Country")))
  )
}

cXdotplot4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-dumbbell-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-dumbbell-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisAlgorithm="wilkinson",
    connectBy="Connect",
    dotplotType="stacked",
    graphType="Dotplot",
    showTransition=TRUE,
    smpTitle="School",
    sortDir="descending",
    title="Gender Earnings Disparity",
    xAxis2Title="Annual Salary",
    xAxisMinorTicks=FALSE,
    xAxisShow=FALSE,
    xAxisTickFormat="$%sK",
    xAxisTitle="Annual Salary",
    afterRender=list(list("sortSamplesByVariable", list("Men")))
  )
}

cXdotplot5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    errorBarsColor="red",
    errorBarsType="standardDeviation",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    showLegend=FALSE,
    smpLabelRotate=90,
    smpLabelScaleFontFactor=1.8,
    smpTitle="dose",
    smpTitleFontStyle="bold",
    smpTitleScaleFontFactor=1.8,
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXdotplot6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="GGPlot",
    errorBarsColor="red",
    errorBarsType="standardDeviation",
    graphOrientation="vertical",
    graphType="Dotplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    jitter=FALSE,
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXdotplot7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXdotplot8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXdotplot9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXdotplot10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXheatmap1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("blue", "white", "red"),
    graphType="Heatmap",
    title="Simple Heatmap"
  )
}

cXheatmap2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("blue", "white", "red"),
    graphType="Heatmap",
    heatmapCellBoxColor="rgb(255,255,255)",
    samplesClustered=TRUE,
    showTransition=TRUE,
    title="Clustered data",
    variablesClustered=TRUE
  )
}

cXheatmap3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Treatment",
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=50,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=60,
    samplesClustered=TRUE,
    title="R Heatmap",
    variablesClustered=TRUE
  )
}

cXheatmap7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSmpDendrogramBy="Treatment",
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=50,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=60,
    heatmapSmpSeparateBy="Treatment",
    samplesClustered=TRUE,
    smpOverlays=list("Treatment", "Site"),
    title="Overlays in Heatmap",
    variablesClustered=TRUE
  )
}

cXheatmap8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=50,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=60,
    heatmapSmpSeparateBy="Treatment",
    highlightSmp=list("Sample1", "Sample2", "Sample3", "Sample4", "Sample5"),
    highlightVar=list("Probe18", "Probe19", "Probe20"),
    samplesClustered=TRUE,
    showTransition=TRUE,
    smpOverlays=list("Treatment", "Site"),
    title="Highlight cells in Heatmap",
    variablesClustered=TRUE
  )
}

cXheatmap9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorKey=list(Sens=list("white", "green"), Site="Pastel1", Treatment="Accent", Type="YlGn"),
    colorSpectrum=list("magenta", "blue", "black", "red", "gold"),
    colorSpectrumZeroValue=0,
    graphType="Heatmap",
    heatmapIndicatorHeight=50,
    heatmapIndicatorHistogram=TRUE,
    heatmapIndicatorPosition="topLeft",
    heatmapIndicatorWidth=60,
    samplesClustered=TRUE,
    showTransition=TRUE,
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
  y=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat2.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat3.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat4.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-multidimensionalheatmap-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-multidimensionalheatmap-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    guides=TRUE,
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
  y=read.table(system.file("extdata", "cX-multidimensionalheatmap2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-overlays-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-overlays-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-overlays-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    showTransition=TRUE,
    smpLabelScaleFontFactor=1.1,
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", type="Default"), Boolean=list(position="left"), Continuous=list(position="left", spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", thickness=50, type="Bar"), PhaseB=list(position="left", thickness=50, type="Bar"), PhaseC=list(position="left", thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Boolean", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    varLabelRotate=45,
    varLabelScaleFontFactor=1.7,
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", thickness=50, type="StackedPercent"), Conc=list(position="top", thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", thickness=30, type="Increase"), Even=list(position="bottom", thickness=50, type="Bar"), Female=list(position="top", thickness=50, type="Pie"), Hot=list(color="red", position="bottom", thickness=50, type="StackedPercent"), Male=list(position="top", thickness=50, type="Pie"), Nice=list(color="green", position="bottom", thickness=50, type="Dotplot"), Odd=list(position="bottom", thickness=50, type="BarLine"), Site=list(position="top", type="Default"), Ugly=list(color="black", position="bottom", thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot")
  )
}

cXhistogram1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cancersurvivalt-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cancersurvivalt-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cancersurvivalt-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=50,
    showShadow=TRUE,
    showTransition=TRUE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects",
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cancersurvivalt-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cancersurvivalt-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cancersurvivalt-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Scatter2D",
    histogramBins=10,
    showShadow=TRUE,
    showTransition=TRUE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxisTitle="Survival (days)",
    yAxisTitle="Number of Subjects",
    afterRender=list(list("createHistogram"))
  )
}

cXhistogram3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-alcoholtobaccot-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-alcoholtobaccot-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    decorations=list(marker=list(list(sample=list("Alcohol", "Tobacco"), text="Maybe an Outlier?", variable="Northern Ireland", x=0.45, y=0.18))),
    graphType="Scatter2D",
    histogramBins=20,
    showTransition=TRUE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxisTitle="Pounds Spent",
    yAxisTitle="Frequency",
    afterRender=list(list("createHistogram"))
  )
}

cXkaplanmeier1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    showTransition=TRUE,
    title="Kaplan-Meier Plot",
    afterRender=list(list("addKaplanMeierCurve", list('Time','Censor')))
  )
}

cXkaplanmeier2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter2D",
    showConfidenceIntervals=TRUE,
    showDecorations=TRUE,
    showLegend=FALSE,
    showTransition=TRUE,
    title="Kaplan-Meier Plot",
    afterRender=list(list("addKaplanMeierCurve", list('Time','Censor')))
  )
}

cXkaplanmeier3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier2-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    kaplanMeierBy="Drug",
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    afterRender=list(list("addKaplanMeierCurve", list('Survival','Survival-Censor')))
  )
}

cXkaplanmeier4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier3-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKaplanMeierCurve", list('Survival','Survival-Censor')), list("addKaplanMeierCurve", list('Survival2','Survival2-Censor')))
  )
}

cXkaplanmeier5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier3-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKaplanMeierCurve", list('Survival','Survival-Censor')), list("createDOE"))
  )
}

cXlayout1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE
  )
}

cXlayout2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    afterRender=list(list("addRegressionLine", list("Species")))
  )
}

cXlayout3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    afterRender=list(list("addRegressionLine"))
  )
}

cXlayout4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE
  )
}

cXlayout5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    afterRender=list(list("addRegressionLine", list("Species")))
  )
}

cXlayout6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")), list("segregateSamples", list("Species")))
  )
}

cXlayout7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cars-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Dotplot",
    legendColumns=3,
    legendPosition="bottom",
    showTransition=TRUE,
    title="Measurements on 38 1978-79 model automobiles.\nThe gas mileage in miles per gallon as measured by Consumers Union on a test track.",
    afterRender=list(list("groupSamples", list("Country")), list("segregateSamples", list("Country")))
  )
}

cXlayout8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    showTransition=TRUE,
    afterRender=list(list("groupSamples", list("Factor1")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Bar",
    showTransition=TRUE,
    afterRender=list(list("segregateSamples", list("Factor1")), list("segregateVariables", list("Annt2")))
  )
}

cXlayout10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutType="rows",
    showTransition=TRUE,
    afterRender=list(list("segregateVariables", list("Annt2")), list("segregateSamples", list("Factor1")))
  )
}

cXlayout11 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scents-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-scents-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Boxplot",
    showTransition=TRUE,
    smpLabelRotate=90,
    smpTitle="Smoking Status",
    afterRender=list(list("groupSamples", list("Smoker")), list("createDOE"))
  )
}

cXlayout12 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier3-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    invertCensored=TRUE,
    showConfidenceIntervals=FALSE,
    showDecorations=TRUE,
    showLegend=FALSE,
    afterRender=list(list("switchSmpToAnnotation", list('Age')), list("switchSmpToAnnotation", list('Clin2')), list("switchSmpToAnnotation", list('Clin3')), list("addKaplanMeierCurve", list('Survival','Survival-Censor')), list("createDOE"))
  )
}

cXlayout13 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-layoutContinuous-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-layoutContinuous-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-layoutContinuous-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="Bar",
    layoutAdjust=TRUE,
    layoutConfig=list(list(axisCoordinate=TRUE, graphType="BarLine", showDataValues=TRUE, xAxis=list("Duration"), xAxis2=list("Discontinued"), xAxisTitle="Duration of Treatment"), list(colorBy="Drug", legendColumns=5, legendInside=TRUE, legendPosition="bottomLeft", showLegend=TRUE, showLegendTitle=FALSE, xAxisTitle="Change from Baseline (%)"), list(barLollipopFactor=1, barLollipopOpen=TRUE, barType="lollipop", xAxisTitle="Baseline (mm)")),
    layoutLabelShow=FALSE,
    layoutTopology="3X1",
    showLegend=FALSE,
    title="Tumor Response and Duration by Subject Id",
    xAxis2Show=FALSE,
    afterRender=list(list("segregateVariables", list("Panel")))
  )
}

cXlayout14 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-overlays-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-overlays-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-overlays-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    showTransition=TRUE,
    smpLabelScaleFontFactor=1.1,
    smpOverlayProperties=list(Binary=list(position="left", scheme="BlackAndWhite", type="Default"), Continuous=list(position="left", spectrum=list("green", "white"), type="Heatmap"), Discrete=list(position="left", thickness=30, type="Default"), Early=list(color="blue", position="right", thickness=50, type="Line"), Late=list(color="red", position="right", thickness=50, type="Line"), OnTime=list(color="green", position="right", thickness=50, type="Line"), PhaseA=list(position="left", thickness=50, type="Bar"), PhaseB=list(position="left", thickness=50, type="Bar"), PhaseC=list(position="left", thickness=50, type="Bar"), Temp=list(position="right", spectrum=list("blue", "white", "red"), thickness=100, type="Heatmap")),
    smpOverlays=list("PhaseA", "PhaseB", "PhaseC", "-", "-", "Binary", "Continuous", "Discrete", "-", "-", "Temp", "-", "-", "Early", "OnTime", "Late"),
    varLabelRotate=45,
    varLabelScaleFontFactor=1.7,
    varOverlayProperties=list(Cold=list(color="blue", position="bottom", thickness=50, type="StackedPercent"), Conc=list(position="top", thickness=40, type="Bar"), Desc=list(position="bottom", type="Text"), Drug=list(position="top", thickness=30, type="Increase"), Even=list(position="bottom", thickness=50, type="Bar"), Female=list(position="top", thickness=50, type="Pie"), Hot=list(color="red", position="bottom", thickness=50, type="StackedPercent"), Male=list(position="top", thickness=50, type="Pie"), Nice=list(color="green", position="bottom", thickness=50, type="Dotplot"), Odd=list(position="bottom", thickness=50, type="BarLine"), Site=list(position="top", type="Default"), Ugly=list(color="black", position="bottom", thickness=50, type="Dotplot")),
    varOverlays=list("Drug", "-", "Male", "Female", "-", "Site", "-", "Conc", "-", "Desc", "-", "Even", "Odd", "-", "-", "Nice", "Ugly", "-", "-", "Cold", "Hot")
  )
}

cXline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="basic",
    graphOrientation="vertical",
    graphType="Line",
    lineType="spline",
    showAnimation=FALSE,
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelRotate=45,
    smpOverlays=list("Factor1", "Factor2", "Factor3"),
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Line Graphs"
  )
}

cXline2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    background="rgb(226,236,248)",
    backgroundType="window",
    blockContrast=TRUE,
    evenColor="rgb(226,236,248)",
    graphOrientation="horizontal",
    graphType="Line",
    legendBackgroundColor=FALSE,
    legendInside=TRUE,
    legendPosition="right",
    showAnimation=TRUE,
    showShadow=TRUE,
    smpOverlays=list("Factor1", "Factor2", "Factor3"),
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXline3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-line-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-line-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Line",
    lineErrorType="area",
    lineType="spline",
    showTransition=TRUE,
    afterRender=list(list("groupSamples", list("Time")))
  )
}

cXmap1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-map-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-map-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Order",
    graphType="Map",
    leafletConfig=list(attributionControl=FALSE, center=list(30, 0), zoom=1.5),
    leafletId="world",
    topoJSON=list(world50m="https://canvasxpress.org/json/world-50m.json")
  )
}

cXmap2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-map-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-map-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Map",
    leafletConfig=list(attributionControl=FALSE, center=list(30, 0), zoom=1.5),
    leafletId="world",
    topoJSON=list(world50m="https://canvasxpress.org/json/world-50m.json")
  )
}

cXmap3 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="variable",
    graphType="Map",
    leafletConfig=list(attributionControl=FALSE, center=list(38, -100), zoom=3),
    leafletId="states",
    showLegend=FALSE,
    topoJSON=list(states="https://canvasxpress.org/json/usa-states.json")
  )
}

cXmap4 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="Order",
    graphType="Map",
    leafletConfig=list(attributionControl=FALSE, center=list(38, -95), zoom=4),
    leafletId="counties",
    topoJSON=list(counties="https://canvasxpress.org/json/usa-counties.json")
  )
}

cXmap5 <- function() {
  library(canvasXpress)
  canvasXpress(
    data=FALSE,
    colorBy="Order",
    graphType="Map",
    leafletConfig=list(attributionControl=FALSE, center=list(38, -95), zoom=4),
    leafletId="districts",
    topoJSON=list(districts="https://canvasxpress.org/json/usa-districts.json")
  )
}

cXnetwork1 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-lesmiserable-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-lesmiserable-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    colorNodeBy="group",
    colorSpectrum=list("purple", "blue", "cyan", "green", "yellow", "orange", "red"),
    edgeWidth=2,
    graphType="Network",
    nodeFontColor="rgb(29,34,43)",
    nodeSize=30,
    showAnimation=TRUE,
    title="Les Miserable"
  )
}

cXnetwork2 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-networkradial-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkradial-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeWidth=5,
    graphType="Network",
    networkLayoutType="radial",
    nodeFontColor="rgb(29,34,43)",
    nodeScaleFontFactor=2,
    nodeSize=40,
    showAnimation=TRUE,
    title="Radial Network"
  )
}

cXnetwork3 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-networkbasic-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkbasic-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXnetwork4 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-networkkarate-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkkarate-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    coordinateNetworkConvexHullCommunityColor=TRUE,
    edgeWidth=2,
    graphType="Network",
    nodeFontColor="rgb(29,34,43)",
    nodeSize=30,
    showAnimation=TRUE,
    showNetworkCommunities=TRUE,
    title="Zachary's famous Karate Club"
  )
}

cXnetwork5 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-wpapoptosis-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-wpapoptosis-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    adjustBezier=FALSE,
    calculateLayout=FALSE,
    graphType="Network",
    networkFreeze=TRUE,
    networkNodesOnTop=FALSE,
    preScaleNetwork=FALSE,
    showAnimation=FALSE,
    showNodeNameThreshold=20000,
    title="Apoptosis"
  )
}

cXnetwork6 <- function() {
  library(canvasXpress)
  nodes=read.table(system.file("extdata", "cX-wpapoptosis-nodes.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-wpapoptosis-edges.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showAnimation=FALSE,
    showNodeNameThreshold=20000,
    title="Apoptosis"
  )
}

cXnetwork7 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://canvasxpress.org/debug/hsa05222.xml",
    appendNetworkData=list("https://canvasxpress.org/debug/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    colorNodeBy="Exp1",
    graphType="Network"
  )
}

cXnetwork8 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://canvasxpress.org/debug/hsa05222.xml",
    appendNetworkData=list("https://canvasxpress.org/debug/hsa05222.txt", list(data=list("2"=list(Exp5=-3, Exp6=4, Exp7="H", Exp8=list(CL1=2, CL2=14, CL3=7), Exp9=list(CL1=32, CL2=1, CL3=5)), "3"=list(Exp5=-1, Exp6=15, Exp7="L", Exp8=list(CL1=2, CL2=40, CL3=22), Exp9=list(CL1=45, CL2=4)), "4"=list(Exp5=5, Exp6=40, Exp7="H", Exp8=list(CL1=32, CL2=4, CL3=15), Exp9=list(CL1=52, CL2=4)), "8"=list(Exp5=10, Exp6=24, Exp7="H", Exp8=list(CL1=12, CL2=4, CL3=1), Exp9=list(CL1=21, CL2=44, CL3=9)), "9"=list(Exp5=-8, Exp6=14, Exp7="M", Exp8=list(CL1=2, CL2=14, CL3=32), Exp9=list(CL1=12, CL2=4))), type="node")),
    decorations=list("Exp2", "Exp3"),
    decorationsHeight=18,
    decorationsPosition="right",
    decorationsType="pie",
    graphType="Network"
  )
}

cXnetwork9 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://canvasxpress.org/debug/WP3624_95209.gpml",
    graphType="Network"
  )
}

cXnetwork10 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://canvasxpress.org/debug/example.xgmml",
    graphType="Network"
  )
}

cXnetwork11 <- function() {
  library(canvasXpress)
  canvasXpress(
    data="https://canvasxpress.org/debug/Apoptosis.xml",
    graphType="Network"
  )
}

cXnonlinearfit1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-nonlinearfit-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    xAxisTransform="log10",
    xAxisTransformTicks=FALSE,
    yAxisExact=TRUE
  )
}

cXnonlinearfit2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    xAxis=list("Sepal.Length", "Sepal.Width"),
    yAxis=list("Petal.Length", "Petal.Width"),
    afterRender=list(list("addNormalDistributionLine"))
  )
}

cXoncoprint1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4, data5=y5),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    isOncoprint="data2",
    showTransition=TRUE
  )
}

cXoncoprint2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4, data5=y5),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    isOncoprint="data2",
    smpOverlayProperties=list(Annt2=list(position="right", type="Bar"), Annt3=list(type="Stacked"), Annt4=list(type="Stacked"), Annt5=list(type="Stacked")),
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5")
  )
}

cXoncoprint3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=list(y=y, data2=y2, data3=y3, data4=y4, data5=y5),
    smpAnnot=x,
    varAnnot=z,
    graphType="Heatmap",
    isOncoprint="data2",
    outlineBy="Color",
    outlineByData="data3",
    patternBy="Pattern",
    patternByData="data4",
    shapeBy="Shape",
    shapeByData="data5",
    smpOverlayProperties=list(Annt2=list(position="right", type="Bar"), Annt3=list(type="Stacked"), Annt4=list(type="Stacked"), Annt5=list(type="Stacked")),
    smpOverlays=list("Annt1", "-", "Annt2", "Annt3", "Annt4", "Annt5")
  )
}

cXparallelcoordinates1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    showTransition=TRUE,
    smpLabelRotate=90,
    title="Iris flower data set"
  )
}

cXparallelcoordinates2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Species",
    graphOrientation="vertical",
    graphType="ParallelCoordinates",
    lineDecoration=FALSE,
    smpLabelRotate=90,
    title="Iris flower data set",
    afterRender=list(list("switchAnnotationToSmp", list("Species")))
  )
}

cXpie1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Pie",
    layout="2X3",
    pieSegmentLabels="inside",
    pieSegmentPrecision=0,
    pieSegmentSeparation=1,
    showPieGrid=TRUE,
    showPieSampleLabel=TRUE,
    showTransition=TRUE,
    xAxis=list("Sample1", "Sample2", "Sample3", "Sample4", "Sample5", "Sample6")
  )
}

cXpie2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Pie",
    pieSegmentLabels="outside",
    pieSegmentPrecision=1,
    pieSegmentSeparation=2,
    pieType="solid",
    showTransition=TRUE
  )
}

cXradar1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringGraphType=list("line"),
    showTransition=TRUE,
    title="Radar - Line",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendPosition="top",
    ringGraphType=list("area"),
    showTransition=TRUE,
    title="Radar - Area",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringGraphType=list("bar"),
    showTransition=TRUE,
    title="Radar - Bar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendPosition="top",
    ringGraphType=list("dot"),
    showTransition=TRUE,
    title="Radar - Scatter",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendPosition="top",
    ringGraphType=list("stacked"),
    showTransition=TRUE,
    title="Radar - Stacked",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=180,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringGraphType=list("line"),
    showTransition=TRUE,
    title="Half Radar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=180,
    circularRotate=-90,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    legendPosition="top",
    ringGraphType=list("line"),
    showTransition=TRUE,
    title="Rotated Half Radar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringGraphType=list("line"),
    showTransition=TRUE,
    smpOverlays=list("Factor3", "-", "Factor1", "Factor2"),
    title="Radar with Overlays",
    transitionStep=50,
    transitionTime=1500
  )
}

cXsankey1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sankey-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    showTransition=TRUE,
    title="Single Level Sankey"
  )
}

cXsankey2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sankey-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Weight",
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Single Level Sankey"
  )
}

cXsankey3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sankey2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    graphOrientation="vertical",
    graphType="Sankey",
    sankeySource="Source",
    sankeyTarget="Target",
    title="Multilevel Sankey"
  )
}

cXsankey4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sankey2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-alcoholtobaccot-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-alcoholtobaccot-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Moore, David S., and George P. McCabe (1989). Introduction to the Practice of Statistics, p. 179.",
    decorations=list(marker=list(list(sample=list("Alcohol", "Tobacco"), text="Maybe an Outlier?", variable="Northern Ireland", x=0.45, y=0.18))),
    graphType="Scatter2D",
    showTransition=TRUE,
    title="Average weekly household spending, in British pounds, on tobacco products\nand alcoholic beverages for each of the 11 regions of Great Britain.",
    xAxis=list("Alcohol"),
    yAxis=list("Tobacco")
  )
}

cXscatter2d2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-spider-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-spider-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Response",
    graphType="Scatter2D",
    legendBox=TRUE,
    legendInside=TRUE,
    legendPosition="topRight",
    spiderBy="Subject",
    title="Tummor Response by Week",
    xAxis=list("Weeks"),
    yAxis=list("Change From Baseline %")
  )
}

cXscatter2d3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-loess2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-scentst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scentst-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    graphType="Scatter2D",
    legendBox=TRUE,
    setMaxX=100,
    setMaxY=150,
    setMinX=0,
    setMinY=0,
    shapeBy="Smoker",
    showTransition=TRUE,
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
  y=read.table(system.file("extdata", "cX-mtcars-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    legendBox=TRUE,
    stringVariableFactors=list("cyl"),
    xAxis=list("wt"),
    yAxis=list("mpg"),
    afterRender=list(list("addRegressionLine", list("cyl")))
  )
}

cXscatter2d6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-mtcars-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    asSampleFactors=list("cyl"),
    colorBy="cyl",
    graphType="Scatter2D",
    legendBox=TRUE,
    showRegressionFullRange=TRUE,
    stringVariableFactors=list("cyl"),
    xAxis=list("wt"),
    yAxis=list("mpg"),
    afterRender=list(list("addRegressionLine", list("cyl")))
  )
}

cXscatter2d7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scentst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scentst-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    colorScheme="White",
    graphType="Scatter2D",
    legendBox=TRUE,
    setMaxX=100,
    setMaxY=150,
    setMinX=0,
    setMinY=0,
    shapeBy="Smoker",
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
  y=read.table(system.file("extdata", "cX-ageheightt-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-ageheightt-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Moore, David S., and George P. McCabe (1989)",
    citationScaleFontFactor=0.75,
    graphType="Scatter2D",
    title="Mean heights of a group of children in Kalama",
    xAxis=list("Age"),
    yAxis=list("Height"),
    afterRender=list(list("addRegressionLine"))
  )
}

cXscatter2d9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-breastcancert-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-breastcancert-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    citation="Velleman, P. F. and Hoaglin, D. C. (1981).\nApplications, Basics, and Computing of Exploratory Data Analysis. Belmont. CA: Wadsworth, Inc., pp. 127-134.",
    colors=list("rgba(64,64,64,0.5)"),
    decorationsBackgroundColor="rgb(238,238,238)",
    decorationsBoxColor="rgb(0,0,0)",
    decorationsPosition="bottomRight",
    graphType="Scatter2D",
    legendBackgroundColor="rgba(0,0,0,0)",
    legendInside=TRUE,
    plotBox=FALSE,
    showDecorations=TRUE,
    showTransition=TRUE,
    title="Mean annual temperature (in degrees F) and Mortality Index for neoplasms of the female breast.",
    xAxis=list("Mortality"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("Temperature"),
    yAxisTickColor="rgb(255,255,255)",
    afterRender=list(list("addRegressionLine", list(FALSE, 'red')))
  )
}

cXscatter2d10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-nonlinearfit-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    decorations=list(nlfit=list(list(label="Custom Fit", param=list(164, 313, 0.031, -1.5, 1.2e-06, 1.9), type="cst"), list(label="Regular Fit", param=list(164, 313, 0.031, 1.5, 1.2e-06, 1.9), type="reg"))),
    graphType="Scatter2D",
    setMaxY=350,
    setMinY=100,
    showDecorations=TRUE,
    xAxis=list("Concentration"),
    xAxisTransform="log10",
    xAxisTransformTicks=FALSE,
    yAxis=list("Variable1"),
    yAxisExact=TRUE
  )
}

cXscatter2d11 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    sizeBy="FC",
    sizes=list(4, 14, 16, 18),
    title="Profile plot",
    xAxis=list("AveExpr"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("logFC"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d12 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR2-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    sizeBy="FC",
    sizes=list(4, 14, 16, 18),
    title="Volcano plot",
    xAxis=list("logFC"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("-log-pVal"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d13 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR3-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    sizeBy="Hit",
    sizeByShowLegend=FALSE,
    sizes=list(4, 14),
    title="Contrast plot",
    xAxis=list("logFC-X"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("logFC-Y"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter2d14 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR4-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    graphType="Scatter2D",
    legendBackgroundColor="rgba(0,0,0,0)",
    legendInside=TRUE,
    legendPosition="topRight",
    plotBox=FALSE,
    title="Waterfall plot",
    xAxis=list("Row"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("Sample1", "Sample2"),
    yAxisTickColor="rgb(255,255,255)"
  )
}

cXscatter3d1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTickScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    graphType="Scatter3D",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Sepal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    axisTickScaleFontFactor=0.5,
    axisTitleScaleFontFactor=0.5,
    colorBy="Species",
    ellipseBy="Species",
    graphType="Scatter3D",
    title="Iris Data Set",
    xAxis=list("Sepal.Length"),
    yAxis=list("Petal.Width"),
    zAxis=list("Petal.Length")
  )
}

cXscatter3d3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-loess3-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-scatter3d-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    xAxis=list("Sample1"),
    yAxis=list("Sample2"),
    zAxis=list("Sample3")
  )
}

cXscatter3d5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatter3d-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    scatterType="bar",
    xAxis=list("Sample1"),
    yAxis=list("Sample2"),
    zAxis=list("Sample3")
  )
}

cXscatter3d6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic2-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorBy="Annt2",
    graphType="Scatter3D",
    shapeBy="Annt3",
    sizeBy="Sample4",
    xAxis=list("Sample1"),
    yAxis=list("Sample2"),
    zAxis=list("Sample3")
  )
}

cXscatterbubble2d1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-bubble-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-bubble-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    showTransition=TRUE,
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXscatterbubble2d2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="ScatterBubble2D",
    xAxis=list("Sample1", "Sample4"),
    yAxis=list("Sample2", "Sample5"),
    zAxis=list("Sample3", "Sample6")
  )
}

cXscatterbubble2d3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-bubble-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-bubble-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    colorBy="Continent",
    graphType="ScatterBubble2D",
    motionBy="Year",
    xAxis=list("LifeExpectancy"),
    yAxis=list("GDPPerCapita"),
    yAxisTransform="log2",
    zAxis=list("Population")
  )
}

cXstacked1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-stacked2-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked2-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorScheme="Blues",
    foreground="rgb(0,0,0)",
    graphOrientation="vertical",
    graphType="Stacked",
    groupingFactors=list("Factor1"),
    sampleSpaceFactor=1,
    showTransition=TRUE,
    title="Random Data",
    treemapBy=list("Factor2", "Factor3")
  )
}

cXstacked2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstacked3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstacked4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1.5,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstacked5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-diverging-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="wilkinson",
    colorScheme="RdYlBu",
    graphOrientation="horizontal",
    graphType="Stacked",
    legendColumns=3,
    legendPosition="bottom",
    marginRight=20,
    title="Diverging Stacked Graph",
    xAxisTickFormat="%s%%"
  )
}

cXstackedline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="StackedLine",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    showTransition=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXstackedline2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="StackedLine",
    legendInside=TRUE,
    legendPosition="right",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXstackedpercent1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1,
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstackedpercent2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    gradient=TRUE,
    graphOrientation="vertical",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstackedpercent3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSpaceFactor=1.5,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstackedpercent4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-diverging-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="wilkinson",
    colorScheme="RdYlBu",
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendColumns=3,
    legendPosition="bottom",
    marginRight=20,
    title="Diverging Stacked Percent Graph",
    xAxisTickFormat="%s%%"
  )
}

cXstackedpercentline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="vertical",
    graphType="StackedPercentLine",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    showTransition=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXstackedpercentline2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="StackedPercentLine",
    lineThickness=3,
    lineType="spline",
    showShadow=TRUE,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    subtitle="Random Data",
    title="Stacked-Line Graphs",
    xAxis=list("Variable1", "Variable2"),
    xAxis2=list("Variable3", "Variable4")
  )
}

cXsunburst1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    title="Simple Sunburst"
  )
}

cXsunburst2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showTransition=TRUE,
    title="Simple Sunburst Colored by Category"
  )
}

cXsunburst3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=360,
    circularRotate=-90,
    circularType="sunburst",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    showTransition=TRUE,
    title="Rotated Sunburst"
  )
}

cXsunburst4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    circularArc=180,
    circularRotate=-90,
    circularType="sunburst",
    colorScheme="Bootstrap",
    graphType="Circular",
    hierarchy=list("Quarter", "Month", "Week"),
    showTransition=TRUE,
    title="Rotated Half Sunburst"
  )
}

cXtagcloud1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cars-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorBy="Country",
    graphType="TagCloud",
    showTransition=TRUE
  )
}

cXtree1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="Annot1",
    graphType="Tree",
    hierarchy=list("Level1", "Level2", "Level3"),
    showTransition=TRUE,
    title="Collapsible Tree"
  )
}

cXtree3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXtree4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.15, y=0.1))),
    graphType="Treemap",
    showDecorations=FALSE,
    showTransition=TRUE,
    title="Population colored by Gross National Income 2014",
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXtreemap2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Treemap"
  )
}

cXtreemap3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisAlgorithm="rPretty",
    colorBy="GNI",
    decorations=list(marker=list(list(align="center", baseline="middle", color="red", sample="Norway", text="Norway is the country\nwith the largest GNI\naccording to 2014 census", variable="population", x=0.65, y=0.7), list(align="center", baseline="middle", color="red", sample="China", text="China is the country with\nthe largest population\naccording to 2014 census", variable="population", x=0.15, y=0.1))),
    graphOrientation="vertical",
    graphType="Stacked",
    legendInside=TRUE,
    legendPosition="top",
    showTransition=TRUE,
    smpLabelRotate=45,
    subtitle="2014 Census",
    title="Country Population colored by Gross National Income",
    treemapBy=list("ISO3"),
    widthFactor=4,
    xAxisMinorTicks=FALSE,
    afterRender=list(list("groupSamples", list("continent")))
  )
}

cXvenn1 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(ABC=552, B=562, ABD=578, BD=354, ABCD=148, AD=257, ACD=298, AC=456, BC=915, AB=639, C=620, CD=143, BCD=613, A=340, D=592),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    showTransition=TRUE,
    vennGroups=4
  )
}

cXvenn2 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(AC=456, ACD=298, AD=257, ABCD=148, BD=354, ABD=578, B=562, ABC=552, D=592, BCD=613, A=340, CD=143, C=620, BC=915, AB=639),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    showTransition=TRUE,
    vennGroups=3
  )
}

cXvenn3 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(CD=143, D=592, A=340, BCD=613, C=620, AB=639, BC=915, ACD=298, AC=456, ABC=552, ABCD=148, AD=257, ABD=578, BD=354, B=562),
    vennLegend=list(A="List 1", B="List 2", C="List 3", D="List 4"),
    graphType="Venn",
    vennGroups=2
  )
}

cXviolin1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="area",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="count",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinScale="width",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    violinTrim=FALSE,
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
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
    title="The Effect of Vitamin C on Tooth Growth in Guinea Pigs",
    xAxis2Show=FALSE,
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin11 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin12 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    colorScheme="Economist",
    graphOrientation="vertical",
    graphType="Boxplot",
    groupingFactors=list("dose"),
    guides="solid",
    guidesColor="white",
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin13 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin14 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin15 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin16 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

cXviolin17 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-toothgrowth-dat.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-toothgrowth-smp.txt.gz", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendScaleFontFactor=1.8,
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
    xAxisMinorTicks=FALSE,
    xAxisTickColor="white",
    xAxisTitle="len"
  )
}

