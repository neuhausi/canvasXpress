library(grDevices)

## Helper function
render_plot <- function(cxplot, textMessage) {
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
                 tags$p(style = "color:grey;", textMessage))
    }
}

## Custom plot functions
profilePlot <- function(df, title, subtitle) {

    ## Need a NLP column for sizing
    df$negLog10P = round(-log10(df[["P.Value"]]))

    ## Create Group factor column in df
    df$Group = NA
    df$Group <- ifelse(df[["P.Value"]] <= 0.01,
                       ifelse(df[["logFC"]] >= 0, "Increased", "Decreased"),
                       "No Change")
    rnk = rank(df$Group, ties.method = "first")
    rnk = rnk * -1

    ## Adding alpha to the colors
    colors = c("deepskyblue4", "red3", "grey25")

    colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")

    ## Create the canvasXpress df and var annotation
    cx = data.frame(a = round(df[colnames(df) == "AveExpr"], digits = 2), b =
                        round(df[colnames(df) == "logFC"], digits = 2))
    colnames(cx) = c("AveExpr", "logFC")
    cx = cx[with(cx, order(rnk)), ]
    va = data.frame(Group = df$Group, nLog10pVal = df$negLog10P)

    va = va[with(va, order(rnk)), ]
    rownames(va) = rownames(cx)
    d = list(line = list(list(color = colors[1], width = 2, y = log2(1.5) * -1),
                         list(color = colors[2], width = 2, y = log2(1.5)),
                         list(color = colors[3], width = 2, y = 0)))

    ## CanvasXpress Plot
    canvasXpress(
        data                    = cx,
        varAnnot                = va,
        decorations             = d,
        graphType               = "Scatter2D",
        colorBy                 = "Group",
        colors                  = colors,
        legendInside            = TRUE,
        legendPosition          = "bottomRight",
        showDecorations         = TRUE,
        showLoessFit            = TRUE,
        loessColor              = "darkgoldenrod1",
        sizeBy                  = "Group",
        sizes                   = c(10, 10, 4, 10, 12, 14, 16, 18, 20, 22, 24, 26),
        sizeByShowLegend        = FALSE,
        title                   = title,
        subtitle                = subtitle,
        xAxis                   = list("AveExpr"),
        yAxis                   = list("logFC"),
        subtitleScaleFontFactor = 0.5,
        showAnimation           = FALSE,
        width                   = "100%",
        events                  = JS("{'select': function(o, e, t){if (o != null && o.y != null && o.y.vars != null) { if (o.y.vars.length != 0) { var g = $('#genes'); g[0].selectize.clear(); g[0].selectize.addItems(o.y.vars);}}; }}")
    )
}

volcanoPlot <- function(df, title, subtitle) {

    ## Need a NLP column for sizing
    df$LogInt = df[["AveExpr"]]
    df$LogInt[df$LogInt < 0] = 0
    df$LogInt[df$LogInt > 10] = 10

    ## Log Score
    df$NegativeLogP = -log10(df[, "P.Value"])

    ## Create Group factor column in df
    df$Group = NA
    df$Group <- ifelse(df[["P.Value"]] <= 0.01,
                       ifelse(df[["logFC"]] >= 0, "Increased", "Decreased"),
                       "No Change")
    rnk = rank(df$Group, ties.method = "first")
    rnk = rnk * -1

    ## Adding alpha to the colors
    colors = c("deepskyblue4", "red3", "grey25")

    colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")

    ## Create the canvasXpress df and var annotation
    cx = data.frame(a = round(df[colnames(df) == "logFC"], digits = 2),
                    b = round(df$NegativeLogP, digits = 2))
    colnames(cx) = c("logFC", "NegativeLogP")
    cx = cx[with(cx, order(rnk)), ]
    va = data.frame(Group = df$Group,
                    LogInt = round(df$LogInt, digits = 2))

    va = va[with(va, order(rnk)), ]
    rownames(va) = rownames(cx)
    d = list(line = list(list(color = colors[1], width = 2, x = log2(1.5) * -1),
                         list(color = colors[2], width = 2, x = log2(1.5)),
                         list(color = colors[3], width = 2, x = 0)))

    ## CanvasXpress Plot
    canvasXpress(
        data                    = cx,
        varAnnot                = va,
        decorations             = d,
        graphType               = "Scatter2D",
        colorBy                 = "Group",
        colors                  = colors,
        legendPosition          = "right",
        showDecorations         = TRUE,
        sizeBy                  = "LogInt",
        sizes                   = c(4, 10, 12, 14, 16, 18, 20, 22, 24, 26),
        sizeByShowLegend        = TRUE,
        title                   = title,
        subtitle                = subtitle,
        xAxis                   =  c("logFC", ""),
        yAxis                   = c("NegativeLogP", ""),
        yAxisTitle              = "-log10(P.Value)",
        subtitleScaleFontFactor = 0.5,
        showAnimation           = FALSE,
        width                   = "100%",
        events                  = JS("{'select': function(o, e, t){if (o != null && o.y != null && o.y.vars != null) { if (o.y.vars.length != 0) { var g = $('#genes'); g[0].selectize.clear(); g[0].selectize.addItems(o.y.vars);}}; }}")
    )
}

comparePlot <- function(df, title, subtitle) {
    # helper function
    with.seed <- function(seed, expr) {
        saved.seed <- .Random.seed
        on.exit(.Random.seed <<- saved.seed)
        set.seed(seed)
        expr
    }

    # Columns to plot - Capture the labels from the colname
    xlabel = colnames(df)[1]
    ylabel = colnames(df)[2]

    #create group factor column in df
    df$group = NA
    df$group <- ifelse(df[["xp"]] <= 0.01,
                              ifelse(df[["yp"]] <= 0.01, "Common", "X Unique"),
                              ifelse(df[["yp"]] <= 0.01, "Y Unique", "Not Significant"))
    df$group <- df$group %>% factor(levels = c("Common", "X Unique", "Y Unique", "Not Significant"))
    df$order <- with.seed(1954, sample.int(nrow(df))) + nrow(df) * (df$group == "Common") + -nrow(df) * (df$group == "Not Significant")

    ## sort df
    df = df[order(df$order), ]

    ## Adding alpha to the colors
    colors <- c("darkgoldenrod1", "grey25", "deepskyblue4", "red3")

    colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")
    colors[4] = paste(c("rgba(", paste(c(paste(col2rgb(colors[4], alpha = FALSE), collapse = ","), 0.5), collapse = ","), ")"), collapse = "")

    ## Create the canvasXpress df and var annotation
    cx = data.frame(a = round(df[, 1], digits = 2), b = round(df[, 2], digits = 2))
    colnames(cx) = c(xlabel, ylabel)
    rownames(cx) = rownames(df)
    va = data.frame(Group = df$group)
    colnames(va) = c("Group")
    rownames(va) = rownames(cx)
    d = list(line = list(list(color = "black", width = 1, x = 0),
                         list(color = "black", width = 1, y = 0),
                         list(color = colors[1], width = 2,
                              x = -10, x2 = 10,
                              y = -10, y2 = 10)))

    ## CanvasXpress Plot
    canvasXpress(
        data                    = cx,
        varAnnot                = va,
        decorations             = d,
        graphType               = "Scatter2D",
        colorBy                 = "Group",
        colors                  = colors,
        legendInside            = TRUE,
        legendPosition          = "bottomRight",
        scatterAxesEqual        = TRUE,
        showDecorations         = TRUE,
        sizeBy                  = "Group",
        sizes                   = c(10, 4, 10, 10, 12, 14, 16, 18, 20, 22, 24, 26),
        sizeByShowLegend        = FALSE,
        title                   = title,
        subtitle                = subtitle,
        xAxis                   = list(xlabel),
        yAxis                   = list(ylabel),
        subtitleScaleFontFactor = 0.5,
        showAnimation           = FALSE,
        width                   = "100%",
        events                  = JS("{'select': function(o, e, t){if (o != null && o.y != null && o.y.vars != null) { if (o.y.vars.length != 0) { var g = $('#genes'); g[0].selectize.clear(); g[0].selectize.addItems(o.y.vars);}}; }}")
    )
}

genePlot <- function(df, block, title, subtitle) {

    smpAnnot = data.frame(Group = block)
    rownames(smpAnnot) = rownames(t(df))
    varAnnot = data.frame(Gene = rownames(df))
    rownames(varAnnot) = rownames(df)

    if (length(rownames(varAnnot)) > 4) {
        canvasXpress(
            data                    = df,
            smpAnnot                = smpAnnot,
            graphType               = "Heatmap",
            smpOverlays             = list("Group"),
            smpOverlayProperties    = list(Group = list(thickness = 100, color = "Set1")),
            showSampleNames         = FALSE,
            sortSampleByCategory    = list("Group"),
            heatmapSmpSeparateBy    = "Group",
            variablesClustered      = TRUE,
            showVarDendrogram       = FALSE,
            colorSpectrum           = c("navy", "white", "firebrick3"),
            title                   = title,
            subtitle                = subtitle,
            subtitleScaleFontFactor = 0.5,
            overlayScaleFontFactor  = 1.5,
            showAnimation           = FALSE,
            width                   = "100%"
        )
    } else {
        canvasXpress(
            data                    = df,
            smpAnnot                = smpAnnot,
            varAnnot                = varAnnot,
            graphType               = "Boxplot",
            graphOrientation        = "vertical",
            groupingFactors         = c("Group"),
            segregateVariablesBy    = list("Gene"),
            colorBy                 = "Group",
            transparency            = 0.7,
            title                   = "Top Fold Change Genes",
            subtitle                = subtitle,
            xAxisTitle              = "Log2CPM",
            xAxis2Show              = FALSE,
            showLegend              = TRUE,
            showSampleNames         = FALSE,
            legendPosition          = "top",
            legendColumns           = 3,
            showLegendTitle         = FALSE,
            layoutAdjust            = FALSE,
            smpLabelRotate          = 45,
            xAxisMinorTicks         = FALSE,
            boxplotMedianWidth      = 2,
            subtitleScaleFontFactor = 0.5,
            smpLabelScaleFontFactor = 0.5,
            showAnimation           = FALSE,
            width                   = "100%"
        )
    }
}
