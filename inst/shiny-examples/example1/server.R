library(shiny)
library(canvasXpress)
library(dplyr)
library(glue)


shinyServer(function(input, output, session) {

    selectedData <- reactive({
        dat <- NULL
        if (!is.null(input$axisXSel) && (input$axisXSel != "") &&
                !is.null(input$axisYSel) && (input$axisYSel != "")) {
            dat <- iris %>% select(input$axisXSel, input$axisYSel)
        }

        dat
    })

    output$plot <- renderCanvasXpress({
        dat <- selectedData()
        cxplot <- NULL

        if (!is.null(dat)) {
            cxplot <- canvasXpress(
                data               = dat,
                varAnnot           = iris,
                graphType          = "Scatter2D",
                title              = glue("{input$axisYSel} vs {input$axisXSel}"),
                zoomDisable        = TRUE,
                xAxisMinorTicks    = FALSE,
                yAxisMinorTicks    = FALSE,
                transparency       = 0.8,
                selectedDataPoints = input$rowIndexCx,
                colorBy            = input$colorBySel,
                shapeBy            = input$shapeBySel
            )
        }

        if (is.null(cxplot)) {
            cxplot <- canvasXpress(destroy = TRUE)
        }

        cxplot
    })

})
