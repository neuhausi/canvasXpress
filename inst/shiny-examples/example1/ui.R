library(shiny)
library(htmlwidgets)
library(canvasXpress)

shinyUI(pageWithSidebar(
        headerPanel("Scatter Plot"),
        sidebarPanel(
            selectInput("xAxis", "X Axis", names(iris)[1:4]),
            selectInput("yAxis", "Y Axis", names(iris)[1:4], selected=names(iris)[[2]])
        ),
        mainPanel(
            canvasXpressOutput("plot")
        )
    ))
