rm(list=ls())
invisible(gc())
startTime = Sys.time()
library(magrittr)
library(dplyr)
library(htmlwidgets)
library(canvasXpress)
source("./customCanvasXpress.R")
exData <- readRDS("./exData-sm2.rds")

shinyServer(function(input, output, session) {
  
  ds1 <- reactive({
    exData$contrasts[[input$contrast]]
  })

  ds2 <- reactive({
    exData$contrasts[[input$compare]]
  })
  
  output$profilePlot <- renderCanvasXpress({
     events = JS("{",
                 "'click': function(o, e, t){var g = $('#genes');g.val(o.y.vars[0]);g.trigger('change')},",
                 "'select': function(o, e, t){var g = $('#genes');g.val(o.y.vars);g.trigger('change')}",
                 "}")
     pp <- ds1()
     profilePlot(pp, title = paste(input$contrast, sep=""), alpha = 0.5, events = events)
  })
  
  output$genePlot <- renderCanvasXpress({
    sel = input$genes
    if(!is.null(sel)) {
      dat <- exData$Log2CPM
      dat <- dat[rownames(dat) %in% sel,,drop=FALSE]
      ant <- exData$varAnnot
      rownames(dat) <- as.vector(ant[ant$id %in% sel,,drop=FALSE]$syn)
      des <- exData$smpAnnot$ReplicateGroup
      genePlot(dat, des, title = "Expression Plot")
    }
  })
  
  output$volcanoPlot <- renderCanvasXpress({
    events = JS("{",
                "'click': function(o, e, t){var g = $('#genes');g.val(o.y.vars[0]);g.trigger('change')},",
                "'select': function(o, e, t){var g = $('#genes');g.val(o.y.vars);g.trigger('change')}",
                "}")
    vp <- ds1()
    volcanoPlot(vp, alpha = 0.5, events = events)
  })

  output$comparePlot <- renderCanvasXpress({
    events = JS("{",
                "'click': function(o, e, t){var g = $('#genes');g.val(o.y.vars[0]);g.trigger('change')},",
                "'select': function(o, e, t){var g = $('#genes');g.val(o.y.vars);g.trigger('change')}",
                "}")
    cn1 <- ds1()
    cn2 <- ds2()
    cp <- data.frame(cbind(c1 = cn1$logFC,
                           c2 = cn2$logFC,
                           xp = cn1$P.Value,
                           yp = cn2$P.Value) )
    rownames(cp) <- rownames(cn1)
    colnames(cp)[1] = paste(input$contrast, sep="")
    colnames(cp)[2] = paste(input$compare, sep="")
    comparePlot(cp, title = paste("Compare/Contrast", paste(input$contrast, sep=""), "vs", paste(input$compare, sep=""), sep= " "), alpha = 0.5, events = events)
  })
  
  output$selectGenes <- renderUI({
    d <- ds1()
    selectInput("genes", "Select Gene(s)", rownames(d), selectize = FALSE, multiple = TRUE, selected = rownames(d)[1])
  })
    
})
