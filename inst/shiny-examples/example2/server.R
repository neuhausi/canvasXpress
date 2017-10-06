
shinyServer(function(input, output, session) {
    
      output$plot <- renderCanvasXpress({
            tbl <- as.data.frame(table(GSE9750$x[,input$factor]))
            df <- data.frame(as.vector(tbl[,2]), row.names = as.vector(tbl[,1]))
            colnames(df) <- c("Freq")
            canvasXpress(df, graphType="Pie", width=500, height=300)
          })
      
      output$plot2 <- renderCanvasXpress({
            pc <- prcomp(GSE9750$y)$rotation
            canvasXpress(pc, varAnnot=GSE9750$x, graphType="Scatter3D", width=500, height=300, colorBy=input$factor)
          })
      
      output$selectLevel <- renderUI({
          
          levs = unique(GSE9750$x[,colnames(GSE9750$x)==input$factor])
            selectInput("level", "Select Level", levs[levs!=""])
          })
      
      output$selectGenes <- renderUI({
            selectInput("genes", "Select Gene(s)", rownames(GSE9750$y), selectize=FALSE, multiple=TRUE, selected=rownames(GSE9750$y)[1])
          })
      
      output$plot3 <- renderCanvasXpress({
            events = JS("{'click': function(o, e, t){",
                "var g = $('#genes');",
                "g.val(o.y.vars[0]);",
                "g.trigger('change');",
                "}",
                "}")
            design = model.matrix(as.formula(paste("~ ", input$factor)), GSE9750$x)
            levels = make.names(colnames(design))            
            reflev = make.names(paste(input$factor, input$level, sep=""))            
            allevs = levels[levels!="X.Intercept."]
            olevls = allevs[allevs!=reflev]
            fit = lmFit(GSE9750$y, design)
            fit = eBayes(fit)
            tab = topTable(fit, number=length(dimnames(GSE9750$y)[[1]]))
            fc = tab[colnames(tab)==reflev];
            lod = mapply("*", lapply(tab[colnames(tab)=="adj.P.Val"],log2), -1)
            data = as.matrix(data.frame(FC=fc, LOD=lod))
            canvasXpress(data, graphType="Scatter2D", events=events, width=500, height=300)
          })
      
      output$plot4 <- renderCanvasXpress({
            genes = rownames(GSE9750$y)
            data = as.matrix(GSE9750$y[genes[genes %in% input$genes],,drop=F])
            canvasXpress(data, smpAnnot=GSE9750$x, graphType="Boxplot",
                         groupingFactors = list(input$factor))
          })
      
    })
