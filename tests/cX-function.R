cXarea1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-area3-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-area-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-area-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-area-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-area-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-area2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-arealine-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-arealine-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-arealine-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-basic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphOrientation="vertical",
    graphType="Bar",
    title="Simple Bar graph"
  )
}

cXbar3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-basic2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    decorations=list(marker=list(list(sample="setosa", text="Species with\nlowest petal\nwidth", variable="Petal.Width", x=0.4, y=0.85))),
    graphOrientation="vertical",
    graphType="Bar",
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    fontStyle="bold italic",
    graphOrientation="vertical",
    graphType="Bar",
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-simple-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-simple-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    showShadow=TRUE,
    smpTitle="Cell Lines",
    smpTitleFontStyle="bold",
    title="Random data set",
    xAxis2Show=FALSE
  )
}

cXbar7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-simple-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-simple-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-lollipop-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    barType="lollipop",
    graphType="Bar",
    showTransition=TRUE,
    widthFactor=0.1
  )
}

cXbar9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    bar3DInverseWeight=1.2,
    graphType="Bar",
    is3DPlot=TRUE,
    scatterType="bar",
    x3DRatio=0.5
  )
}

cXbarline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="BarLine",
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    graphType="Boxplot",
    legendBox=FALSE,
    showShadow=TRUE,
    showTransition=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXboxplot2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTickFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    colorScheme="White",
    decorations=list(marker=list(list(sample="setosa", text="Species with\nlowest petal\nwidth", variable="Petal.Width", x=0.4, y=0.85))),
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Boxplot",
    legendBox=FALSE,
    showShadow=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXboxplot3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    graphType="Boxplot",
    legendBox=FALSE,
    showShadow=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXboxplot4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTickFontStyle="bold",
    axisTitleFontStyle="italic",
    citation="R. A. Fisher (1936). The use of multiple measurements in taxonomic problems. Annals of Eugenics 7 (2) => 179-188.",
    citationFontStyle="italic",
    colorScheme="White",
    decorations=list(marker=list(list(sample="setosa", text="Species with\nlowest petal\nwidth", variable="Petal.Width", x=0.4, y=0.85))),
    fontStyle="italic",
    graphOrientation="vertical",
    graphType="Boxplot",
    legendBox=FALSE,
    showShadow=TRUE,
    showViolinBoxplot=TRUE,
    smpLabelFontStyle="italic",
    smpLabelRotate=90,
    smpTitle="Species",
    title="Iris flower data set",
    xAxis2Show=FALSE,
    afterRender=list(list("groupSamples", list("Species")))
  )
}

cXboxplot5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-boxplot-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-boxplot-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    graphType="Boxplot",
    jitter=TRUE,
    legendInside=TRUE,
    legendPosition="right",
    showBoxplotOriginalData=TRUE,
    showTransition=TRUE,
    subtitle="Boxplot Graph",
    title="Random Data",
    xAxisTickFormat="%.0f M",
    afterRender=list(list("groupSamples", list("Factor1")))
  )
}

cXboxplot6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-boxplot1-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-boxplot1-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    colorBy="Factor1",
    connectBy="Subject",
    graphOrientation="vertical",
    graphType="Boxplot",
    jitter=FALSE,
    showBoxplotOriginalData=TRUE,
    showLegend=FALSE,
    subtitle="Boxplot Graph",
    title="Random Data",
    afterRender=list(list("groupSamples", list("Factor1")))
  )
}

cXboxplot7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scents-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-scents-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    axisTitleFontStyle="italic",
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    graphOrientation="vertical",
    graphType="Boxplot",
    jitter=TRUE,
    legendBox=FALSE,
    plotByVariable=TRUE,
    showBoxplotOriginalData=TRUE,
    smpLabelRotate=90,
    smpTitle="Smoking Status",
    smpTitleFontStyle="italic",
    title="Data on the time subjects required to complete a pencil and paper maze\nwhen they were smelling a floral scent and when they were not.",
    afterRender=list(list("groupSamples", list("Smoker")))
  )
}

cXboxplot8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cancersurvival-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cancersurvival-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cancersurvival-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    axisTitleFontStyle="italic",
    citation="Cameron, E. and Pauling, L. (1978). Proceedings of the National Academy of Science USA, 75.",
    graphType="Boxplot",
    showLegend=FALSE,
    showShadow=TRUE,
    showTransition=TRUE,
    title="Patients with advanced cancers of the stomach,\nbronchus, colon, ovary or breast treated with ascorbate.",
    xAxisTitle="Survival time (days)",
    afterRender=list(list("groupSamples", list("Organ")))
  )
}

cXbubble1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-chord-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-chord-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-chord-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-circular-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="basic",
    connections=list(list("rgb(255,0,0)", "s1", "s15"), list("rgb(0,255,0)", "s25", "s120"), list("rgb(255,0,0)", "s34", "s2"), list("rgb(255,0,0)", "s47", "s69"), list("rgb(255,0,0)", "s15", "s74"), list("rgb(0,120,0)", "s57", "s87"), list("rgb(255,34,0)", "s54", "s118"), list("rgb(255,0,100)", "s78", "s18"), list("rgb(255,134,0)", "s90", "s48"), list("rgb(120,0,0)", "s120", "s68"), list("rgb(255,0,0)", "s131", "s92"), list("rgb(0,255,0)", "s148", "s119"), list("rgb(0,0,255)", "s10", "s14"), list("rgb(255,0,0)", "s56", "s6"), list("rgb(255,0,0)", "s98", "s90"), list("rgb(255,0,0)", "s113", "s20")),
    graphType="Circular",
    ringsType=list("dot", "heatmap", "bar"),
    ringsWeight=list(50, 25, 25),
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
  y=read.table(system.file("extdata", "cX-circular2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-circular2-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-circular2-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    colorScheme="basic",
    connections=list(list("rgb(0,0,255)", "setosa", 42, "versicolor", 35, 1, 2), list("rgb(0,255,0)", "virginica", 26, "versicolor", 15, 4, 8), list("rgb(120,0,255)", "setosa", 36, "virginica", 5, 6, 9), list("rgb(0,40,255)", "versicolor", 9, "versicolor", 18, 2, 5), list("rgb(80,0,55)", "versicolor", 14, "setosa", 9, 3, 4), list("rgb(0,55,140)", "setosa", 12, "setosa", 41, 5, 2), list("rgb(255,0,0)", "virginica", 25, "setosa", 3, 2, 6)),
    graphType="Circular",
    rAxis="Number",
    ringsWeight=list(25, 25, 25, 25),
    segregateSamplesBy=list("Species"),
    segregateVariablesBy=list("Ring"),
    showTransition=TRUE,
    title="Iris flower data set (2D Circular Plot)",
    transitionStep=50,
    transitionTime=1500
  )
}

cXcontour1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-volcano-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXdonnut1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="DotLine",
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-cars-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-dumbbell-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-dumbbell-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXheatmap1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-heatmapR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-heatmapR-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-heatmapR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat2.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat3.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-multidimensionalheatmap-dat4.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-multidimensionalheatmap-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-multidimensionalheatmap-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-multidimensionalheatmap2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXhistogram1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cancersurvivalt-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cancersurvivalt-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cancersurvivalt-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-cancersurvivalt-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cancersurvivalt-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cancersurvivalt-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-alcoholtobaccot-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-alcoholtobaccot-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-kaplanmeier-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    showDecorations=TRUE,
    showLegend=FALSE,
    showTransition=TRUE,
    title="Kaplan-Meier Plot",
    afterRender=list(list("addKaplanMeierCurve", list('Time','Censored-1','Data 1 Population','rgb(0,0,255)')), list("addKaplanMeierCurve", list('Time','Censored-2','Data 2 Population','rgb(255,0,0)')))
  )
}

cXkaplanmeier2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-kaplanmeier-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-kaplanmeier-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    graphType="Scatter2D",
    showDecorations=TRUE,
    showDecorationsKaplanMeierConfidence=TRUE,
    showLegend=FALSE,
    showTransition=TRUE,
    title="Kaplan-Meier Plot",
    afterRender=list(list("addKaplanMeierCurve", list('Time','Censored-1','Data 1 Population','rgb(0,0,255)')), list("addKaplanMeierCurve", list('Time','Censored-2','Data 2 Population','rgb(255,0,0)')))
  )
}

cXlayout1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=TRUE,
    scatterPlotMatrix=TRUE,
    showTransition=TRUE,
    transitionStep=50,
    transitionTime=1500,
    afterRender=list(list("addRegressionLine"))
  )
}

cXlayout2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    showTransition=TRUE
  )
}

cXlayout3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    broadcast=TRUE,
    colorBy="Species",
    graphType="Scatter2D",
    layoutAdjust=FALSE,
    scatterPlotMatrix=TRUE,
    scatterPlotMatrixType="first",
    afterRender=list(list("addRegressionLine"))
  )
}

cXlayout4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-iris-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-iris-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendBox=FALSE,
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

cXlayout5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cars-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXlayout6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXlayout7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXlayout8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scents-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-scents-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXline1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-line-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-line-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-map-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-map-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-map-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-map-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table(system.file("extdata", "cX-lesmiserable-nodes.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-lesmiserable-edges.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table(system.file("extdata", "cX-networkradial-nodes.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkradial-edges.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table(system.file("extdata", "cX-networkbasic-nodes.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkbasic-edges.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  nodes=read.table(system.file("extdata", "cX-networkkarate-nodes.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  edges=read.table(system.file("extdata", "cX-networkkarate-edges.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    nodeData=nodes,
    edgeData=edges,
    edgeWidth=2,
    graphType="Network",
    isNetworkCommunities=TRUE,
    nodeFontColor="rgb(29,34,43)",
    nodeSize=30,
    showAnimation=TRUE,
    title="Zachary's famous Karate Club"
  )
}

cXnonlinearfit1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-nonlinearfit-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-oncoprint-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y2=read.table(system.file("extdata", "cX-oncoprint-dat2.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y3=read.table(system.file("extdata", "cX-oncoprint-dat3.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y4=read.table(system.file("extdata", "cX-oncoprint-dat4.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  y5=read.table(system.file("extdata", "cX-oncoprint-dat5.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-oncoprint-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-oncoprint-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringsType=list("line"),
    showTransition=TRUE,
    title="Radar - Line",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    ringsType=list("area"),
    showTransition=TRUE,
    title="Radar - Area",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringsType=list("bar"),
    showTransition=TRUE,
    title="Radar - Bar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    ringsType=list("dot"),
    showTransition=TRUE,
    title="Radar - Scatter",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    ringsType=list("stacked"),
    showTransition=TRUE,
    title="Radar - Stacked",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=180,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringsType=list("line"),
    showTransition=TRUE,
    title="Half Radar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    ringsType=list("line"),
    showTransition=TRUE,
    title="Rotated Half Radar",
    transitionStep=50,
    transitionTime=1500
  )
}

cXradar8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    circularArc=360,
    circularRotate=0,
    circularType="radar",
    colorScheme="Bootstrap",
    graphType="Circular",
    ringsType=list("line"),
    showTransition=TRUE,
    smpOverlays=list("Factor3", "-", "Factor1", "Factor2"),
    title="Radar with Overlays",
    transitionStep=50,
    transitionTime=1500
  )
}

cXsankey1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sankey-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-sankey-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-sankey2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey2-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-sankey2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sankey2-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-alcoholtobaccot-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-alcoholtobaccot-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-scentst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scentst-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    graphType="Scatter2D",
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

cXscatter2d3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scentst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scentst-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    varAnnot=z,
    citation="Hirsch, A. R., and Johnston, L. H. Odors and Learning, Smell & Taste Treatment and Research Foundation, Chicago.",
    colorScheme="White",
    graphType="Scatter2D",
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

cXscatter2d4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-ageheightt-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-ageheightt-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    citation="Moore, David S., and George P. McCabe (1989)",
    graphType="Scatter2D",
    title="Mean heights of a group of children in Kalama",
    xAxis=list("Age"),
    yAxis=list("Height"),
    afterRender=list(list("addRegressionLine"))
  )
}

cXscatter2d5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-breastcancert-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-breastcancert-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendInside=TRUE,
    plotBox=FALSE,
    showDecorations=TRUE,
    showTransition=TRUE,
    title="Mean annual temperature (in degrees F) and Mortality Index for neoplasms of the female breast.",
    xAxis=list("Mortality"),
    xAxisTickColor="rgb(255,255,255)",
    yAxis=list("Temperature"),
    yAxisTickColor="rgb(255,255,255)",
    afterRender=list(list("addRegressionLine", list('red')))
  )
}

cXscatter2d6 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-nonlinearfit-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXscatter2d7 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    legendBoxColor="rgb(0,0,0)",
    legendInside=TRUE,
    legendPosition="bottomRight",
    plotBox=FALSE,
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

cXscatter2d8 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR2-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXscatter2d9 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR3-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-scatterR3-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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

cXscatter2d10 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatterR4-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    axisAlgorithm="rPretty",
    backgroundType="window",
    backgroundWindow="rgb(238,238,238)",
    colors=list("rgba(0,104,139,0.5)", "rgba(205,0,0,0.5)"),
    graphType="Scatter2D",
    legendBackgroundColor="rgb(238,238,238)",
    legendBoxColor="rgb(0,0,0)",
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
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-irist-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-irist-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-scatter3d-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    xAxis=list("Sample1"),
    yAxis=list("Sample2"),
    zAxis=list("Sample3")
  )
}

cXscatter3d4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-scatter3d-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    graphType="Scatter3D",
    scatterType="bar",
    xAxis=list("Sample1"),
    yAxis=list("Sample2"),
    zAxis=list("Sample3")
  )
}

cXscatter3d5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic2-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic2-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-bubble-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-bubble-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-bubble-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-bubble-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-stacked2-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked2-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    colorScheme="Blues",
    foreground="rgb(0,0,0)",
    graphOrientation="vertical",
    graphType="Stacked",
    groupingFactors=list("Factor1"),
    sampleSeparationFactor=1,
    showTransition=TRUE,
    title="Random Data",
    treemapBy=list("Factor2", "Factor3")
  )
}

cXstacked2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSeparationFactor=1,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstacked3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="Stacked",
    legendBackgroundColor=FALSE,
    sampleSeparationFactor=1.5,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstacked5 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-diverging-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSeparationFactor=1,
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphOrientation="horizontal",
    graphType="StackedPercent",
    legendBackgroundColor=FALSE,
    sampleSeparationFactor=1.5,
    showShadow=TRUE,
    smpLabelScaleFontFactor=0.8,
    smpTitle="Collection of Samples",
    smpTitleFontStyle="italic",
    title="Random Data"
  )
}

cXstackedpercent4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-diverging-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    coordinateLineColor=TRUE,
    graphOrientation="horizontal",
    graphType="StackedPercentLine",
    legendBox=FALSE,
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
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Simple Sunburst",
    transitionStep=50,
    transitionTime=1500
  )
}

cXsunburst2 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Simple Sunburst Colored by Category",
    transitionStep=50,
    transitionTime=1500
  )
}

cXsunburst3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Rotated Sunburst",
    transitionStep=50,
    transitionTime=1500
  )
}

cXsunburst4 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-sunburst-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-sunburst-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    title="Rotated Half Sunburst",
    transitionStep=50,
    transitionTime=1500
  )
}

cXtagcloud1 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-cars-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-cars-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-cars-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-tree-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-tree-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
  y=read.table(system.file("extdata", "cX-generic-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-generic-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  z=read.table(system.file("extdata", "cX-generic-var.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  canvasXpress(
    data=y,
    smpAnnot=x,
    varAnnot=z,
    graphType="Treemap"
  )
}

cXtreemap3 <- function() {
  library(canvasXpress)
  y=read.table(system.file("extdata", "cX-stacked1-dat.txt", package = "canvasXpress"), header=TRUE, sep="\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
  x=read.table(system.file("extdata", "cX-stacked1-smp.txt", package = "canvasXpress"), header=TRUE, sep= "\t", quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
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
    vennData=data.frame(AC=456, A=340, ABC=552, ABCD=148, BC=915, ACD=298, BCD=613, B=562, CD=143, ABD=578, C=620, D=592, AB=639, BD=354, AD=257),
    vennLegend=list(A="List 1", D="List 4", C="List 3", B="List 2"),
    graphType="Venn",
    showTransition=TRUE,
    vennGroups=4
  )
}

cXvenn2 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(AC=456, A=340, ABC=552, ABCD=148, BC=915, ACD=298, BCD=613, B=562, CD=143, ABD=578, C=620, D=592, AB=639, BD=354, AD=257),
    vennLegend=list(A="List 1", D="List 4", C="List 3", B="List 2"),
    graphType="Venn",
    showTransition=TRUE,
    vennGroups=3
  )
}

cXvenn3 <- function() {
  library(canvasXpress)
  canvasXpress(
    vennData=data.frame(AC=456, A=340, ABC=552, ABCD=148, BC=915, ACD=298, BCD=613, B=562, CD=143, ABD=578, C=620, D=592, AB=639, BD=354, AD=257),
    vennLegend=list(A="List 1", D="List 4", C="List 3", B="List 2"),
    graphType="Venn",
    vennGroups=2
  )
}

