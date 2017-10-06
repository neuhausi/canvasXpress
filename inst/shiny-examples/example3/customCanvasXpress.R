profilePlot <- function(
    df,
    logRatioCol = "logFC",
    logIntCol = "AveExpr",
    pvalCol = "P.Value",
    pthreshold = 0.01,
    xlab = "AveExpr",
    ylab = "logFC",
    title = NULL,
    sizes = c(2,10,12,14,16,18,20,22,24,26),
    colors = c("deepskyblue4", "red3", "grey25"),
    alpha = 0.5,
    sizeBySignificance = FALSE,
    backgroundColor = "lightgrey",
    tickColor = "white",
    referenceLine = "grey25",
    foldChangeLines = log2(1.5),
    linesWidth = 2,
    showLoessFit = TRUE,
    loessColor = "darkgoldenrod1",
    legendInside = TRUE,
    legendPosition = "bottomRight",
    legendBoxColor = "black",
    events = NULL) {   
  
  ## Argument checks
  ## Make sure specified columns exist
  if (!logRatioCol %in% colnames(df)) {
    stop("LogRatio column not found.")
  }
  if (!logIntCol %in% colnames(df)) {
    stop("LogIntensity column not found.")
  }
  if (!pvalCol %in% colnames(df)) {
    stop("Significance measure column not found.")
  }
  
  ## Need a NLP column for sizing
  df$negLog10P = round(-log10(df[[pvalCol]]))
  
  ## Classify the subsets
  DEup = df[[pvalCol]] <= pthreshold & df[[logRatioCol]] > 0
  DEdn = df[[pvalCol]] <= pthreshold & df[[logRatioCol]] < 0
  DEnot = !DEup & !DEdn
  
  ## Create Group factor column in df
  df$Group=NA
  df$Group[DEup] = "Increased"
  df$Group[DEdn] = "Decreased"
  df$Group[DEnot] = "No Change"
  rnk = rank(df$Group, ties.method= "first")
  rnk = rnk * -1
  
  ## Size by
  if (sizeBySignificance == TRUE) {
    sizeBy = "negLog10P"
    sizeByShowLegend = TRUE
  } else {
    sizeBy = "Group"
    sizes = c(10,10,4,10,12,14,16,18,20,22,24,26)
    sizeByShowLegend = FALSE
  }
  
  ## Adding alpha to the colors
  library(grDevices);  
  colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  
  ## Create the canvasXpress df and var annotation
  cx = data.frame(a=round(df[colnames(df)==logIntCol], digits=2), b=round(df[colnames(df)==logRatioCol], digits=2))
  colnames(cx) = c(logIntCol, logRatioCol)
  cx = cx[with(cx, order(rnk)),]
  va = data.frame(Group=df$Group, nLog10pVal=df$negLog10P);
  va = va[with(va, order(rnk)),]
  rownames(va) = rownames(cx)
  d = list(line=list(list(color=colors[1],width=linesWidth,y=foldChangeLines*-1), list(color=colors[2],width=linesWidth,y=foldChangeLines), list(color=colors[3],width=linesWidth,y=0)))
  
  ## CanvasXpress Plot
  canvasXpress(
      cx,
      decorData = d,
      varAnnot = va,
      graphType = "Scatter2D", 
      axisAlgorithm = "wilkinsonExtended", 
      backgroundType = "window",
      backgroundWindow = backgroundColor,
      colorBy = "Group",
      colors = colors,
      legendBackgroundColor = backgroundColor,
      legendBoxColor = legendBoxColor,
      legendInside = legendInside,
      legendPosition = legendPosition,
      showDecorations = TRUE,
      showLoessFit = showLoessFit,
      loessColor = loessColor,
      showDecorations = TRUE,
      sizeBy = sizeBy,
      sizes = sizes,
      sizeByShowLegend = sizeByShowLegend,
      title = title,
      canvasBox = FALSE,
      fontName = "Arial",
      xAxis = list(logIntCol),
      xAxisTickColor = tickColor,
      xAxisTitle = xlab,
      yAxis = list(logRatioCol),
      yAxisTickColor = tickColor,
      yAxisTitle = ylab,
      events=events) 
  
}

volcanoPlot <- function(
    df,
    logRatioCol = "logFC",
    logIntCol = "AveExpr",
    pvalCol = "P.Value",
    pthreshold = 0.01,
    xlab = "logFC",
    ylab = "-log10(P.Value)",
    title = NULL,
    sizes = c(4,10,12,14,16,18,20,22,24,26),
    colors = c("deepskyblue4", "red3", "grey25"),
    alpha = 0.5,
    sizeByIntensity = TRUE,
    backgroundColor = "lightgrey",
    canvasBox = FALSE,
    tickColor = "white",
    referenceLine = "grey25",
    foldChangeLines = log2(1.5),
    linesWidth = 2,
    legendInside = FALSE,
    legendPosition = "right",
    legendBoxColor = "black",
    events = NULL) {   
  
  ## Argument checks
  ## Make sure specified columns exist
  if (!logRatioCol %in% colnames(df)) {
    stop("LogRatio column not found.")
  }
  if (!logIntCol %in% colnames(df)) {
    stop("LogIntensity column not found.")
  }
  if (!pvalCol %in% colnames(df)) {
    stop("Significance measure column not found.")
  }
  
  ## Need a NLP column for sizing
  df$LogInt = df[[logIntCol]]
  df$LogInt[df$LogInt < 0] = 0
  df$LogInt[df$LogInt > 10] = 10
  
  ## Lod Score
  df$NegativeLogP = -log10(df[,pvalCol])
  
  ## Classify the subsets
  DEup = df[[pvalCol]] <= pthreshold & df[[logRatioCol]] > 0
  DEdn = df[[pvalCol]] <= pthreshold & df[[logRatioCol]] < 0
  DEnot = !DEup & !DEdn
  
  ## Create Group factor column in df
  df$Group=NA
  df$Group[DEup] = "Increased"
  df$Group[DEdn] = "Decreased"
  df$Group[DEnot] = "No Change"
  rnk = rank(df$Group, ties.method= "first")
  rnk = rnk * -1
  
  ## Size by
  if (sizeByIntensity == TRUE) {
    sizeBy = "LogInt"
    sizeByShowLegend = TRUE
  } else {
    sizeBy = "Group"
    sizes = c(10,10,4,10,12,14,16,18,20,22,24,26)
    sizeByShowLegend = FALSE
  }
  
  ## Adding alpha to the colors
  library(grDevices);  
  colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  
  ## Create the canvasXpress df and var annotation
  cx = data.frame(a=round(df[colnames(df)==logRatioCol], digits=2), b=round(df$NegativeLogP, digits=2))
  colnames(cx) = c(logRatioCol, "NegativeLogP")
  cx = cx[with(cx, order(rnk)),]
  va = data.frame(Group=df$Group, LogInt=round(df$LogInt, digits=2));
  va = va[with(va, order(rnk)),]
  rownames(va) = rownames(cx)
  d = list(line=list(list(color=colors[1],width=linesWidth,x=foldChangeLines*-1), list(color=colors[2],width=linesWidth,x=foldChangeLines), list(color=colors[3],width=linesWidth,x=0)))
  
  ## CanvasXpress Plot
  canvasXpress(
      cx,
      decorData=d,
      varAnnot=va,
      graphType = "Scatter2D", 
      axisAlgorithm = "wilkinsonExtended", 
      backgroundType = "window",
      backgroundWindow = backgroundColor,
      colorBy = "Group",
      colors = colors,
      legendBackgroundColor = backgroundColor,
      legendBoxColor = legendBoxColor,
      legendInside = legendInside,
      legendPosition = legendPosition,
      showDecorations = TRUE,
      showDecorations = TRUE,
      sizeBy = sizeBy,
      sizes = sizes,
      sizeByShowLegend = sizeByShowLegend,
      title = title,
      canvasBox=FALSE,
      fontName="Arial",
      xAxis =  c(logRatioCol, ""),
      xAxisTickColor = tickColor,
      xAxisTitle = xlab,
      yAxis = c("NegativeLogP", ""),
      yAxisTickColor = tickColor,
      yAxisTitle = ylab,
      events=events) 
  
}

comparePlot <- function(
    df, 
    pthreshold = 0.01,
    title = NULL,
    alpha = 0.5,
    sizes = c(8,10,12,14,16,18,20,22,24,26),
    colors = c("darkgoldenrod1", "grey25", "deepskyblue4", "red3"),
    backgroundColor = "lightgrey",
    tickColor = "white",
    crosshair = "grey25",
    linesWidth = 2,
    referenceLine = "darkgoldenrod1",
    legendInside = TRUE,
    legendPosition = "bottomRight",
    legendBoxColor = "black",
    events = NULL) {
  
  with.seed <- function(seed, expr) {
    saved.seed <- .Random.seed
    on.exit(.Random.seed <<- saved.seed)
    set.seed(seed)
    expr
  }
  
  # Argument checks
  # 1st two columns should be numeric
  if (ncol(df) <2) {
    stop ("Need at least 2 numeric columns to proceed.")
  } else if (!is.numeric(df[,1]) || !is.numeric(df[,2])) {
    stop("Column 1 and 2 must hold numeric X and Y values.")
  } else if (is.null(df[["xp"]]) || is.null(df[["yp"]])) {
    stop("Missing columns xp and yp in data.frame") 
  }
  
  # Columns to plot
  # Capture the labels from the colname
  xlabel = colnames(df)[1]
  ylabel = colnames(df)[2]
  
  
  #Let's plot the subsets
  xindx = df[["xp"]] <= pthreshold
  yindx = df[["yp"]] <= pthreshold
  
  #boolean indexes to parse groups
  bothindx = xindx & yindx
  neitherindx = !xindx & !yindx
  xindx = xindx & !bothindx #unique to X
  yindx = yindx & !bothindx #unique to y
  
  #create group factor column in df
  df$group=NA
  df$group[bothindx] = "Common"
  df$group[xindx] = "X Unique"
  df$group[yindx] = "Y Unique"
  df$group[neitherindx] = "Not Significant"
  df$group %<>% factor(levels=c("Common", "X Unique", "Y Unique", "Not Significant"))
  df$order = with.seed(1954, sample.int(nrow(df))) + nrow(df) * (df$group == "Common") + -nrow(df) * (df$group == "Not Significant") 
  
  ## sort df
  df = df[order(df$order),]
  
  ## Adding alpha to the colors
  library(grDevices);  
  colors[1] = paste(c("rgba(", paste(c(paste(col2rgb(colors[1], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[2] = paste(c("rgba(", paste(c(paste(col2rgb(colors[2], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[3] = paste(c("rgba(", paste(c(paste(col2rgb(colors[3], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  colors[4] = paste(c("rgba(", paste(c(paste(col2rgb(colors[4], alpha=FALSE), collapse=","), alpha), collapse=","), ")"), collapse="")
  
  ## Create the canvasXpress df and var annotation
  cx = data.frame(a=round(df[,1], digits=2), b=round(df[,2], digits=2))
  colnames(cx) = c(xlabel, ylabel)
  rownames(cx) = rownames(df)
  va = data.frame(Group=df$group)
  colnames(va) = c("Group")
  rownames(va) = rownames(cx)
  d = list(line=list(list(color="black",width=1,x=0), list(color="black",width=1,y=0), list(color=colors[1],width=linesWidth,x=-10,x2=10,y=-10,y2=10)))
  
  ## CanvasXpress Plot
  canvasXpress(
      cx,
      decorData = d,
      varAnnot = va,
      graphType = "Scatter2D", 
      axisAlgorithm = "wilkinsonExtended", 
      backgroundType = "window",
      backgroundWindow = backgroundColor,
      colorBy = "Group",
      colors = colors,
      legendBackgroundColor = backgroundColor,
      legendBoxColor = legendBoxColor,
      legendInside = legendInside,
      legendPosition = legendPosition,
      scatterAxesEqual = TRUE,
      showDecorations = TRUE,
      sizeBy = "Group",
      sizes = c(10,4,10,10,12,14,16,18,20,22,24,26),
      sizeByShowLegend = FALSE,
      title = title,
      canvasBox = FALSE,
      fontName = "Arial",
      xAxis =  list(xlabel),
      xAxisTickColor = tickColor,
      xAxisTitle = xlabel,
      yAxis = list(ylabel),
      yAxisTickColor = tickColor,
      yAxisTitle = ylabel,
      events = events
  ) 
  
}
  
heatmapPlot <- function (
    df,
    smpAnnot = FALSE,
    smpOverlays = FALSE,
    title = NULL,
    events = NULL) {
  
  canvasXpress(
      df,
      smpAnnot = smpAnnot,
      smpOverlays = list("Group"),
      smpOverlayProperties = list(Group=list(thickness=60,color="Set1")),
      showSampleNames = FALSE,
      sortSampleByCategory = list("Group"),
      heatmapSmpSeparateBy = "Group",
      variablesClustered = TRUE,
      axisAlgorithm = "wilkinsonExtended",
      graphType = "Heatmap", 
      showVarDendrogram = FALSE, 
      heatmapIndicatorPosition = "right", 
      colorSpectrum=c("navy", "white", "firebrick3"),
      title = title,
      canvasBox = FALSE,
      fontName = "Arial"
  )
}

genePlot <- function(
    df,
    block, 
    title = NULL,
    events = NULL) {
  
  smpAnnot = data.frame(Group=block)
  rownames(smpAnnot) = rownames(t(df))
  varAnnot = data.frame(Gene=rownames(df))
  rownames(varAnnot) = rownames(df)
  
  if (length(rownames(varAnnot)) > 6) {
    
    heatmapPlot(df, smpAnnot, title = title)
    
  } else {
    
    canvasXpress(df,
        smpAnnot = smpAnnot,
        varAnnot = varAnnot,
        graphType = "Boxplot",
        graphOrientation = "vertical",
        backgroundWindow = "lightgrey",
        backgroundType = "window",
        windowBox = "lightgrey",
        legendBoxColor = "black",
        legendBackgroundColor = "lightgrey",
        groupingFactors = c("Group"),
        segregateVariablesBy = list("Gene"),
        colors = c("deepskyblue3","deepskyblue3","deepskyblue3","deepskyblue3"),
        title = "Top Fold Changes Genes",
        xAxisTitle = "Log2CPM",
        smpHairline = TRUE,
        smpHairlineColor = "white",
        smpHairlineWidth = 1,
        xAxisTickColor = "white",
        smpTitle = "Group",
        xAxis2Show = FALSE,
        axisAlgorithm = "wilkinsonExtended",
        showLegend = FALSE,
        layoutAdjust = FALSE,
        layoutBoxLabelColors = c("rgb(197, 197, 197)","rgb(197, 197, 197)"),
        layoutBoxShow = FALSE,
        canvasBox = FALSE,
        smpLabelRotate = 60,
        xAxisMinorTicks = FALSE,
        fontName = "Arial",
        boxplotMedianWidth = 2,
        boxplotMedianColor = "dodgerblue4",
        boxplotMean = TRUE,
        objectBorderColor = "grey",
        events = events
    )
    
  }
  
}


