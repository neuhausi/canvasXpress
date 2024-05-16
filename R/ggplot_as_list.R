#' Converts a ggplot object to a list that can be used by CanvasXpress.
#' @export
ggplot.as.list <- function(o, ...) {

  if (!(requireNamespace("ggplot2", quietly = TRUE))) {
    stop("The ggplot2 package is required to use this functionality.")
  } else if (!("ggplot") %in% class(o)) {
    stop("Not a ggplot object")
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
  } else {
    cx <- gg_cxplot(o, "canvas", ...)
  }

  jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)

}

gg_cxplot <- function(o, target, ...) {

  config <- list(...)

  bld <- ggplot2::ggplot_build(o)

  cx <- list(
    renderTo = target,
    data     = data_to_matrix(o, bld),
    aes      = gg_mapping(o, bld),
    scales   = gg_scales(o, bld),
    coords   = gg_coordinates(o),
    theme    = gg_theme(o),
    labels   = gg_labels(o),
    facet    = gg_facet(o),
    order    = gg_order(o, bld),
    layers   = as.vector(NULL),
    geoms    = as.vector(NULL),
    isGGPlot = TRUE,
    config   = config,
    isR      = TRUE)

  layers <- sapply(o$layers, function(x) class(x$geom)[1])

  proto_stat <- sapply( sapply( o$layers, "[[", "stat"), function(x) class(x)[[1]][1])

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
    } else if (l == "GeomText") {
      if (!("color" %in% names(p))) {
        p$color <- bld$data[[i]]$colour
      }
    }
    p$stat <- proto_stat[i]
    q <- list()
    q[[l]]    <- p
    cx$geoms  <- append(cx$geoms, l)
    cx$layers <- append(cx$layers, q)
  }

  cx

}

# -- internal helper functions -- #

gg_default_aes <- function(geom_name) {
  geom_obj <- get(geom_name, envir = asNamespace("ggplot2"))
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
  tryCatch(getFromNamespace(x, "ggplot2"), error = function(e) NULL)
}

gg_order <- function(o, b) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- Filter(Negate(is.null), sapply(o$data, levels))
  r$xLabels <- as.character(b$layout$panel_params[[1]]$x$get_labels())
  r$yLabels <- as.character(b$layout$panel_params[[1]]$y$get_labels())
  r
}

gg_facet <- function (o) {
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
  s <- as.numeric(e[["text"]][["size"]])
  atts <- ls(e)
  for (a in atts) {
    if (is.list(e[[a]])) {
      atts2 <- ls(e[[a]])
      if (length(atts2) > 0) {
        for (b in atts2) {
          if (b != "inherit.blank") {
            k <- paste(a, b, sep = ".")
            c <- class(e[[a]][[b]])[1]
            v <- as.character(e[[a]][[b]])
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
      }  else {
        t[[a]] <- class(e[[a]])[1]
      }
    } else {
      v <- as.character(e[[a]])
      c <- class(e[[a]])[1]
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
  if (n > 0) {
    for (i in 1:n) {
      s <- o$scales$scales[[i]]
      if (s$aesthetics[1] == "colour" || s$aesthetics[1] == "fill") {
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
          if (length (b[[3]]$scales$scales[[1]]$breaks) > 0) {
            r$colorBreaks <- b[[3]]$scales$scales[[1]]$breaks
          }
        } else if (c == "ScaleBinned") {
          r$colors <- b[[3]]$scales$scales[[1]]$palette.cache
          r$colorBreaks <- b[[3]]$scales$scales[[1]]$breaks
          r$colorLimits <- b[[3]]$scales$scales[[1]]$limits
        }
        r$colorScale <- c
      } else if (s$aesthetics[1] == "x") {
        if (!is.null(s$limits)) {
          r$setMinX <- s$limits[1]
          r$setMaxX <- s$limits[2]
        }
        if (!is.null(s$trans$name) && s$trans$name != "identity") {
          r$xAxisTransform <- stringr::str_replace(s$trans$name, "-", "")
        }
        if (is.character(s$name)) {
          r$xAxisTitle <- s$name
        }
        r$xAxisTicks <- length(b$layout$panel_params[[1]]$x$breaks)
      } else if (s$aesthetics[1] == "y") {
        if (!is.null(s$limits)) {
          r$setMinY <- s$limits[1]
          r$setMaxY <- s$limits[2]
        }
        if (!is.null(s$trans$name) && s$trans$name != "identity") {
          r$yAxisTransform <- stringr::str_replace(s$trans$name, "-", "")
        }
        if (is.character(s$name)) {
          r$yAxisTitle <- s$name
        }
        r$yAxisTicks <- length(b$layout$panel_params[[1]]$y$breaks)
      }
    }
  }
  if ("colors" %in% names(r) || "colorSpectrum" %in% names(r)) {
    ## Nothing to do
  } else {
    n <- length(b[[3]]$scales$scales)
    k <- FALSE
    if (n > 0) {
      for (i in 1:n) {
        if (!is.null(b[[3]]$scales$scales[[i]]$palette.cache)) {
          r$colors <- b[[3]]$scales$scales[[i]]$palette.cache
          k <- TRUE
          break
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
  r
}

gg_coordinates <- function (o) {
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
  r
}

gg_labels <- function (o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  r <- list()
  l <- c("x", "y", "z", "title", "subtitle", "caption", "colour", "shape", "size")
  for (i in l) {
    if (!is.null(o$labels[[i]])) {
      if (i %in% c("title", "subtitle")) {
        r[[i]] <- o$labels[[i]]
      } else if (i == "caption") {
        r["citation"] <- o$labels[[i]]
      } else if (i %in% c("colour", "shape", "size")) {
        if (i == "colour") {
          r["colorLegendTitle"] <- o$labels[[i]]
        } else {
          r[[paste(i, "LegendTitle", sep = "")]] <- o$labels[[i]]
        }
      } else {
        r[[paste(i, "AxisTitle", sep = "")]] <- o$labels[[i]]
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
  m <- c("x", "y", "z", "xmin", "xmax", "ymin", "ymax", "zmin", "zmax", "weight", "group", "colour", "fill", "size", "alpha", "linetype", "label", "vjust", "sample")
  e <- TRUE
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      e <- FALSE
      l <- rlang::as_label(o$mapping[[i]])
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

gg_proc_layer <- function (o, idx, bld) {
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
        if (s > 0 || t > 0) {
          next
        }
        if (g > 0) {
          p <-  strsplit(b, split = "\\(" )[[1]]
          p[2] <- stringr::str_replace(p[2], "\\)", "")
          w <- strsplit(p[2], split = ",")[[1]]
          b <- list()
          c <- list()
          c[[w[1]]] <- as.numeric(w[2])
          b[[p[1]]] <- c
          r[[a]] <- b
        } else if (f > 0) {
          b <- stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", "")
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
          if (is.vector(b)) {
            f <- regexpr("factor", b)[1]
            if (is.character(f) && f > 0) {
              b <- stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", "")
            }
            if (is.null(r[[a]])) {
              if (a == "colour") {
                r[["color"]] <- b
              } else {
                r[[a]] <- b
              }
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
    } else {
      dl <- l$data
      nd <- data.frame(lapply(dl, as.character), stringsAsFactors = FALSE)
      nd <- tibble::add_column(nd, Id = row.names(dl), .before = 1)
      nd <- tibble::add_row(nd, .before = 1)
      nd[1,] <- colnames(nd)
      r$data <- as.matrix(nd)
    }
  }
  prps <- c("colour", "fill", "alpha")
  for (p in prps) {
    if ((!(p %in% names(r))) && !is.null(d[[p]])) {
      if (p == "colour") {
        if (!("color" %in% names(r))) {
          r$color <- gsub("\"", "", d[[p]])
        }
      } else if (p == "shape") {
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
      } else {
        r[[p]] <- gsub("\"", "", d[[p]])
      }
    }
  }
  r
}

data_to_matrix <- function(o, b) {
  layers <- sapply(o$layers, function(x) class(x$geom)[1])
  m <- c("x", "y", "z")
  d <- o$data
  nd <- data.frame(lapply(d, as.character), stringsAsFactors = FALSE, check.names = FALSE)
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      q <- rlang::as_label(o$mapping[[i]])
      if (q %in% colnames(o$data) || q == "1") {
        ## Nothing to do
      } else if (i == "label") {
        u <- as.character(b$data[[1]][[i]])
        nd[i] <- u
      } else {
        u <- as.numeric(b$data[[1]][[i]])
        nd[q] <- u
      }
    }
  }
  for (i in 1:length(layers)) {
    l <- layers[i]
    q <- class(o$layers[[i]]$geom)[1]
    if (q != "GeomBlank") {
      for (j in m) {
        if (!is.null(o$layers[[i]]$mapping[[j]])) {
          q <- rlang::as_label(o$layers[[i]]$mapping[[j]])
          if (q %in% colnames(o$data)) {
            ## Nothing to do
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
  nd[1,] <- colnames(nd)
  as.matrix(nd)
}
