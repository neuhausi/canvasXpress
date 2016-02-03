\name{canvasXpress}
\alias{canvasXpress}
\title{canvasXpress Visualization}
\usage{
canvasXpress(data, smpAnnot=smpAnnot, varAnnot=varAnnot, nodeData=nodeData, edgeData=edgeData, vennData=vennData, ..., graphType='Bar', events=NULL, afterRender=NULL, width=600, height=400)
}
\arguments{
\item{data}{A data frame or a matrix with numerical data. The column names must be unique and identify the samples of the data set. The row names also must be unique and identify the variables of the data set. This parameter is not applicable when the graphType is either 'Network' or 'Venn'.}
\item{smpAnnot}{An optional data frame with sample metadata or annotation. The row names must contain the sample names and MUST match and be in the same order as those in the data parameter. The column names must be unique and identify the factor name. The data in the data frame correspond to the levels for each of the samples. This parameter is not applicable when the graphType is either 'Network' or 'Venn'.}
\item{varAnnot}{An optional data frame with variable metadata or annotation. The row names must contain the variable names and MUST match and be in the same order as those in the data parameter. The column names must be unique and identify the annotation name. The data in the data frame correspond to the levels for each of the variables. This parameter is not applicable when the graphType is either 'Network' or 'Venn'.}
\item{nodeData}{Only applicable when graphType is 'Network'. A data frame with the node information for the network. There MUST be a column named 'id' in the data frame which will be used to identify the node. Additional columns can be used to add metadata for the nodes.}
\item{edgeData}{Only applicable when graphType is 'Network'. A data frame with the edge information for the network. There must be a column named 'id1' and a column named 'id2' which will be used to identify the connection between the node at 'id1' and the node at 'id2'. Additional columns can be used to add metadata for the nodes.}
\item{vennData}{Only applicable when graphType is 'Venn'. A data frame with the Venn data. The column names for the different Venn diagrams depend on the number of groups. For the two way Venn diagram the column names MUST be 'A', 'B', and 'AB'. For the three way Venn diagram the column names MUST be 'A', 'B', 'C', 'AB', 'AC', 'BC' and 'ABC'. For the four way Venn diagram the column names MUST be 'A', 'B', 'C', 'D', 'AB', 'AC', 'AD', 'BC', 'BD', 'CD', 'ABC', 'ABD', 'ACD', 'BCD' and 'ABCD'.}
\item{vennLegend}{Only applicable when graphType is 'Venn'. A list with the legend description for the Venn diagram}
\item{genomeData}{Not implemented... yet.}
\item{graphType}{The graph type for the plot. See \url{http://www.canvasxpress.org} for additional information.}
\item{events}{JavaScript functions to attach to the elements of the plot. See \url{http://www.canvasxpress.org} for additional information.}
\item{afterRender}{A list object with function that will be applied after the plot is rendered. The value for each item of the list must contain the parameter for the corresponding function. For more information about CanvasXpress functions please visit \url{http://www.canvasxpress.org}.}
\item{width}{The width of the plot.}
\item{height}{The height of the plot.}
}
\description{
Package to create CanvasXpress visualizations
}
\examples{
## Boxplot Example
data <- t(iris[,1:4])
smpAnnot <- as.matrix(iris[,5])
colnames(smpAnnot) <- "Species"
canvasXpress(data, smpAnnot=smpAnnot, graphType='Boxplot', afterRender=list(groupSamples=c('Species')))

## Scatter Plot Example
data <- t(iris[,1:4])
varAnnot <- as.matrix(iris[,5])
colnames(varAnnot) <- "Species"
canvasXpress(t(data), varAnnot=varAnnot, scatterPlotMatrix=1, colorBy='Species')

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
