library(shiny)
library(canvasXpress)


exData <- readRDS("./exData.rds")


shinyUI(
fluidPage(
    titlePanel("IPF Fibroblast Data"),
    fluidRow(
        column(width = 12,
               h4("Explore Contrasts and Genes"),
               p("Choose contrasts and genes to update the visualizations.  Select data points on a chart using the lasso tool or shift-drag."),
               hr())
    ),
    fluidRow(
        column(width = 6,
               style = "z-index:11000",
            selectizeInput(
                "contrast",
                "Select Contrast",
                names(exData$contrasts))),
        column(width = 6,
               style = "z-index:11000",
            uiOutput("selectGenes"))),
    fluidRow(
        column(width = 6,
               htmlOutput("profilePlot")),
        column(width = 6,
               htmlOutput("genePlot"))),
    br(), hr(),
    fluidRow(
        column(width = 6,
               style = "z-index:11000",
            selectizeInput(
                "compare",
                "Select Comparison Contrast",
                names(exData$contrasts),
                selected = names(exData$contrasts)[2])),
        column(width = 6,
               p(""))),
    fluidRow(
        column(width = 6,
               htmlOutput("comparePlot")),
        column(width = 6,
               htmlOutput("volcanoPlot"))))
)
