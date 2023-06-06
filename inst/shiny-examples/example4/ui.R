library(shiny)
library(canvasXpress)
library(DT)


shinyUI(
  fluidPage(
    h1("CX events heatmap example"),
    h3("Double click heatmap cell to highlight table cell"),
    canvasXpress::canvasXpressOutput("genelist_heatmap",
      width = "100%",
      height = "250px"
    ),
    DTOutput("y")
  )
)
