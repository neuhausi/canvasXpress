library(shiny)
library(htmlwidgets)
library(canvasXpress)
library(limma)

GSE9750 <- eval(as.name(load('GSE9750-1000.RData')))
