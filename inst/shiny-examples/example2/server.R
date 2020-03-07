shinyServer(function(input, output, session) {

    levels_choices <- reactive({
        levels <- NULL
        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            levels <- unique(g_GSE9750$x[, colnames(g_GSE9750$x) == input$factorSel])
            levels <- levels[!is.na(levels)]
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
            !is.null(input$genesSel)  && (input$genesSel != "")) {
            data  <- as.matrix(g_GSE9750$y[input$genesSel, , drop = F])
            rownames(data) <- names(g_geneChoices[g_geneChoices %in% input$genesSel])

            cxplot <- canvasXpress(
                data            = data,
                smpAnnot        = g_GSE9750$x,
                graphType       = "Boxplot",
                groupingFactors = list(input$factorSel),
                title           = glue("{input$factorSel}: {glue_collapse(names(g_geneChoices[g_geneChoices %in% input$genesSel]), sep = ', ')}"),
                width           = "100%")
        }

        if (is.null(cxplot)) {
            cxplot <- canvasXpress(destroy = TRUE)
        }

        cxplot
    })

    output$distribution_plot <- renderCanvasXpress({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            freq_table <- as.data.frame(table(Factor = g_GSE9750$x[, input$factorSel], exclude = NULL), stringsAsFactors = FALSE)
            data <- data.frame(Freq = as.vector(freq_table[, "Freq"]), row.names = as.vector(freq_table[, "Factor"]))

            cxplot <- canvasXpress(
                data      = data,
                graphType = "Pie",
                title     = glue("Distribution: {input$factorSel}"))
        }

        cxplot
    })

    output$pca_plot <- renderCanvasXpress({
        cxplot <- NULL

        if (!is.null(input$factorSel) && (input$factorSel != "")) {
            cxplot <- canvasXpress(data      = prcomp(g_GSE9750$y)$rotation,
                                   varAnnot  = g_GSE9750$x,
                                   graphType = "Scatter3D",
                                   colorBy   = input$factorSel,
                                   title     = glue("PCA for {input$factorSel}"),
                                   axisTickScaleFontFactor  = 0.5,
                                   axisTitleScaleFontFactor = 0.7,
                                   transparency             = 0.8)
        }

        cxplot
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
            !is.null(input$genesSel)  && (input$genesSel != "")) {
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
                             selected = levels_choices()[1],
                             server   = TRUE)
    })
})
