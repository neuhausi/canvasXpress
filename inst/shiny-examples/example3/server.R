library(shiny)
library(htmlwidgets)
library(canvasXpress)
library(dplyr)

source("./customPlots.R")
exData <- readRDS("./exData.rds")


shinyServer(function(input, output) {
    ds1 <- reactive({
        data <- NULL
        if (!is.null(input$contrast) && (input$contrast != "")) {
            data <- exData$contrasts[[input$contrast]]
            rownames(data) <- data.frame(id = rownames(data), stringsAsFactors = F) %>%
                left_join(exData$varAnnot %>% mutate_all(as.character), by = "id") %>%
                pull(syn)
        }

        data
    })

    ds2 <- reactive({
        data <- NULL
        if (!is.null(input$compare) && (input$compare != "")) {
            data <- exData$contrasts[[input$compare]]
            rownames(data) <- data.frame(id = rownames(data), stringsAsFactors = F) %>%
                left_join(exData$varAnnot %>% mutate_all(as.character), by = "id") %>%
                pull(syn)
        }

        data
    })

    output$profilePlot <- renderUI({
        cxplot <- NULL
        contrastData <- ds1()
        if (!is.null(contrastData)) {
            cxplot <- profilePlot(contrastData,
                                  title = "Profile Plot",
                                  subtitle = paste(input$contrast, sep = ""))
        }

        render_plot(cxplot, "Select a contrast to create this plot")
    })

    output$genePlot <- renderUI({

        cxplot <- NULL
        if (!is.null(input$genes)) {
            sel_ids <- exData$varAnnot[exData$varAnnot$syn %in% input$genes, ]

            dat <- exData$Log2CPM
            dat <- dat[rownames(dat) %in% sel_ids$id, , drop = FALSE]
            rownames(dat) <- sel_ids$syn[match(rownames(dat), sel_ids$id)]

            des <- exData$smpAnnot$ReplicateGroup

            cxplot <- genePlot(dat, des, title = "Expression Plot", subtitle = NULL)

            if (is.null(cxplot)) {
                cxplot <- canvasXpress(destroy = TRUE)
            }
        }

        render_plot(cxplot, "Select at least one gene to create this plot")
    })

    output$volcanoPlot <- renderUI({
        cxplot <- NULL
        contrastData <- ds1()
        if (!is.null(contrastData)) {
            cxplot <- volcanoPlot(contrastData,
                                  title = "Volcano Plot",
                                  subtitle = NULL)
        }

        render_plot(cxplot, "Select a contrast to create this plot")
    })

    output$comparePlot <- renderUI({
        cxplot <- NULL
        cn1 <- ds1()
        cn2 <- ds2()
        if (!is.null(cn1) && !is.null(cn2)) {
            cp <- data.frame(cbind(
                c1 = cn1$logFC,
                c2 = cn2$logFC,
                xp = cn1$P.Value,
                yp = cn2$P.Value
            ))
            rownames(cp) <- rownames(cn1)
            colnames(cp)[1] = paste(input$contrast, sep = "")
            colnames(cp)[2] = paste(input$compare,  sep = "")
            cxplot <- comparePlot(cp,
                                  title = "Compare/Contrast",
                                  subtitle = paste(paste0(input$contrast), "vs", paste0(input$compare), sep = " "))

            if (is.null(cxplot)) {
                cxplot <- canvasXpress(destroy = TRUE)
            }
        }

        render_plot(cxplot, "Select both contrasts to create this plot")
    })

    output$selectGenes <- renderUI({
        selectizeInput("genes",
                       "Select Gene(s)",
                       rownames(ds1()),
                       multiple = TRUE,
                       selected = rownames(ds1())[c(1, 2)])
    })

})
