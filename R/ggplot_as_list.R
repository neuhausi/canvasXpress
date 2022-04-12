ggplot.as.list <- function(o) {

    if (!(requireNamespace("ggplot2", quietly = TRUE))) {
        stop("The ggplot2 package is required to use this functionality.")
    } else if (!("ggplot") %in% class(o)) {
        stop("Not a ggplot object")
    }

    target <- "canvas"

    cx <- list(
        renderTo = target,
        data     = data_to_matrix(o$data),
        aes      = gg_mapping(o),
        scales   = gg_scales(o),
        theme    = gg_theme(o),
        labels   = gg_labels(o),
        facet    = gg_facet(o),
        layers   = as.vector(NULL),
        geoms    = as.vector(NULL),
        isGGPlot = TRUE,
        isR      = TRUE)

    layers <- sapply(o$layers, function(x) class(x$geom)[1])

    proto_geom <- sapply( sapply( o$layers, "[[", "geom"), function(x) class(x)[[1]][1] )
    proto_stat <- sapply( sapply( o$layers, "[[", "stat"), function(x) class(x)[[1]][1] )

    for (i in 1:length(layers)) {
        l <- layers[i]
        p <- gg_proc_layer(o$layers[[i]])
        if ((l == "GeomTile") && (proto_stat[i] == "StatBin2d")) {
            l = "GeomBin2d"
        } else if ((l == "GeomPoint") && !is.null(p$position) && (p$position == "jitter")) {
            l = "GeomJitter"
        } else if ((l == "GeomBar") && (proto_stat[i] == "StatBin")) {
            l = "GeomHistogram"
        } else if ((l == "GeomPath") && (proto_stat[i] == "StatQqLine")) {
            l = "GeomQqLine";
        } else if ((l == "GeomPoint") && (proto_stat[i] == "StatQq")) {
            l = "GeomQq";
        }
        q <- list()
        q[[l]]    <- p
        cx$geoms  <- append(cx$geoms, l)
        cx$layers <- append(cx$layers, q)
    }

    jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)
}



# -- internal helper functions -- #

gg_facet <- function (o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  f = o$facet$params$facets
  if(!is.null(f)) {
    f = list(
      facet = ls(f),
      facetLevels = sort(unique(o$data[[ls(f)]]))
    )
    if (!is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetCols = o$facet$params$ncol
      f$facetRows = o$facet$params$nrow
    } else if (is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetRows = o$facet$params$nrow
      f$facetCols = ceiling(length(f$facetLevels) / f$facetRows)
    } else if (!is.null(o$facet$params$ncol) && is.null(o$facet$params$nrow)) {
      f$facetCols = o$facet$params$ncol
      f$facetRows = ceiling(length(f$facetLevels) / f$facetCols)
    } else {
      if (length(f$facetLevels) < 4) {
        f$facetRows = 1
        f$facetCols = length(f$facetLevels)
      } else {
        f$facetCols = ceiling(sqrt(length(f$facetLevels)))
        f$facetRows = ceiling(length(f$facetLevels) / f$facetCols)
      }
    }
    f$facetTopology = paste(f$facetRows, 'X', f$facetCols, sep = '')
  }
  f
}

gg_theme <- function(o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  t = list()
  atts = ls(o$theme)
  if (length(atts) > 0) {
    for (a in atts) {
      if (is.list(o$theme[[a]])) {
        atts2 = ls(o$theme[[a]])
        for (b in atts2) {
          v = as.character(o$theme[[a]][[b]])
          if (length(v) > 0) {
            t[[paste(a,b,sep=".")]] = v
          }
        }
      } else {
        v = as.character(o$theme[[a]])
        if (length(v) > 0) {
          t[[a]] = v
        }
      }
    }
  }
  t
}

gg_xscale <- function(o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  n = length(o$scales$scales)
  r = FALSE
  if (n > 0) {
    r = list(
      setMinX = o$scales$scales[[1]]$limits[1],
      setMaxX = o$scales$scales[[1]]$limits[2]
    )
  }
  r
}

gg_yscale <- function(o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  n = length(o$scales$scales)
  r = FALSE
  if (n > 1) {
    r = list(
      setMinY = o$scales$scales[[2]]$limits[1],
      setMaxY = o$scales$scales[[2]]$limits[2]
    )
  }
  r
}

gg_scales <- function (o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  r = list();
  x = gg_xscale(o)
  y = gg_yscale(o)
  if (!isFALSE(x)) {
    r$setMinX = x$setMinX
    r$setMaxX = x$setMaxX
  }
  if (!isFALSE(y)) {
    r$setMinY = y$setMinY
    r$setMaxY = y$setMaxY
  }
  r
}

gg_labels <- function (o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  r = list();
  l = c('x', 'y', 'z', 'title', 'subtitle')
  for (i in l) {
    if (!is.null(o$labels[[i]])) {
      if (i %in% c('title', 'subtitle')) {
        r[[i]] = o$labels[[i]]
      } else {
        r[[paste(i, 'AxisTitle', sep='')]] = o$labels[[i]]
      }
    }
  }
  r
}

gg_mapping <- function(o) {
  if (missing(o)) {
    o = ggplot2::last_plot()
  }
  r = list();
  m = c('x', 'y', 'z', 'weight', 'group', 'colour', 'fill', 'size', 'alpha', 'linetype', 'label', 'vjust', 'sample')
  s = as.vector(NULL)
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      l = rlang::as_label(o$mapping[[i]])
      f = regexpr("factor", l)[1]
      if (f > 0) {
        l = stringr::str_replace(stringr::str_replace(l, "factor\\(", ""), "\\)", "")
        s = append(s , l)
        if (!(i %in% c('x', 'y', 'z'))) {
          if (i == 'colour') {
            r[["color"]] = l
          } else {
            r[[i]] = l
          }
        } else {
          r[[i]] = l
        }
      } else {
        if (i == 'colour') {
          r[["color"]] = l
        } else {
          r[[i]] = l
        }
      }
    }
  }
  if (length(s) > 0) {
    r$stringVariableFactors = unique(s)
    r$stringSampleFactors = unique(s)
    r$asVariableFactors = unique(s)
    r$asSampleFactors = unique(s)
  }
  r
}

gg_proc_layer <- function (l) {
  r = list()
  q = as.vector(NULL)
  if (!is.null(l$mapping)) {
    atts = ls(l$mapping)
    if (length(atts) > 0) {
      for (a in atts) {
        b = rlang::as_label(l$mapping[[a]])
        f = regexpr("factor", b)[1]
        s = regexpr("after_", b)[1]
        t = regexpr("stage", b)[1]
        g = regexpr("cut_", b)[1]
        if (s > 0 || t > 0) {
          next
        }
        if (g > 0) {
          p =  strsplit(b, split = '\\(' )[[1]]
          p[2] = stringr::str_replace(p[2], "\\)", "")
          w = strsplit(p[2], split = ",")[[1]]
          b = list()
          c = list()
          c[[w[1]]] = as.numeric(w[2])
          b[[p[1]]] = c
          r[[a]] = b
        } else if (f > 0) {
          b = stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", "")
          q = append(q, b)
          if (!(a %in% c('x', 'y', 'z'))) {
            if (a == 'colour') {
              r[["color"]] = b
            } else {
              r[[a]] = b
            }
          }
        } else {
          if (a == 'colour') {
            r[["color"]] = b
          } else {
            r[[a]] = b
          }
        }
      }
    }
  }
  prps = c('aes_params', 'geom_params', 'stat_params', 'position')
  skip = c('compute_panel', 'preserve', 'setup_data', 'setup_params', 'super', 'compute_layer', 'orientation', 'contour', 'distribution', 'length')
  skip2 = c("na.rm", "reverse", "vjust")
  skip_values = list(
    na.rm = FALSE,
    reverse = FALSE,
    vjust = 1
  )
  for (p in prps) {
    if (!is.null(l[[p]])) {
      atts = ls(l[[p]])
      if (length(atts) > 0) {
        for (a in atts) {
          if (a %in% skip) {
            next
          }
          if (a %in% skip2 && (is.null(l[[p]][[a]]) || skip_values[a] == l[[p]][[a]])) {
            next
          }
          b = l[[p]][[a]]
          f = regexpr("factor", b)[1]
          if (is.character(f) && f > 0) {
            b = stringr::str_replace(stringr::str_replace(b, "factor\\(", ""), "\\)", "")
          }
          if (is.null(r[[a]])) {
            if (a == 'colour') {
              r[["color"]] = b
            } else {
              r[[a]] = b
            }
          }
        }
      }
      if ('binwidth' %in% atts) {
        r$geomHistogram = TRUE
      }
    }
  }
  if (length(q) > 0) {
    r$stringVariableFactors = unique(q)
    r$stringSampleFactors = unique(q)
    r$asVariableFactors = unique(q)
    r$asSampleFactors = unique(q)
  }
  pos = class(l$position)[1]
  pos = ifelse(pos == 'PositionJitter', 'jitter', ifelse(pos == 'PositionFill', "fill", ifelse(pos == "PositionStack", 'stack', 'normal')))
  if (pos != 'normal') {
    r$position = pos
  }
  if (is.data.frame(l$data)) {
    r$data = data_to_matrix(l$data)
  }
  r
}

data_to_matrix <- function(d) {
  d = data.frame(lapply(d, as.character), stringsAsFactors = FALSE)
  nd = tibble::add_column(d, Id = row.names(d), .before = 1)
  nd = tibble::add_row(nd, .before = 1)
  nd[1,] = c("Id", colnames(d))
  as.matrix(nd)
}
