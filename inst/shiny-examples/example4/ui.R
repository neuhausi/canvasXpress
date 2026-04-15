library(shiny)
library(canvasXpress)
library(DT)


shinyUI(
    fluidPage(
        canvasXpress::canvasXpressOutput("genelist_heatmap",
                                         width  = "100%",
                                         height = "450px"
        ),
        DTOutput("y")
    )
)
