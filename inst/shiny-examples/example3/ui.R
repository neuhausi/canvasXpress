rm(list=ls())
invisible(gc())
startTime = Sys.time()
library(magrittr)
library(dplyr)
library(htmlwidgets)
library(canvasXpress)
source("./customCanvasXpress.R")
exData <- readRDS("./exData-sm2.rds")

shinyUI(fluidPage(
  titlePanel("IPF Fibroblast data"),
  mainPanel(
    tabsetPanel(
      tabPanel("Project Exploration",
               fluidRow(
                 column(6,
                        h4("Explore Constrasts in Project"),
                        p("Choose a contrast to update the visualizations")
                 ),
                 column(6,
                        h4("Explore Genes in Project"),
                        p("Choose a gene to update plot")
                 )
               ),
               fluidRow(
                 column(6,
                        selectInput("contrast", "Select Contrast", names(exData$contrasts), selectize = FALSE)
                 ),
                 column(6,
                        uiOutput("selectGenes")
                 )
               ),
               fluidRow(
                 column(6,
                        p("Profile Plot")
                 ),   
                 column(6,
                        p("Gene Plot")
                 )    
               ),
               fluidRow(
                 column(6,
                        canvasXpressOutput("profilePlot")
                 ),   
                 column(6,
                        canvasXpressOutput("genePlot")
                 )    
               ),
               fluidRow(
                 column(6,
                        p("")
                 ),
                 column(6,
                        selectInput("compare", "Select Contrast to Compare", names(exData$contrasts), selectize = FALSE, selected = names(exData$contrasts)[2])
                 )
               ),
               fluidRow(
                 column(6,
                        canvasXpressOutput("volcanoPlot")
                 ),
                 column(6,
                        canvasXpressOutput("comparePlot")
                 )
               )   
      )
    )
  )
))
