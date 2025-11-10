#' Converts a ggplot object to a list that can be used by CanvasXpress.
#'
#' @param o   the ggplot object
#' @param ... additional parameters to the function
#'
#' @export
ggplot.as.list <- function(o, ...) {

  if (!(requireNamespace("ggplot2", quietly = TRUE))) {
    stop("The ggplot2 package is required to use this functionality.")
  } else if (!("ggplot") %in% class(o) && !("ggmatrix") %in% class(o)) {
    stop("Not a ggplot or ggmatrix object")
  }

  if (("patchwork") %in% class(o)) {
    l <- length(o)
    c <- o$patches$layout$ncol
    r <- o$patches$layout$nrow
    cx <- list(...)
    cx$length <- l
    cx$isGGPlot <- TRUE
    cx$isPatchwork <- TRUE
    cx$isR <- TRUE
    if (!is.null(c)) {
      cx$cols <- c
    }
    if (!is.null(r)) {
      cx$rows <- r
    }
    p <- list()
    for (i in 1:l) {
      t <- paste("canvas", i, sep = "-")
      p[[i]] <- gg_cxplot(o[[i]], t)
    }
    cx$datasets <- p
  } else if (("ggmatrix") %in% class(o)) {
    d <- o$data
    l <- length(o$plots)
    c <- o$ncol
    r <- o$nrow
    cx <- list(...)
    cx$length <- l
    cx$isGGPlot <- TRUE
    cx$isGGMatrix <- TRUE
    cx$isR <- TRUE
    ## Find the longest in the data frame which will be used to calculate the margins
    v <- na.omit(unlist(lapply(d, as.character)))
    z <- if (length(v) > 0) v[which.max(nchar(v))] else ""
    cx$longestString <- as.character(unlist(z))
    if (!is.null(c)) {
      cx$cols <- c
    }
    if (!is.null(r)) {
      cx$rows <- r
    }
    p <- list()
    for (i in 1:l) {
      t <- paste("canvas", i, sep = "-")
      p[[i]] <- gg_cxplot(o$plots[[i]]$fn(d, o$plots[[i]]$mapping), t)
      p[[i]]$isGGMatrix <- cx$longestString
    }
    cx$datasets <- p
  } else {
    cx <- gg_cxplot(o, "canvas", ...)
  }

  jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)
}

#longest <- sapply(d, function(col) {
#  if (is.character(col) || is.factor(col) || is.numeric(col)) {
#    # Convert column to character and remove any NA values
#    col_char <- as.character(col)
#    col_char_no_na <- col_char[!is.na(col_char)]
#    # If the column is empty after removing NAs, return an empty string
#    if (length(col_char_no_na) == 0) {
#      return("")
#    }
#    # Return the element with the maximum number of characters
#    return(col_char_no_na[which.max(nchar(col_char_no_na))])
#  } else {
#    # For other column types, return an empty string
#    return("")
#  }
#})

gg_cxplot <- function(o, target, ...) {

  config <- list(...)

  meta <- as.list(sapply(o$data, is.factor))

  bld <- ggplot2::ggplot_build(o)

  data <- data_to_matrix(o, bld)

  cx <- list(
    renderTo = target,
    data     = data,
    aes      = gg_mapping(o, bld),
    scales   = gg_scales(o, bld),
    coords   = gg_coordinates(o),
    theme    = gg_theme(o),
    labels   = gg_labels(o),
    facet    = gg_facet(o),
    order    = gg_order(o, bld),
    layers   = as.vector(NULL),
    geoms    = as.vector(NULL),
    meta     = meta,
    isGGPlot = TRUE,
    config   = config,
    isR      = TRUE
  )

  layers <- sapply(o$layers, function(x) class(x$geom)[1])

  proto_stat <- sapply(sapply(o$layers, "[[", "stat"), function(x) class(x)[[1]][1])

  for (i in 1:length(layers)) {
    l <- layers[i]
    p <- gg_proc_layer(o, i, bld)
    if ((l == "GeomTile") && (proto_stat[i] == "StatBin2d")) {
      l <- "GeomBin2d"
    } else if ((l == "GeomPoint") && !is.null(p$position) && (p$position == "jitter")) {
      l <- "GeomJitter"
    } else if ((l == "GeomBar") && (proto_stat[i] == "StatBin")) {
      l <- "GeomHistogram"
    } else if ((l == "GeomPath") && (proto_stat[i] == "StatQqLine")) {
      l <- "GeomQqLine"
    } else if ((l == "GeomPoint") && (proto_stat[i] == "StatQq")) {
      l <- "GeomQq"
    } else if (l == "GeomErrorbar" || l == "GeomErrorbarh" || l == "GeomRibbon") {
      ll <- o$layers[[i]]
      if (class(bld$data[[i]]$xmin)[1] == "numeric") {
        p$xmin <- bld$data[[i]]$xmin
        if (rlang::as_label(ll$mapping[["xmin"]]) %in% colnames(o$data)) {
          p$x <- rlang::as_label(ll$mapping[["xmin"]])
        }
      }
      if (class(bld$data[[i]]$xmax)[1] == "numeric") {
        p$xmax <- bld$data[[i]]$xmax
        if (rlang::as_label(ll$mapping[["xmax"]]) %in% colnames(o$data)) {
          p$x <- rlang::as_label(ll$mapping[["xmax"]])
        }
      }
      if (class(bld$data[[i]]$ymin)[1] == "numeric") {
        p$ymin <- bld$data[[i]]$ymin
        if (rlang::as_label(ll$mapping[["ymin"]]) %in% colnames(o$data)) {
          p$y <- rlang::as_label(ll$mapping[["ymin"]])
        }
      }
      if (class(bld$data[[i]]$ymax)[1] == "numeric") {
        p$ymax <- bld$data[[i]]$ymax
        if (rlang::as_label(ll$mapping[["ymax"]]) %in% colnames(o$data)) {
          p$y <- rlang::as_label(ll$mapping[["ymax"]])
        }
      }
    } else if (l == "GeomVline" || l == "GeomHline" || l == "GeomAbline") {
      if (!("color" %in% names(p))) {
        p$color <- bld$data[[i]]$colour
      }
      if (!("linewidth" %in% names(p))) {
        p$linewidth <- bld$data[[i]]$linewidth
      }
      if (!("linetype" %in% names(p))) {
        p$linetype <- bld$data[[i]]$linetype
      }
    } else if (l == "GeomPoint") {
      if (dim(bld$data[[i]])[1] != dim(o$data)[1]) {
        p$x <- bld$data[[i]]$x
        p$y <- bld$data[[i]]$y
        p$color <- bld$data[[i]]$colour
        p$fill <- bld$data[[i]]$fill
        p$size <- bld$data[[i]]$size
        p$shape <- bld$data[[i]]$shape
      }
    } else if (l == "GeomSmooth") {
      p$dataColor = unique(bld$data[[i]]$colour)
      p$dataFill = unique(bld$data[[i]]$fill)
      p$dataAlpha = unique(bld$data[[i]]$alpha)
    } else if (l == "GeomStep") {
      if (("kmCxplot") %in% names(config)) {
        p$kmCxplot <- TRUE
        p$showKMConfidenceIntervals <- config$showKMConfidenceIntervals
        p$kmRiskTable <- config$kmRiskTable
        p$kmColors <- unique(p$data$color)
        within(cx$config, rm("kmCxplot"))
        within(cx$config, rm("showKMConfidenceIntervals"))
        within(cx$config, rm("kmRiskTable"))
        within(p, rm(data))
      }
    } else if (l == "GeomDensityRidges") {
      p$bandwidthAdjust <- bld$data[[i]]$x[2] - bld$data[[i]]$x[1]
    } else if (l == "GeomRect" || l == "GeomTile") {
      p$xmin <- bld$data[[i]]$xmin
      p$xmax <- bld$data[[i]]$xmax
      p$ymin <- bld$data[[i]]$ymin
      p$ymax <- bld$data[[i]]$ymax
      p$col <- bld$data[[i]]$fill
      p$panel <- bld$data[[i]]$PANEL
    } else if (l == "GeomSegment" || l == 'GeomCurve') {
      p$x <- bld$data[[i]]$x
      p$y <- bld$data[[i]]$y
      p$xend <- bld$data[[i]]$xend
      p$yend <- bld$data[[i]]$yend
      p$col <- bld$data[[i]]$colour
      p$linetype <- bld$data[[i]]$linetype
      p$linewidth <- bld$data[[i]]$linewidth
    } else if (l == "GeomPwc" || l == "GeomBracket") {
      p$x <- bld$data[[i]]$x
      p$y <- bld$data[[i]]$y
      p$xmin <- bld$data[[i]]$xmin
      p$xmax <- bld$data[[i]]$xmax
      p$col <- bld$data[[i]]$colour
      p$label <- bld$data[[i]]$label
      p$panel <- bld$data[[i]]$PANEL
    } else if (l == "GeomTextNpc") {
      p$label <- bld$data[[i]]$label
      p$npcx <- bld$data[[i]]$npcx
      p$npcy <- bld$data[[i]]$npcy
    }
    p$stat <- proto_stat[i]
    q <- list()
    q[[l]] <- p
    cx$geoms <- append(cx$geoms, l)
    cx$layers <- append(cx$layers, q)
  }

  cx
}

# -- internal helper functions -- #

gg_default_aes <- function(geom_name) {
  if (geom_name == "GeomPwc" || geom_name == "GeomBracket") {
    namesp <- asNamespace("ggpubr")
  } else if (geom_name == "GeomConfint") {
    namesp <- asNamespace("survminer")
  } else {
    namesp <- asNamespace("ggplot2")
  }
  geom_obj <- get(geom_name, envir = namesp)
  default_aes <- geom_obj$default_aes
  # Filter out NULL and NA values. Ensure it returns a single logical value.
  valid_aes <- Filter(function(x) {
    if (is.vector(x) || is.list(x)) {
      return(!any(is.na(x)) && !is.null(x))
    } else {
      return(FALSE)
    }
  }, default_aes)
  # Convert to a simple character string for easy reading
  valid_aes <- sapply(valid_aes, deparse)
  return(valid_aes)
}

gg_fun <- function(x) {
  tryCatch(utils::getFromNamespace(x, "ggplot2"), error = function(e) NULL)
}

gg_order <- function(o, b) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- Filter(Negate(is.null), sapply(o$data, levels))
  if (!is.null(b$layout$panel_params[[1]]$x)) {
    r$xLabels <- as.character(b$layout$panel_params[[1]]$x$get_labels())
  }
  if (!is.null(b$layout$panel_params[[1]]$y)) {
    r$yLabels <- as.character(b$layout$panel_params[[1]]$y$get_labels())
  }
  r
}

gg_facet <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  f <- o$facet$params$facets
  if (!is.null(f)) {
    f <- list(
      facet = ls(f),
      facetLevels = sort(unique(factor(as.character(o$data[[ls(f)]]), exclude = NULL))),
      facetType = "wrap",
      facetXFree = o$facet$params$free$x,
      facetYFree = o$facet$params$free$y,
      facetXSpace = o$facet$params$space_free$x,
      facetYSpace = o$facet$params$space_free$y
    )
    if (!is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetCols <- o$facet$params$ncol
      f$facetRows <- o$facet$params$nrow
    } else if (is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetRows <- o$facet$params$nrow
      f$facetCols <- ceiling(length(f$facetLevels) / f$facetRows)
    } else if (!is.null(o$facet$params$ncol) && is.null(o$facet$params$nrow)) {
      f$facetCols <- o$facet$params$ncol
      f$facetRows <- ceiling(length(f$facetLevels) / f$facetCols)
    } else {
      if (length(f$facetLevels) < 4) {
        f$facetRows <- 1
        f$facetCols <- length(f$facetLevels)
      } else {
        f$facetCols <- ceiling(sqrt(length(f$facetLevels)))
        f$facetRows <- ceiling(length(f$facetLevels) / f$facetCols)
      }
    }
    f$facetTopology <- paste(f$facetRows, "X", f$facetCols, sep = "")
  } else if (!is.null(o$facet$params$rows) || !is.null(o$facet$params$cols)) {
    f <- list(
      facetType = "grid",
      facetXFree = o$facet$params$free$x,
      facetYFree = o$facet$params$free$y,
      facetXSpace = o$facet$params$space_free$x,
      facetYSpace = o$facet$params$space_free$y
    )
    if (length(o$facet$params$rows) > 0 && length(o$facet$params$cols) > 0) {
      f$facet <- c(ls(o$facet$params$rows)[1], ls(o$facet$params$cols)[1])
      f$facetLevelsRows <- sort(unique(factor(as.character(o$data[[ls(o$facet$params$rows)]]), exclude = NULL)))
      f$facetLevelsCols <- sort(unique(factor(as.character(o$data[[ls(o$facet$params$cols)]]), exclude = NULL)))
      f$facetRows <- length(f$facetLevelsRows)
      f$facetCols <- length(f$facetLevelsCols)
    } else if (length(o$facet$params$rows) > 0) {
      f$facet <- ls(o$facet$params$rows)
      f$facetLevelsRows <- sort(unique(factor(as.character(o$data[[ls(o$facet$params$rows)]]), exclude = NULL)))
      f$facetRows <- length(f$facetLevels)
      f$facetCols <- 1
    } else if (length(o$facet$params$cols) > 0) {
      f$facet <- ls(o$facet$params$cols)
      f$facetLevelsCols <- sort(unique(factor(as.character(o$data[[ls(o$facet$params$cols)]]), exclude = NULL)))
      f$facetRows <- 1
      f$facetCols <- length(f$facetLevels)
    }
    f$facetTopology <- paste(f$facetRows, "X", f$facetCols, sep = "")
  }
  f
}

gg_theme <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  t <- list()
  e <- gg_fun("plot_theme")(o)
  s <- 11
  if (!is.null(e[["text"]][["size"]])) {
    s <- as.numeric(e[["text"]][["size"]])
  }
  atts <- ls(e)
  for (a in atts) {
    if (is.list(e[[a]]) || ("S7_object" %in% class(e[[a]]))) {
      attrs_values  <- e[[a]]
      if (("S7_object" %in% class(e[[a]])) && requireNamespace("S7", quietly = TRUE)) {
          attrs_values <- S7::props(e[[a]])
      }

      atts2 <- ls(attrs_values)

    if (is.list(e[[a]]) || ("S7_object" %in% class(e[[a]]))) {
      attrs_values  <- e[[a]]
      if (("S7_object" %in% class(e[[a]])) && requireNamespace("S7", quietly = TRUE)) {
          if ("element_blank" %in% class(attrs_values)) {
            t[[a]] <- "element_blank"
            next
          }
          attrs_values <- S7::props(e[[a]])
      }

      atts2 <- ls(attrs_values)

      if (length(atts2) > 0) {
        for (b in atts2) {
          if (b != "inherit.blank") {
            k <- paste(a, b, sep = ".")
            c <- class(attrs_values[[b]])[1]
            v <- as.character(attrs_values[[b]])
            m <- regexpr("margin", k)[1]
            if (m > 0 && length(v) > 0) {
              suppressWarnings(t[[k]] <- max(as.numeric(gsub("points", "", as.character(v)))))
            } else if (length(v) > 0) {
              if (b == "size" && c == "rel") {
                t[[k]] <- ceiling(s * as.numeric(v) * 0.9)
              } else {
                t[[k]] <- gsub("points", "", v)
              }
            }
          }
        }
      } else {
        t[[a]] <- gsub("ggplot2::", "", class(e[[a]])[1])
      }
    } else {
        v <- as.character(e[[a]])
        c <- gsub("ggplot2::", "", class(e[[a]])[1])
        m <- regexpr("margin", a)[1]
        if (m > 0 && length(v) > 0) {
            t[[a]] <- suppressWarnings(t[[k]] <- max(as.numeric(gsub("points", "", as.character(v)))))
        } else if (length(v) > 0) {
            if (a == "size" && c == "rel") {
                t[[a]] <- ceiling(s * as.numeric(v) * 0.9)
            } else {
                t[[a]] <- gsub("points", "", v)
            }
        }
    }
  }
  t
}


gg_scales <- function(o, b) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- list()
  n <- length(o$scales$scales)
  k <- FALSE
  w <- 0
  if (n > 0) {
    for (i in 1:n) {
      s <- o$scales$scales[[i]]
      if (s$aesthetics[1] == "fill") {
        c <- class(s)[1]
        if (c == "ScaleContinuous") {
          r$colorSpectrum <- s$palette(c(0, 0.25, 0.5, 0.75, 1))
          k <- TRUE
        } else if (c == "ScaleDiscrete") {
          p <- s$palette(1)
          if (!is.null(names(p))) {
            k <- names(p)
            names(p) <- NULL
            q <- list()
            for (j in 1:length(k)) {
              q[[k[j]]] <- p[j]
            }
            r$colorKey <- q
          }
          r$colors <- b[[3]]$scales$scales[[1]]$palette.cache
          if (length(b[[3]]$scales$scales[[1]]$breaks) > 0) {
            r$colorBreaks <- b[[3]]$scales$scales[[1]]$breaks
          }
        } else if (c == "ScaleBinned") {
          r$colors <- b[[3]]$scales$scales[[1]]$palette.cache
          r$colorBreaks <- b[[3]]$scales$scales[[1]]$breaks
          r$colorLimits <- b[[3]]$scales$scales[[1]]$limits
        }
        r$colorScale <- c
        if (!is.null(s$name) && length(s$name) > 0) {
          r$colorLegendTitle <- s$name
        }
        w <- w + 1
      } else if (s$aesthetics[1] == "colour") {
        c <- class(s)[1]
        if (c == "ScaleContinuous") {
          r$colorSpectrum2 <- s$palette(c(0, 0.25, 0.5, 0.75, 1))
          k <- TRUE
        } else if (c == "ScaleDiscrete") {
          p <- s$palette(1)
          if (!is.null(names(p))) {
            k <- names(p)
            names(p) <- NULL
            q <- list()
            for (j in 1:length(k)) {
              q[[k[j]]] <- p[j]
            }
            r$colorKey2 <- q
          }
          r$colors2 <- b[[3]]$scales$scales[[1]]$palette.cache
          if (length(b[[3]]$scales$scales[[1]]$breaks) > 0) {
            r$colorBreaks2 <- b[[3]]$scales$scales[[1]]$breaks
          }
        } else if (c == "ScaleBinned") {
          r$colors2 <- b[[3]]$scales$scales[[1]]$palette.cache
          r$colorBreaks2 <- b[[3]]$scales$scales[[1]]$breaks
          r$colorLimits2 <- b[[3]]$scales$scales[[1]]$limits
        }
        r$colorScale2 <- c
        if (!is.null(s$name) && length(s$name) > 0) {
          r$colorLegendTitle <- s$name
        }
        w <- w + 1
      } else if (s$aesthetics[1] == "x") {
        if (!is.null(s$limits)) {
          r$setMinX <- s$limits[1]
          r$setMaxX <- s$limits[2]
        } else {
          r$xAxisSetValues <- b$layout$panel_params[[1]]$x$breaks
          r$xAxisSetMinorValues <- b$layout$panel_params[[1]]$x$minor_breaks
          r$xAxisTicks <- length(b$layout$panel_params[[1]]$x$breaks)
        }
        if (!is.null(s$trans$name) && s$trans$name != "identity") {
          r$xAxisTransform <- stringr::str_replace(s$trans$name, "-", "")
        }
        if (is.character(s$name)) {
          r$xAxisTitle <- s$name
        }
      } else if (s$aesthetics[1] == "y") {
        if (!is.null(s$limits)) {
          r$setMinY <- s$limits[1]
          r$setMaxY <- s$limits[2]
        } else {
          r$yAxisSetValues <- b$layout$panel_params[[1]]$y$breaks
          r$yAxisSetMinorValues <- b$layout$panel_params[[1]]$y$minor_breaks
          r$yAxisTicks <- length(b$layout$panel_params[[1]]$y$breaks)
        }
        if (!is.null(s$trans$name) && s$trans$name != "identity") {
          r$yAxisTransform <- stringr::str_replace(s$trans$name, "-", "")
        }
        if (is.character(s$name)) {
          r$yAxisTitle <- s$name
        }
      } else if (s$aesthetics[1] == "pattern" || s$aesthetics[1] == "pattern_spacing" || s$aesthetics[1] == "pattern_angle") {
        r$colors <- list(unique(b$data[[1]]$fill))
      }
    }
    if (w == 1) {
      if ("colorSpectrum2" %in% names(r)) {
        r$colorSpectrum <- r$colorSpectrum2
        r$colorSpectrum2 <- NULL
      }
      if ("colorKey2" %in% names(r)) {
        r$colorKey <- r$colorKey2
        r$colorKey2 <- NULL
      }
      if ("colors2" %in% names(r)) {
        r$colors <- r$colors2
        r$colors2 <- NULL
      }
      if ("colorBreaks2" %in% names(r)) {
        r$colorBreaks <- r$colorBreaks2
        r$colorBreaks2 <- NULL
      }
      if ("colorLimits2" %in% names(r)) {
        r$colorLimits <- r$colorLimits2
        r$colorLimits2 <- NULL
      }
      if ("colorScale2" %in% names(r)) {
        r$colorScale <- r$colorScale2
        r$colorScale2 <- NULL
      }
    }
  }
  if ("colors" %in% names(r) || "colorSpectrum" %in% names(r)) {
    ## Nothing to do
  } else {
    n <- length(b[[3]]$scales$scales)
    k <- FALSE
    h <- colnames(b$data[[1]])
    if (n > 0) {
      for (i in 1:n) {
        if (!is.null(b[[3]]$scales$scales[[i]]$palette.cache)) {
          if (b[[3]]$scales$scales[[i]]$aesthetics[1] == "pattern") {
            r$patterns <- b[[3]]$scales$scales[[i]]$palette.cache
          } else {
            r$colors <- b[[3]]$scales$scales[[i]]$palette.cache
            k <- TRUE
            break
          }
        }
      }
    }
    if (!k) {
      r$colorScale <- "NoScale"
      cols <- list(unique(b$data[[1]]$fill))
      if (length(cols) == 1) {
        if (cols[1] == "NA") {
          cols <- list(unique(b$data[[1]]$colour))
          if (length(cols) == 1) {
            if (cols[1] == "NA") {
              cols <- list(unique(b$data[[1]]$color))
              if (length(cols) == 1) {
                r$cXscatterColor <- unique(b$data[[1]]$color)
              }
            } else {
              l <- sapply(o$layers, function(x) class(x$geom)[1])
              if ("GeomDumbbell" %in% l) {
                cl <- cols[1];
                cols <- c(cl, cl, cl)
              }
            }
          }
        }
      }
    }
    if ("colors" %in% names(r)) {
      ## Nothing to do
    } else {
      r$colors <- cols
    }
  }
  layers <- sapply(o$layers, function(x) class(x$geom)[1])
  for (i in 1:length(layers)) {
    l <- layers[i]
    if (regexpr("Pattern", l)[1] > 0) {
      if (l == "GeomViolinPattern") {
        r$data_pattern <- unique(b$data[[i]]$pattern)
        r$data_pattern_spacing <- list(unique(b$data[[i]]$pattern_spacing))
        r$data_pattern_angle <- list(unique(b$data[[i]]$pattern_angle))
        r$data_pattern_density <- list(unique(b$data[[i]]$pattern_density))
        r$data_pattern_fill <- list(unique(b$data[[i]]$pattern_fill))
        r$data_pattern_color <- list(unique(b$data[[i]]$pattern_colour))
      } else {
        r$data_pattern <- b$data[[i]]$pattern
        r$data_pattern_spacing <- b$data[[i]]$pattern_spacing
        r$data_pattern_angle <- b$data[[i]]$pattern_angle
        r$data_pattern_density <- b$data[[i]]$pattern_density
        r$data_pattern_fill <- b$data[[i]]$pattern_fill
        r$data_pattern_color <- b$data[[i]]$pattern_colour
      }
    }
  }
  tx <- as.character(b$layout$coord$trans$y)[1]
  ty <- as.character(b$layout$coord$trans$y)[1]
  if (!is.na(tx)) {
    r$xAxisTransform <- stringr::str_replace(tx, "-", "")
    r$xAxisTransformLinearTicks <- TRUE
  }
  if (!is.na(ty)) {
    r$yAxisTransform <- stringr::str_replace(ty, "-", "")
    r$yAxisTransformLinearTicks <- TRUE
  }
  ## Sizes
  n <- length(b$data)
  for (i in 1:n) {
    if (!is.null(b$data[[i]]$shape) && !is.null(b$data[[i]]$size)) {
      r$sizes <- floor(unique(ceiling(sort(b$data[[i]]$size)) * 3))
      break
    }
  }
  r
}

gg_coordinates <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- list()
  if (!is.null(o$coordinates$limits$x)) {
    r$setMinX <- o$coordinates$limits$x[1]
    r$setMaxX <- o$coordinates$limits$x[2]
  }
  if (!is.null(o$coordinates$limits$y)) {
    r$setMinY <- o$coordinates$limits$y[1]
    r$setMaxY <- o$coordinates$limits$y[2]
  }
  l <- c("r", "theta", "start", "end", "direction", "inner_radius", "arc")
  for (i in l) {
    if (!is.null(o$coordinates[[i]])) {
      r[[i]] <- o$coordinates[[i]]
    }
  }
  f <- class(o$coordinates)[1]
  if (f == "CoordFlip") {
    r$flip <- TRUE
  }
  r
}

gg_labels <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- list()
  l <- c("x", "y", "z", "title", "subtitle", "caption", "colour", "fill", "shape", "size")
  for (i in l) {
    if (!is.null(o$labels[[i]])) {
      if (i %in% c("title", "subtitle")) {
        r[[i]] <- as.character(o$labels[[i]])
      } else if (i == "caption") {
        r["citation"] <- as.character(o$labels[[i]])
      } else if (i %in% c("colour", "fill", "shape", "size")) {
        if (i == "colour" || i == "fill") {
          if (class(o$labels[[i]])[1] != "element_blank") {
            r["colorLegendTitle"] <- as.character(o$labels[[i]])
          }
        } else {
          r[[paste(i, "LegendTitle", sep = "")]] <- as.character(o$labels[[i]])
        }
      } else {
        r[[paste(i, "AxisTitle", sep = "")]] <- as.character(o$labels[[i]])
      }
    }
  }
  r
}

gg_mapping <- function(o, b) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- list()
  m <- c("x", "y", "z", "xmin", "xmax", "xend", "ymin", "ymax", "yend", "zmin", "zmax", "weight", "group", "colour", "fill", "size", "alpha", "linetype", "label", "vjust", "sample", "pattern")
  e <- TRUE
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      e <- FALSE
      l <- rlang::as_label(o$mapping[[i]])
      l <- stringr::str_replace(stringr::str_replace(stringr::str_replace(l, "factor\\(", ""), "\\)", ""), "as\\.", "")
      if (i == "colour") {
        r[["color"]] <- l
      } else if (i == "label") {
        r[[i]] <- b$data[[1]]$label
      } else {
        r[[i]] <- l
      }
    }
  }
  if (e) {
    gg_mapping(o$layers[[1]])
  } else {
    r
  }
}

gg_proc_layer <- function(o, idx, bld) {
  l <- o$layers[[idx]]
  r <- list()
  q <- as.vector(NULL)
  d <- as.list(gg_default_aes(class(l$geom)[1]))
  if (!is.null(l$mapping)) {
    atts <- ls(l$mapping)
    if (length(atts) > 0) {
      for (a in atts) {
        b <- rlang::as_label(l$mapping[[a]])
        f <- regexpr("factor", b)[1]
        s <- regexpr("after_", b)[1]
        t <- regexpr("stage", b)[1]
        g <- regexpr("cut_", b)[1]
        if (b == "...[[]]") {
          b <- a
        }
        if (s > 0 || t > 0) {
          next
        }
        if (g > 0) {
          p <- strsplit(b, split = "\\(")[[1]]
          p[2] <- stringr::str_replace(p[2], "\\)", "")
          w <- strsplit(p[2], split = ",")[[1]]
          b <- list()
          c <- list()
          c[[w[1]]] <- as.numeric(w[2])
          b[[p[1]]] <- c
          r[[a]] <- b
        } else if (f > 0) {
          b <- stringr::str_replace(stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", ""), "as\\.", "")
          q <- append(q, b)
          if (!(a %in% c("x", "y", "z"))) {
            if (a == "colour") {
              r[["color"]] <- b
            } else {
              r[[a]] <- b
            }
          }
        } else {
          if (a == "colour") {
            r[["color"]] <- b
          } else {
            r[[a]] <- b
          }
        }
      }
    }
  }
  prps <- c("aes_params", "geom_params", "stat_params", "position")
  skip <- c("compute_panel", "preserve", "setup_data", "setup_params", "super", "compute_layer", "orientation", "contour", "distribution", "length")
  skip2 <- c("na.rm", "reverse", "vjust")
  skip_values <- list(
    na.rm = FALSE,
    reverse = FALSE,
    vjust = 1
  )
  for (p in prps) {
    if (!is.null(l[[p]])) {
      atts <- ls(l[[p]])
      if (length(atts) > 0) {
        for (a in atts) {
          if (a %in% skip) {
            next
          }
          if (a %in% skip2 && (is.null(l[[p]][[a]]) || skip_values[a] == l[[p]][[a]])) {
            next
          }
          b <- l[[p]][[a]]
          if (!(missing(b)) && is.vector(b)) {
            f <- regexpr("factor", b)[1]
            if (is.character(f) && f > 0) {
              b <- stringr::str_replace(stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", ""), "as\\.", "")
            }
            if (is.null(r[[a]])) {
              if (a == "colour") {
                r[["color"]] <- b
              } else {
                r[[a]] <- b
              }
            }
          } else if (class(b)[1] == "formula") {
            dl <- bld$data[[idx]]
            r$formula <- list()
            r$formula$def <- deparse(b)
            if ("x" %in% colnames(dl) && "y" %in% colnames(dl)) {
              r$formula$x <- as.numeric(dl[["x"]])
              r$formula$y <- as.numeric(dl[["y"]])
            }
            if ("ymin" %in% colnames(dl) && "ymax" %in% colnames(dl)) {
              r$formula$ymin <- as.numeric(dl[["ymin"]])
              r$formula$ymax <- as.numeric(dl[["ymax"]])
              max <- bld$layout$panel_scales_y[[1]]$range$range[2]
              min <- bld$layout$panel_scales_y[[1]]$range$range[1]
              ext <- (max - min) * 0.05
              r$formula$minY <- min - ext
              r$formula$maxY <- max + ext
            }
          }
        }
      }
    }
  }
  if (!is.na(l$show.legend) && l$show.legend == FALSE) {
    r$showLegend <- FALSE
  }
  if (length(q) > 0) {
    r$stringVariableFactors <- unique(q)
    r$stringSampleFactors <- unique(q)
    r$asVariableFactors <- unique(q)
    r$asSampleFactors <- unique(q)
  }
  pos <- class(l$position)[1]
  pos <- ifelse(pos == "PositionJitter", "jitter", ifelse(pos == "PositionFill", "fill", ifelse(pos == "PositionStack", "stack", ifelse(pos == "PositionDodge", "dodge", "normal"))))
  if (pos != "normal") {
    r$position <- pos
  }
  if (class(l$stat)[1] == "StatSina") {
    r$sina <- TRUE
  } else if (class(l$stat)[1] == "StatStreamDensity") {
    r$stream <- TRUE
  }
  if (is.data.frame(l$data)) {
    dl <- bld$data[[idx]]
    r$data <- list()
    if ("x" %in% colnames(dl) && "y" %in% colnames(dl)) {
      r$data$x <- as.numeric(dl[["x"]])
      r$data$y <- as.numeric(dl[["y"]])
      r$data$label <- as.character(dl[["label"]])
      r$data$color <- as.character(dl[["colour"]])
      r$data$fill <- as.character(dl[["fill"]])
      r$data$size <- as.character(dl[["size"]])
      r$data$shape <- as.character(dl[["shape"]])
    } else {
      dl <- l$data
      nd <- data.frame(lapply(dl, as.character), stringsAsFactors = FALSE)
      nd <- tibble::add_column(nd, Id = row.names(dl), .before = 1)
      nd <- tibble::add_row(nd, .before = 1)
      nd[1, ] <- colnames(nd)
      r$data <- as.matrix(nd)
    }
  }
  prps <- c("colour", "fill", "alpha")
  for (p in prps) {
    #if ((!(p %in% names(r))) && !is.null(d[[p]])) {
    if ((!(p %in% names(r))) && !is.null(d[[p]]) && rlang::as_label(o$mapping[[p]]) == "NULL") {
      if (p == "colour") {
        if (!("color" %in% names(r))) {
          r$color <- gsub("\"", "", d[[p]])
        }
      } else {
        r[[p]] <- gsub("\"", "", d[[p]])
      }
    } else if (p == "shape" && !is.null(d[[p]])) {
      if (d[[p]] == 0) {
        r$shape <- "square"
      } else if (d[[p]] == 1) {
        r$shape <- "circle"
      } else if (d[[p]] == 2) {
        r$shape <- "triangle"
      } else if (d[[p]] == 3) {
        r$shape <- "plus"
      } else if (d[[p]] == 4) {
        r$shape <- "minus"
      } else if (d[[p]] == 5) {
        r$shape <- "diamond"
      } else if (d[[p]] == 6) {
        r$shape <- "triangle2"
      } else if (d[[p]] == 7) {
        r$shape <- "hexagon"
      } else if (d[[p]] == 8) {
        r$shape <- "star"
      } else if (d[[p]] == 9) {
        r$shape <- "octagon"
      } else if (d[[p]] == 10) {
        r$shape <- "pentagon"
      } else if (d[[p]] == 11) {
        r$shape <- "mdavid"
      } else if (d[[p]] == 12) {
        r$shape <- "drop"
      } else if (d[[p]] == 13) {
        r$shape <- "circleOpen"
      } else if (d[[p]] == 14) {
        r$shape <- "square"
      } else if (d[[p]] == 15) {
        r$shape <- "square"
      } else if (d[[p]] == 16) {
        r$shape <- "circle"
      } else if (d[[p]] == 17) {
        r$shape <- "triangle"
      } else if (d[[p]] == 18) {
        r$shape <- "diamond"
      } else if (d[[p]] == 19) {
        r$shape <- "circle"
      } else if (d[[p]] == 20) {
        r$shape <- "circle"
      } else if (d[[p]] == 21) {
        r$shape <- "circleOpen"
      } else if (d[[p]] == 22) {
        r$shape <- "square"
      } else if (d[[p]] == 23) {
        r$shape <- "diamond"
      } else if (d[[p]] == 24) {
        r$shape <- "triangle"
      } else if (d[[p]] == 25) {
        r$shape <- "triangle2"
      } else {
        r$shape <- "circle"
      }
    }
  }
  r
}

data_to_matrix <- function(o, b) {
  layers <- sapply(o$layers, function(x) class(x$geom)[1])
  m <- c("x", "y", "z", "label", "colour", "fill", "size")
  d <- o$data
  nd <- data.frame(lapply(d, as.character), stringsAsFactors = FALSE, check.names = FALSE)
  k <- length(row.names(nd))
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      q <- rlang::as_label(o$mapping[[i]])
      if (q %in% colnames(o$data) || q == "1") {
        ## Nothing to do
      } else if (i == "label" || i == "colour" || i == "fill") {
        u <- as.character(b$data[[1]][[i]])
        if (length(u) == k) {
          nd[i] <- u
        }
      } else {
        u <- as.numeric(b$data[[1]][[i]])
        if (length(u) == k) {
          nd[q] <- u
        }
      }
    }
  }
  if (length(nd) == 0) {
    nd
  } else {
    for (i in 1:length(layers)) {
      q <- class(o$layers[[i]]$geom)[1]
      if (q != "GeomBlank") {
        for (j in m) {
          if (!is.null(o$layers[[i]]$mapping[[j]])) {
            q <- rlang::as_label(o$layers[[i]]$mapping[[j]])
            q <- gsub("\"", "", q)
            if (q %in% colnames(o$data)) {
              ## Nothing to do
            } else if (j == "label" || j == "colour" || j == "fill") {
              u <- as.character(b$data[[1]][[j]])
              if (length(u) == length((nd[[1]]))) {
                nd[q] <- u
              }
            } else {
              u <- as.numeric(b$data[[i]][[j]])
              if (length(u) == length((nd[[1]]))) {
                nd[q] <- u
              }
            }
          }
        }
      }
    }
    nd <- tibble::add_column(nd, Id = row.names(d), .before = 1)
    nd <- tibble::add_row(nd, .before = 1)
    nd[1, ] <- colnames(nd)
    as.matrix(nd)
  }
}
