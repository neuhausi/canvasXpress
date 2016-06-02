\name{canvasxpress-package}
\alias{canvasxpress-package}
\alias{canvasxpress}
\docType{package}
\title{CanvasXpress Visualization Package}
\description{
Package to create CanvasXpress visualizations
}
\details{
\tabular{ll}{
Package: \tab canvasxpress\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2016-03-11\cr
License: \tab GPL3\cr
}
}
\author{
Isaac Neuhaus
Maintainer: <imnphd@gmail.com>
}
\references{
http://www.canvasxpress.org
}
\keyword{ package }
\seealso{
\code{\link[<htmlwidgets>:<htmlwidgets>-package]{<htmlwidgets>}}
}
\examples{
## Boxplot Example
data <- t(iris[,1:4])
smpAnnot <- as.matrix(iris[,5])
colnames(smpAnnot) <- "Species"
canvasXpress(data, smpAnnot=smpAnnot, graphType='Boxplot', groupingFactors=list('Species'))
# or
canvasXpress(data, smpAnnot=smpAnnot, graphType='Boxplot', afterRender=list(list('groupSamples', list('Species'))))

## Scatter 2D Plot Example
data <- t(iris[,1:4])
varAnnot <- as.matrix(iris[,5])
colnames(varAnnot) <- "Species"
canvasXpress(t(data), varAnnot=varAnnot, scatterPlotMatrix=1, colorBy='Species')

## Scatter 3D Plot Example
data <- t(iris[,1:4])
varAnnot <- as.matrix(iris[,5])
colnames(varAnnot) <- "Species"
canvasXpress(t(data), varAnnot=varAnnot, graphType='Scatter3D', colorBy='Species')

## Network Example
nodeData <- data.frame(id=c("Alice", "Bob", "Cecil", "David", "Esmeralda"), age=c(48,33,45,34,21), gender=c("F","M","F","M","F"))
edgeData <- data.frame(id1=c("Bob", "Cecil", "Cecil", "David", "David", "Esmeralda"), id2=c("Alice", "Bob", "Alice", "Alice", "Bob", "Alice"), sameDept=c(FALSE,FALSE,TRUE,FALSE,FALSE,TRUE), friendship=c(4,5,5,2,1,1), advice=c(4,5,5,4,2,3))
canvasXpress(nodeData=nodeData, edgeData=edgeData, graphType='Network')

## Venn Data Diagram Examples
## Two way
vennData <- data.frame(A=23, B=56, AB=38)
canvasXpress(vennData=vennData, graphType='Venn', vennGroups=2, vennLegend=list(A="List1", B="List2"))
## Three way
vennData <- data.frame(A=35, B=87, C=13, AB=6, AC=18, BC=32, ABC=69)
canvasXpress(vennData=vennData, graphType='Venn', vennGroups=3, vennLegend=list(A="List1", B="List2", C="List3"))
## Four way
vennData <- data.frame(A=57, B=12, C=67, D=72, AB=4, AC=67, AD=25, BC=67, BD=27, CD=38, ABC=69, ABD=28, ACD=52, BCD=46, ABCD=3)
canvasXpress(vennData=vennData, graphType='Venn', vennGroups=4, vennLegend=list(A="List1", B="List2", C="List3", D="List4"))
}
