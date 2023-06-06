library(shiny)
library(canvasXpress)
library(dplyr)
library(DT)
library(stats)


shinyServer(function(input, output, session) {
  y <- matrix(runif(n = 150), nrow = 10) %>%
    as.data.frame()
  colnames(y) <- paste0("S", 1:15)
  rownames(y) <- paste0("V", 1:10)

  capture_click_ex <- htmlwidgets::JS(
    "{'dblclick': function(o, e, t) {
        t.masterReset();
                if (o != null) {
                    Shiny.onInputChange('clicked_cell', o.y);
    }
    }}"
  )

  output$genelist_heatmap <- canvasXpress::renderCanvasXpress({
    canvasXpress(
      data = t(y),
      colorSpectrum = list("navy", "white", "firebrick3"),
      graphType = "Heatmap",
      events = capture_click_ex
    )
  })

  output$y <- renderDT({
    if (isTruthy(input$clicked_cell)) {
      y$col <- as.numeric(
        input$clicked_cell$smps[[1]] == rownames(y)
      )
      datatable(y,
        options = list(
          columnDefs = list(list(
            visible = FALSE,
            targets = c(ncol(y))
          ))
        )
      ) %>%
        formatStyle(
          columns = input$clicked_cell$vars[[1]],
          valueColumns = "col",
          backgroundColor = styleEqual(
            c(0, 1),
            c("white", "yellow")
          )
        ) %>%
        formatSignif(1:ncol(y), digits = 3)
    } else {
      datatable(y) %>%
        formatSignif(1:ncol(y), digits = 3)
    }
  })
})
