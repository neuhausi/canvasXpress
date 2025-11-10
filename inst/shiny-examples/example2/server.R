shinyServer(function(input, output, session) {

    levels_choices <- reactive({
        levels <- NULL
        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            levels     <- sort(unique(g_GSE9750$x[, colnames(g_GSE9750$x) == input$factorSel]))
            levels_na  <- levels[which(levels %in% c("<NA>","Unknown"))]
            if (length(levels_na) != 0) {
                levels <- append(levels[!(levels %in% levels_na)],levels_na)
            }
        }
        levels
    })

    plot_volcano <- reactive({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "") &&
            !is.null(input$levelSel)  && (input$levelSel != "")) {

            try({
                design_matrix   <- model.matrix(as.formula(glue("~ {input$factorSel}")), g_GSE9750$x)
                reference_level <- make.names(glue("{input$factorSel}{input$levelSel}"))

                eBayes_model     <- eBayes(lmFit(g_GSE9750$y, design_matrix))
                top_ranked_genes <- suppressMessages(topTable(eBayes_model, number = nrow(g_GSE9750$y)))
                fold_change      <- top_ranked_genes[colnames(top_ranked_genes) == reference_level]
                adj_pval         <- mapply("*", lapply(top_ranked_genes[colnames(top_ranked_genes) == "adj.P.Val"], log2),-1)

                data <- as.matrix(data.frame(fold_change, adj_pval))
                rownames(data) <- names(g_geneChoices[g_geneChoices %in% rownames(data)])
                cxplot <- canvasXpress(
                    data         = data,
                    graphType    = "Scatter2D",
                    title        = glue("Volcano Plot: {input$levelSel}"),
                    width        = "100%",
                    transparency = 0.8,
                    xAxisTitle   = input$levelSel)
            })

            if (is.null(cxplot)) {
                cxplot <- canvasXpress(destroy = TRUE)
            }
        }

        cxplot
    })

    plot_gene <- reactive({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "") &&
            !is.null(input$genesSel)  && (length(input$genesSel) > 0)) {
            data           <- as.matrix(g_GSE9750$y[input$genesSel, , drop = F])
            rownames(data) <- names(g_geneChoices[g_geneChoices %in% input$genesSel])
            smpannot       <- g_GSE9750$x[order(match(g_GSE9750$x[[input$factorSel]],levels_choices())),]
            data           <- data[,rownames(smpannot), drop = F]

            cxplot <- canvasXpress(
                data            = data,
                smpAnnot        = smpannot,
                graphType       = "Boxplot",
                groupingFactors = list(input$factorSel),
                title           = glue("{input$factorSel}: {glue_collapse(names(g_geneChoices[g_geneChoices %in% input$genesSel]), sep = ', ')}"),
                zoomDisable     = TRUE,
                width           = "100%")
        }

        if (is.null(cxplot)) {
            cxplot <- canvasXpress(destroy = TRUE)
        }

        cxplot
    })

    output$distribution_plot <- renderUI({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            freq_table <- as.data.frame(table(Factor = g_GSE9750$x[, input$factorSel], exclude = NULL), stringsAsFactors = FALSE)
            data       <- data.frame(Freq = freq_table$Freq[order(match(freq_table$Factor,levels_choices()))],
                                     row.names = levels_choices())

            cxplot <- canvasXpress(
                data      = data,
                graphType = "Pie",
                width     = "100%",
                title     = glue("Distribution: {input$factorSel}"))
        }

        if (!is.null(cxplot)) {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     cxplot)
        } else {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     HTML(rep("<br/>", 5)),
                     tags$p(style = "color:grey;",
                            "Select a factor to create this plot"))
        }
    })

    output$pca_plot <- renderUI({
        cxplot <- NULL

        levels        <- list(as.list(levels_choices()))
        names(levels) <-  glue("{input$factorSel}")

        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            cxplot <- canvasXpress(data        = prcomp(g_GSE9750$y)$rotation,
                                   varAnnot    = g_GSE9750$x,
                                   graphType   = "Scatter3D",
                                   colorBy     = input$factorSel,
                                   legendOrder = levels,
                                   width       = "100%",
                                   title       = glue("PCA for {input$factorSel}"),
                                   axisTextScaleFontFactor  = 0.5,
                                   axisTitleScaleFontFactor = 0.7,
                                   transparency             = 0.8)
        }

        if (!is.null(cxplot)) {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     cxplot)
        } else {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     HTML(rep("<br/>", 5)),
                     tags$p(style = "color:grey;",
                            "Select a factor to create this plot"))
        }
    })

    output$volcano_plot <- renderUI({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "") &&
            !is.null(input$levelSel)  && (input$levelSel != "")) {
            cxplot <- plot_volcano()
        }

        if (!is.null(cxplot)) {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     cxplot)
        } else {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     HTML(rep("<br/>", 5)),
                     tags$p(style = "color:grey;",
                            "Select level to create this plot"))
        }
    })

    output$genes_plot <- renderUI({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "") &&
            !is.null(input$genesSel)  && (length(input$genesSel) > 0)) {
            cxplot <- plot_gene()
        }

        if (!is.null(cxplot)) {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     cxplot)
        } else {
            tags$div(width = "100%",
                     align = "center",
                     style = "height: 400px;",
                     HTML(rep("<br/>", 5)),
                     tags$p(style = "color:grey;",
                            "Select at least one gene to create this plot"))
        }
    })

    observeEvent(levels_choices(), {
        updateSelectizeInput(session, "levelSel",
                             choices  = levels_choices(),
                             selected = levels_choices()[1])
    })
})
