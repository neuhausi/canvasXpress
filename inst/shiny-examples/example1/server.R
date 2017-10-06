library(shiny)
library(htmlwidgets)
library(canvasXpress)

shinyServer(function(input, output, session) {
      
      # Combine the selected variables into a new data frame
      selectedData <- reactive({
            iris[, c(input$xAxis, input$yAxis)]
          })
      
      output$plot <- renderCanvasXpress({
            smpAnnot <- as.matrix(iris[,5])
            colnames(smpAnnot) <- "Species"
            canvasXpress(selectedData(), graphType="Scatter2D", width=500, height=500, title="Iris Data")
          })
      
    })
