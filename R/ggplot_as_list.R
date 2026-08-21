#' Converts a ggplot object to a list that can be used by CanvasXpress.
#'
#' @param o   the ggplot object
#' @param ... additional parameters to the function
#'
#' @export ggplot.as.list
#' @name ggplot.as.list
ggplot.as.list <- function(o, ...) { # nolint: object_name_linter.

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
    for (i in seq_len(l)) {
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
    ## Find the longest in the data frame which will be used to calculate
    ## the margins
    v <- stats::na.omit(unlist(lapply(d, as.character)))
    z <- if (length(v) > 0) v[which.max(nchar(v))] else ""
    cx$longestString <- as.character(unlist(z))
    if (!is.null(c)) {
      cx$cols <- c
    }
    if (!is.null(r)) {
      cx$rows <- r
    }
    p <- list()
    for (i in seq_len(l)) {
      t <- paste("canvas", i, sep = "-")
      p[[i]] <- gg_cxplot(o$plots[[i]], t)
      p[[i]]$isGGMatrix <- cx$longestString
    }
    cx$datasets <- p
  } else {
    cx <- gg_cxplot(o, "canvas", ...)
  }

  jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)
}

# nolint start: commented_code_linter.
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
# nolint end

gg_plotmath_to_text <- function(x) {
  # Convert a plotmath / bquote() label (as used by EnhancedVolcano for its axis
  # titles and legend labels, e.g. bquote(~-Log[10] ~ italic(P))) into HTML that
  # CanvasXpress renders directly: subscripts become <sub>..</sub>, superscripts
  # <sup>..</sup> and font-face wrappers <i>/<b>, so "-Log[10] italic(P)" shows as
  # "-Log<sub>10</sub><i>P</i>" instead of the raw "~~Log[10]P" that as.character()
  # produced. Plain strings pass through unchanged.
  if (is.null(x)) {
    return(x)
  }
  if (is.expression(x)) {
    # An expression() vector (e.g. labs(y = expression("MIC (" * mu * ...))) deparses
    # WITH its "expression(...)" wrapper; unwrap to the inner language so the wrapper
    # does not survive into the label. Multi-element expressions keep only the first.
    s <- if (length(x) >= 1) paste(deparse(x[[1]]), collapse = " ") else ""
  } else if (is.call(x) || is.symbol(x) || is.language(x)) {
    s <- paste(deparse(x), collapse = " ")
  } else {
    s <- paste(as.character(x), collapse = " ")
  }
  # font-face wrappers -> HTML tags (italic/bold; plain unwraps to its text)
  s <- gsub("bolditalic\\s*\\(([^()]*)\\)", "<b><i>\\1</i></b>", s)
  s <- gsub("italic\\s*\\(([^()]*)\\)", "<i>\\1</i>", s)
  s <- gsub("bold\\s*\\(([^()]*)\\)", "<b>\\1</b>", s)
  s <- gsub("plain\\s*\\(([^()]*)\\)", "\\1", s)
  # subscripts [n] and superscripts ^n -> HTML. The superscript may carry a sign
  # and be parenthesised (plotmath "ml"^-1 deparses as ^-1), e.g. ml<sup>-1</sup>.
  s <- gsub("\\[([0-9A-Za-z]+)\\]", "<sub>\\1</sub>", s)
  s <- gsub("\\^\\(?(-?[0-9A-Za-z]+)\\)?", "<sup>\\1</sup>", s)
  s <- gsub("\"", "", s)          # drop quotes around plotmath string literals
  s <- gsub("[~*]", " ", s)       # spacing / juxtaposition operators -> space
  # plotmath greek names render as their glyphs (e.g. mu -> the micro sign in a
  # unit like "mu g"); map the common ones once the juxtaposition tokens are gone.
  greek <- c(mu = "\u03bc", alpha = "\u03b1", beta = "\u03b2", gamma = "\u03b3",
           delta = "\u03b4", sigma = "\u03c3", lambda = "\u03bb", tau = "\u03c4",
           theta = "\u03b8", phi = "\u03c6", omega = "\u03c9", pi = "\u03c0",
           rho = "\u03c1", chi = "\u03c7", eta = "\u03b7", kappa = "\u03ba",
           epsilon = "\u03b5")
  for (nm in names(greek)) {
    s <- gsub(paste0("\\b", nm, "\\b"), greek[[nm]], s)
  }
  s <- gsub("\\s+", " ", s)       # collapse runs of whitespace
  s <- gsub("\\(\\s+", "(", s)    # tidy spaces just inside parentheses
  s <- gsub("\\s+\\)", ")", s)
  trimws(s)
}

gg_apply_scale_labels <- function(o, cx) {
  # Apply a discrete colour/fill scale's custom labels to the legend. ggplot keeps
  # the factor's raw codes in the data and shows the scale labels only in the
  # legend (e.g. EnhancedVolcano's NS / FC / P / FC_P -> "NS" / "Log2 FC" /
  # "p-value" / "p-value and log2 FC"). CanvasXpress has no separate legend-label
  # channel for a colour factor, so the codes are rewritten to the (plotmath ->
  # HTML) labels in the data column, the colorKey and the order together, keeping
  # value/colour/legend consistent.
  if (length(o$scales$scales) == 0) {
    return(cx)
  }
  # Colour variable: the annotation a layer (or the plot) maps to colour/fill.
  color_var <- NULL
  candidates <- character(0)
  for (layer in cx$layers) {
    for (key in c("fill", "color", "colour")) {
      if (!is.null(layer[[key]])) {
        candidates <- c(candidates, layer[[key]])
      }
    }
  }
  for (key in c("fill", "color", "colour")) {
    if (!is.null(cx$aes[[key]])) {
      candidates <- c(candidates, cx$aes[[key]])
    }
  }
  for (candidate in unique(candidates)) {
    if (isTRUE(cx$meta[[candidate]])) {
      color_var <- candidate
      break
    }
  }
  if (is.null(color_var)) {
    return(cx)
  }
  for (s in o$scales$scales) {
    if (!(s$aesthetics[1] %in% c("colour", "color", "fill"))) {
      next
    }
    if (class(s)[1] != "ScaleDiscrete") {
      next
    }
    # Codes come from the palette names (the same source colorKey uses), so the
    # two stay aligned; labels come from the scale's raw labels field (get_labels()
    # is empty until the scale is trained). A waiver means "use the codes" -> skip.
    codes <- tryCatch(names(s$palette(1)), error = function(e) NULL)
    labels_raw <- s$labels
    if (is.null(codes) || is.null(labels_raw) ||
          inherits(labels_raw, "waiver") || is.function(labels_raw)) {
      next
    }
    labels <- vapply(seq_along(labels_raw),
                     function(k) gg_plotmath_to_text(labels_raw[[k]]),
                     character(1))
    if (length(codes) != length(labels)) {
      next
    }
    valid <- codes != labels
    if (!any(valid)) {
      next
    }
    label_map <- stats::setNames(labels[valid], codes[valid])
    remap <- function(values) {
      mapped <- label_map[as.character(values)]
      ifelse(is.na(mapped), as.character(values), unname(mapped))
    }
    # Data column (row 1 of the matrix is the header).
    header <- cx$data[1, ]
    column <- match(color_var, header)
    if (!is.na(column) && nrow(cx$data) > 1) {
      cx$data[2:nrow(cx$data), column] <- remap(cx$data[2:nrow(cx$data), column])
    }
    # Level order for the legend.
    if (!is.null(cx$order[[color_var]])) {
      cx$order[[color_var]] <- remap(cx$order[[color_var]])
    }
    # colorKey / colorKey2 map value -> colour; rekey to the labels.
    for (key_name in c("colorKey", "colorKey2")) {
      key_obj <- cx$scales[[key_name]]
      if (!is.null(key_obj)) {
        renamed <- list()
        for (code in names(key_obj)) {
          renamed[[remap(code)]] <- key_obj[[code]]
        }
        cx$scales[[key_name]] <- renamed
      }
    }
  }
  cx
}

gg_apply_x_scale_labels <- function(o, cx) {
  # A continuous positional x scale carrying explicit break labels (e.g.
  # scale_x_continuous(breaks = c(1, 2), labels = c("control", "recent"))) used as
  # the DISCRETE axis of a 1D plot (boxplot/violin/bar/dotplot) shows those labels
  # in ggplot, but CanvasXpress groups by the raw numeric x and would print the
  # break numbers (1, 2). CanvasXpress has no separate axis-label channel for a
  # grouping factor, so - exactly as gg_apply_scale_labels does for a colour scale
  # - the numeric codes are rewritten to the labels in the data column and the
  # order, keeping the axis category names in sync. Guarded so it fires only for a
  # genuinely discrete axis: every x value must be one of the breaks (a continuous
  # scatter keeps its numeric x untouched).
  breaks <- cx$scales$xAxisSetValues
  labels <- cx$order$xLabels
  if (is.null(breaks) || is.null(labels) ||
        length(breaks) < 1 || length(breaks) != length(labels)) {
    return(cx)
  }
  oned <- c("GeomBoxplot", "GeomViolin", "GeomBar", "GeomCol", "GeomDotplot")
  if (!any(cx$geoms %in% oned)) {
    return(cx)
  }
  xvar <- cx$aes$x
  if (is.null(xvar)) {
    for (layer in cx$layers) {
      if (!is.null(layer$x) && is.character(layer$x)) {
        xvar <- layer$x
        break
      }
    }
  }
  if (is.null(xvar) || length(xvar) != 1) {
    return(cx)
  }
  header <- cx$data[1, ]
  column <- match(xvar, header)
  if (is.na(column) || nrow(cx$data) <= 1) {
    return(cx)
  }
  break_codes <- as.character(breaks)
  labels_chr  <- as.character(labels)
  if (all(break_codes == labels_chr)) {
    return(cx)
  }
  values <- cx$data[2:nrow(cx$data), column]
  uniq <- unique(values[!is.na(values) & values != ""])
  if (length(uniq) == 0 || !all(uniq %in% break_codes)) {
    return(cx)
  }
  label_map <- stats::setNames(labels_chr, break_codes)
  remap <- function(v) {
    mapped <- label_map[as.character(v)]
    ifelse(is.na(mapped), as.character(v), unname(mapped))
  }
  cx$data[2:nrow(cx$data), column] <- remap(values)
  cx$order[[xvar]] <- labels_chr
  # The axis is categorical now; drop the continuous tick spec so CanvasXpress
  # does not overlay numeric ticks on the relabelled categories.
  cx$scales$xAxisSetValues <- NULL
  cx$scales$xAxisSetMinorValues <- NULL
  cx$scales$xAxisTicks <- NULL
  cx
}

gg_resolve_factor_aes <- function(o) {
  # An aesthetic wrapped in factor()/as.factor()/ordered() makes a numeric column
  # discrete for the plot (e.g. fill = factor(am)). ggplot.as.list strips the
  # wrapper to the bare column name so the aes matches the data column, but the
  # raw column stays numeric - so CanvasXpress would treat it as continuous (a
  # numeric colour legend) and mis-sort its values (am 0 rendered as null).
  # Coerce those columns to real factors up front so meta marks them discrete and
  # their levels/order carry through as they do in ggplot.
  coercions <- c("factor", "as.factor", "ordered", "as.ordered")
  mappings <- list(o$mapping)
  for (layer in o$layers) {
    if (!is.null(layer$mapping)) {
      mappings <- c(mappings, list(layer$mapping))
    }
  }
  # Columns used BARE (an unwrapped plain symbol) versus WRAPPED in a coercion.
  # A column used both ways - e.g. aes(factor(cyl), mpg) for the discrete axis and
  # geom_violin(aes(fill = cyl)) for a continuous fill - must stay numeric: coercing
  # it would wrongly turn the continuous fill into a discrete one. So only coerce a
  # wrapped column that is never used bare.
  bare <- character(0)
  wrapped <- character(0)
  for (mapping in mappings) {
    for (name in names(mapping)) {
      q <- mapping[[name]]
      if (!rlang::is_quosure(q)) {
        next
      }
      expr <- rlang::quo_get_expr(q)
      if (is.symbol(expr)) {
        bare <- c(bare, rlang::as_label(expr))
      } else if (is.call(expr) && length(expr) >= 2 &&
                   as.character(expr[[1]])[1] %in% coercions) {
        wrapped <- c(wrapped, rlang::as_label(expr[[2]]))
      }
    }
  }
  for (col in unique(wrapped)) {
    if (col %in% bare) {
      next
    }
    if (col %in% colnames(o$data) && !is.factor(o$data[[col]])) {
      o$data[[col]] <- factor(o$data[[col]])
    }
  }
  o
}

gg_resolve_const_aes <- function(o) {
  # Materialise constant aesthetics (e.g. aes(x = 1)) as real single-level factor
  # columns. A constant mapping is stored as a bare literal, not a quosure, and
  # has no matching data column, so downstream it is dropped and CanvasXpress
  # ends up treating each row as its own sample instead of the single group the
  # constant denotes (one bar). Adding a one-level factor column and pointing the
  # mapping at it makes the data/aes/order machinery - and the renderer - treat
  # the aesthetic as a single category. The aes name is used for the column when
  # it is free; otherwise a collision-safe unique name is chosen so an existing
  # data column (diamonds already has x/y/z) is never overwritten.
  for (name in names(o$mapping)) {
    m <- o$mapping[[name]]
    # A constant literal produces a length-1 character value. Skip NULL / empty
    # mappings (ggblanket and friends can leave zero-length entries in $mapping):
    # rep()-ing a length-0 value would build a 0-row column and crash the later
    # column assignment ("Can't recycle input of size 0 to size <nrow>").
    if (!rlang::is_quosure(m) && length(as.character(m)) > 0L) {
      # Use the aes name when free; otherwise a dot-free unique suffix (a '.' in
      # the column name trips the renderer's variable parsing and blanks the
      # axis label).
      col <- name
      suffix <- 1L
      while (col %in% colnames(o$data)) {
        col <- paste0(name, "_", suffix)
        suffix <- suffix + 1L
      }
      o$data[[col]] <- factor(rep(as.character(m), nrow(o$data)))
      o$mapping[[name]] <- rlang::new_quosure(rlang::sym(col),
                                              env = rlang::empty_env())
    }
  }
  o
}

gg_cxplot <- function(o, target, ...) {

  config <- list(...)

  o <- gg_resolve_const_aes(o)

  o <- gg_resolve_factor_aes(o)

  meta <- as.list(sapply(o$data, is.factor))

  bld <- ggplot2::ggplot_build(o)

  data <- data_to_matrix(o, bld)

  cx <- list(
    renderTo = target,
    data     = data,
    aes      = gg_mapping(o, bld),
    mappings = gg_mapping_list(o),
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

  proto_stat <- sapply(sapply(o$layers, "[[", "stat"),
                       function(x) class(x)[[1]][1])

  for (i in seq_along(layers)) {
    layer_entry <- tryCatch({
      l <- layers[i]
      p <- gg_proc_layer(o, i, bld)
      if ((l == "GeomTile") && (proto_stat[i] == "StatBin2d")) {
        l <- "GeomBin2d"
      } else if ((l == "GeomPoint") && !is.null(p$position) &&
                   (p$position == "jitter")) {
        l <- "GeomJitter"
      } else if ((l == "GeomBar") && (proto_stat[i] == "StatBin")) {
        l <- "GeomHistogram"
      } else if ((l == "GeomPath") && (proto_stat[i] == "StatQqLine")) {
        l <- "GeomQqLine"
      } else if ((l == "GeomPoint") && (proto_stat[i] == "StatQq")) {
        l <- "GeomQq"
      } else if (l == "GeomCrossbar") {
        # A crossbar (e.g. stat_summary(geom = "crossbar")) arrives with its stat
        # computed in the built data: x is the category position, xmin/xmax the
        # slot width, y the summary value, ymin/ymax the box (NA when only fun= is
        # given -> a flat rule). Emit these so the engine draws category-mapped
        # rules; ymin/ymax stay NA (-> JSON null) for the no-box case.
        cd <- bld$data[[i]]
        flipped <- isTRUE(cd$flipped_aes[1])
        if (!flipped && is.numeric(cd$x)) {
          p$crossbarPos  <- as.numeric(cd$x)
          p$crossbarXmin <- as.numeric(cd$xmin)
          p$crossbarXmax <- as.numeric(cd$xmax)
          p$crossbarY    <- as.numeric(cd$y)
          p$crossbarYmin <- as.numeric(cd$ymin)
          p$crossbarYmax <- as.numeric(cd$ymax)
          if (!is.null(cd$colour)) {
            p$crossbarColor <- as.character(cd$colour)
          }
        }
      } else if (l == "GeomErrorbar" || l == "GeomErrorbarh" ||
                   l == "GeomRibbon") {
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
        # Emit the resolved (already dodged) position of each error bar along the
        # categorical axis, aligned row-for-row with ymin/ymax. ggplot has already
        # applied position_dodge here, so this carries the exact per-group offset
        # (narrow for an unmatched dodge width, bar-aligned for a shared one). CX
        # maps it back through the category axis instead of re-deriving the sample
        # from wrangled (re-ordered) data, which otherwise mis-pairs the bars.
        # The position axis is x for a vertical errorbar, y for the horizontal one;
        # bld$data stores it as mapped_discrete, so coerce with as.numeric().
        # geom_errorbarh() is deprecated in ggplot2 4.0 and now arrives as a
        # GeomErrorbar with a horizontal orientation, so the class name no longer
        # tells the two apart. Detect the horizontal case from the bound extents:
        # a horizontal error bar carries numeric xmin/xmax (the error runs along
        # x) while its category sits on y (mapped_discrete, not numeric).
        horizontal_eb <- l == "GeomErrorbarh" ||
          (l == "GeomErrorbar" &&
             class(bld$data[[i]]$xmin)[1] == "numeric" &&
             class(bld$data[[i]]$ymin)[1] != "numeric")
        if (horizontal_eb) {
          if (is.numeric(bld$data[[i]]$y)) {
            p$errorPos <- as.numeric(bld$data[[i]]$y)
          }
        } else {
          if (is.numeric(bld$data[[i]]$x)) {
            p$errorPos <- as.numeric(bld$data[[i]]$x)
          }
        }
        # Per-bar resolved colour (row-aligned): a mapped colour aesthetic makes
        # each error bar its group's colour (e.g. a lone geom_errorbar with
        # aes(colour = g)); a fixed colour="black" stays uniform. Lets CX colour
        # each I-beam without re-deriving the group from re-ordered data.
        if (!is.null(bld$data[[i]]$colour)) {
          p$errorColor <- bld$data[[i]]$colour
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
          cx$config <- within(cx$config, {
            rm(kmCxplot)
            rm(showKMConfidenceIntervals)
            rm(kmRiskTable)
          })
          p <- within(p, rm(data))
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
      } else if (l == "GeomSegment" || l == "GeomCurve") {
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
      # Each layer is a self-describing element: its geom name travels inside
      # the params so `layers` can be a positional ARRAY (one entry per ggplot
      # layer, order-preserving, same-geom layers no longer collide). CX now
      # builds per-layer, so the old geom-keyed object (with `.1`
      # disambiguation) is retired. `geoms` stays the ordered dispatch list.
      p$geom <- l
      list(geom = l, params = p)
    }, error = function(e) {
      # Geoms we knowingly tolerate skipping (empty by default = strict:
      # a genuine conversion failure re-raises loudly with layer context
      # rather than silently dropping the layer).
      skippable_geoms <- character(0)
      if (layers[i] %in% skippable_geoms) {
        warning(sprintf("canvasXpress: skipping ggplot layer %d (%s): %s",
                        i, layers[i], conditionMessage(e)), call. = FALSE)
        return(NULL)
      }
      stop(sprintf("canvasXpress: failed to convert ggplot layer %d (%s): %s",
                   i, layers[i], conditionMessage(e)), call. = FALSE)
    })
    if (!is.null(layer_entry)) {
      cx$geoms <- append(cx$geoms, layer_entry$geom)
      # Append as an unnamed list element so `layers` serializes as a JSON
      # array (not a geom-keyed object).
      cx$layers[[length(cx$layers) + 1]] <- layer_entry$params
    }
  }

  cx <- gg_apply_scale_labels(o, cx)
  cx <- gg_apply_x_scale_labels(o, cx)

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
      !any(is.na(x)) && !is.null(x)
    } else {
      FALSE
    }
  }, default_aes)
  # Convert to a simple character string for easy reading
  valid_aes <- sapply(valid_aes, deparse)
  valid_aes
}

gg_fun <- function(x) {
  tryCatch(utils::getFromNamespace(x, "ggplot2"), error = function(e) NULL)
}

# The finalized ggplot object inside ggplot_build() output. Centralized here
# because the positional [[3]] access is a ggplot2 internal that changes across
# versions; every trained-scale read goes through the two helpers below.
gg_built_plot <- function(b) {
  b[[3]]
}

# Return the trained scale (with a populated palette.cache) for a given
# aesthetic from the built plot, or NULL. Matching by aesthetic instead of a
# fixed index is what lets multiple discrete scales (e.g. both fill and colour)
# resolve to their own palette.
gg_trained_scale <- function(b, aesthetic) {
  scales <- gg_built_plot(b)$scales$scales
  if (length(scales) == 0) {
    return(NULL)
  }
  for (bs in scales) {
    if (!is.null(bs$aesthetics) && aesthetic %in% bs$aesthetics) {
      return(bs)
    }
  }
  NULL
}

# ggplot2 3.5 renamed a scale's `trans` field to `transformation`; read either
# so axis-transform capture keeps working across versions.
gg_scale_transform_name <- function(s) {
  tr <- s$transformation
  if (is.null(tr)) {
    tr <- s$trans
  }
  if (is.null(tr)) {
    return(NULL)
  }
  tr$name
}

# Return a scale's inverse-transform function (data-space <- transformed-space),
# reading either the 3.5+ `transformation` field or the older `trans` field.
# Used to turn ggplot's transformed panel breaks back into the raw data values
# CanvasXpress labels its transform-tick axes with.
gg_scale_transform_inverse <- function(s) {
  tr <- s$transformation
  if (is.null(tr)) {
    tr <- s$trans
  }
  if (is.null(tr) || !is.function(tr$inverse)) {
    return(NULL)
  }
  tr$inverse
}

# Map ggplot2 numeric pch shape codes to CanvasXpress shape names. Pass through
# values that are already names (e.g. scale_shape_manual(values = "square")).
# Vectorized so a scale's palette.cache converts in one call.
gg_shape_names <- function(codes) {
  shape_map <- c(
    "square", "circle", "triangle", "plus", "minus", "diamond",
    "triangle2", "hexagon", "star", "octagon", "pentagon", "mdavid",
    "drop", "circleOpen", "square", "square", "circle", "triangle",
    "diamond", "circle", "circle", "circleOpen", "square", "diamond",
    "triangle", "triangle2"
  )
  as.character(sapply(codes, function(code) {
    num <- suppressWarnings(as.integer(code))
    if (is.na(num)) {
      as.character(code)
    } else {
      i <- num + 1L
      if (i >= 1L && i <= length(shape_map)) shape_map[i] else "circle"
    }
  }, USE.NAMES = FALSE))
}

# Map ggplot2 linetype values (named, numeric 0-6, or hex dash codes like "22")
# to CanvasXpress line-pattern names (the `linePatterns` palette). Hex dash
# codes map to their nearest named CX dash (approximate but visually distinct).
gg_linetype_names <- function(codes) {
  named <- list(
    "0" = "solid", "1" = "solid", "2" = "dashed", "3" = "dotted",
    "4" = "dotdash", "5" = "longdash", "6" = "twodash",
    "blank" = "solid", "solid" = "solid", "dashed" = "dashed",
    "dotted" = "dotted", "dotdash" = "dotdash", "longdash" = "longdash",
    "twodash" = "twodash",
    "22" = "dashed", "42" = "longdash", "44" = "dashed", "13" = "dotted",
    "1343" = "dotdash", "73" = "longdash", "2262" = "twodash"
  )
  as.character(sapply(codes, function(code) {
    key <- as.character(code)
    if (!is.null(named[[key]])) named[[key]] else "solid"
  }, USE.NAMES = FALSE))
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

gg_facet_wrap_vars <- function(o) {
  f <- o$facet$params$facets
  if (is.null(f)) {
    return(NULL)
  }
  ls(f)
}

gg_scale_color_var <- function(o) {
  # The data column a colour/fill aesthetic maps to (plot- or layer-level). Used to
  # order a manual scale's colours by that column's own level order.
  candidates <- character(0)
  for (layer in o$layers) {
    for (key in c("fill", "color", "colour")) {
      q <- layer$mapping[[key]]
      if (!is.null(q)) {
        candidates <- c(candidates, rlang::as_label(q))
      }
    }
  }
  for (key in c("fill", "color", "colour")) {
    if (!is.null(o$mapping[[key]])) {
      candidates <- c(candidates, rlang::as_label(o$mapping[[key]]))
    }
  }
  candidates <- gsub("\"", "", candidates)
  for (cand in unique(candidates)) {
    bare <- sub("^(factor|as\\.factor|ordered|as\\.ordered)\\((.*)\\)$", "\\2", cand)
    if (bare %in% colnames(o$data)) {
      return(bare)
    }
  }
  NULL
}

gg_order_scale_colors <- function(o, q) {
  # CanvasXpress assigns a discrete scale's colours array POSITIONALLY to the
  # colour variable's levels - a factor keeps its declared level order, a plain
  # character is sorted alphabetically. A named manual scale (list q: level ->
  # colour) is defined in an arbitrary order, so re-order its colours into that
  # same level order; otherwise each level would take the wrong colour (e.g. a
  # pathway factor Control/cAMP/... coloured as if alphabetical).
  var <- gg_scale_color_var(o)
  if (is.null(var)) {
    return(NULL)
  }
  col <- o$data[[var]]
  levs <- if (is.factor(col)) levels(col) else sort(unique(as.character(col)))
  ordered <- q[levs]
  if (length(ordered) != length(levs) || any(vapply(ordered, is.null, logical(1)))) {
    return(NULL)
  }
  unname(unlist(ordered))
}

gg_strip_colors <- function(o) {
  # ggh4x's facet_wrap2(strip = strip_themed(background_x = elem_list_rect(fill=)))
  # colours each facet strip individually (e.g. by antibiotic class). CanvasXpress
  # draws every strip in one stripBackgroundColor, so capture the per-strip fills
  # as a level -> colour map the engine can look up per panel. Single-variable
  # wrap facets only (the fills align to the sorted panel levels, as gg_facet
  # orders facetLevels); anything else is left to the default strip colour.
  f <- o$facet
  if (is.null(f) || !inherits(f, "FacetWrap2")) {
    return(NULL)
  }
  ge <- tryCatch(f$strip$given_elements$background_x, error = function(e) NULL)
  if (is.null(ge) || length(ge) == 0) {
    return(NULL)
  }
  fvars <- gg_facet_wrap_vars(o)
  if (length(fvars) != 1) {
    return(NULL)
  }
  fills <- vapply(ge, function(el) {
    v <- tryCatch(el$fill, error = function(e) NULL)
    if (is.null(v) || length(v) == 0 || is.na(v[1])) NA_character_ else as.character(v)[1]
  }, character(1))
  if (all(is.na(fills))) {
    return(NULL)
  }
  levs <- as.character(sort(unique(factor(as.character(o$data[[fvars]]),
                                          exclude = NULL))))
  if (length(levs) != length(fills)) {
    return(NULL)
  }
  stats::setNames(as.list(fills), levs)
}

gg_facet <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  f <- o$facet$params$facets
  if (!is.null(f)) {
    fvars <- gg_facet_wrap_vars(o)
    # Present panel combinations drive the wrap topology (one panel per combo).
    if (length(fvars) > 1) {
      combos <- apply(
        o$data[, fvars, drop = FALSE], 1,
        function(r) paste(as.character(r), collapse = "_")
      )
      panel_levels <- sort(unique(factor(combos, exclude = NULL)))
    } else {
      panel_levels <- sort(unique(factor(as.character(o$data[[fvars]]),
                                         exclude = NULL)))
    }
    f <- list(
      # Emit the facet variable(s). For >1 wrap variable this is an ARRAY, which
      # CanvasXpress renders as one stacked strip label per variable - matching
      # ggplot's facet_wrap(vars(g, h)) - instead of a single composite "g_h"
      # strip. A single facet variable stays a scalar (auto-unboxed).
      facet = fvars,
      facetType = "wrap",
      facetXFree = o$facet$params$free$x,
      facetYFree = o$facet$params$free$y,
      facetXSpace = o$facet$params$space_free$x,
      facetYSpace = o$facet$params$space_free$y
    )
    # A single-variable facet keeps its explicit level order for the strips; the
    # engine derives the multi-variable strips from the segregated columns.
    if (length(fvars) == 1) {
      f$facetLevels <- panel_levels
      # ggh4x per-strip fills (level -> colour), applied by the engine per panel.
      strip_cols <- gg_strip_colors(o)
      if (!is.null(strip_cols)) {
        f$stripBackgroundColors <- strip_cols
      }
    }
    if (!is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetCols <- o$facet$params$ncol
      f$facetRows <- o$facet$params$nrow
    } else if (is.null(o$facet$params$ncol) && !is.null(o$facet$params$nrow)) {
      f$facetRows <- o$facet$params$nrow
      f$facetCols <- ceiling(length(panel_levels) / f$facetRows)
    } else if (!is.null(o$facet$params$ncol) && is.null(o$facet$params$nrow)) {
      f$facetCols <- o$facet$params$ncol
      f$facetRows <- ceiling(length(panel_levels) / f$facetCols)
    } else {
      if (length(panel_levels) < 4) {
        f$facetRows <- 1
        f$facetCols <- length(panel_levels)
      } else {
        f$facetCols <- ceiling(sqrt(length(panel_levels)))
        f$facetRows <- ceiling(length(panel_levels) / f$facetCols)
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
      rows_vals <- as.character(o$data[[ls(o$facet$params$rows)]])
      f$facetLevelsRows <- sort(unique(factor(rows_vals, exclude = NULL)))
      cols_vals <- as.character(o$data[[ls(o$facet$params$cols)]])
      f$facetLevelsCols <- sort(unique(factor(cols_vals, exclude = NULL)))
      f$facetRows <- length(f$facetLevelsRows)
      f$facetCols <- length(f$facetLevelsCols)
    } else if (length(o$facet$params$rows) > 0) {
      f$facet <- ls(o$facet$params$rows)
      rows_vals <- as.character(o$data[[ls(o$facet$params$rows)]])
      f$facetLevelsRows <- sort(unique(factor(rows_vals, exclude = NULL)))
      f$facetRows <- length(f$facetLevelsRows)
      f$facetCols <- 1
    } else if (length(o$facet$params$cols) > 0) {
      f$facet <- ls(o$facet$params$cols)
      cols_vals <- as.character(o$data[[ls(o$facet$params$cols)]])
      f$facetLevelsCols <- sort(unique(factor(cols_vals, exclude = NULL)))
      f$facetRows <- 1
      f$facetCols <- length(f$facetLevelsCols)
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
      if (("S7_object" %in% class(e[[a]])) &&
            requireNamespace("S7", quietly = TRUE)) {
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
              cleaned <- gsub("points", "", as.character(v))
              t[[k]] <- suppressWarnings(max(as.numeric(cleaned)))
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
        cleaned <- gsub("points", "", as.character(v))
        t[[a]] <- suppressWarnings(max(as.numeric(cleaned)))
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
        ts <- gg_trained_scale(b, "fill")
        if (c == "ScaleContinuous") {
          r$colorSpectrum <- s$palette(c(0, 0.25, 0.5, 0.75, 1))
          k <- TRUE
        } else if (c == "ScaleDiscrete") {
          p <- s$palette(1)
          if (!is.null(names(p))) {
            k <- names(p)
            names(p) <- NULL
            q <- list()
            for (j in seq_along(k)) {
              q[[k[j]]] <- p[j]
            }
            r$colorKey <- q
            # Emit the named-scale colours in the colour variable's own level order
            # (see gg_order_scale_colors) so CanvasXpress's positional assignment
            # maps each level to its colour; fall back to the trained palette cache.
            ordered_cols <- gg_order_scale_colors(o, q)
            r$colors <- if (!is.null(ordered_cols)) ordered_cols else ts$palette.cache
          } else {
            r$colors <- ts$palette.cache
          }
          if (length(ts$breaks) > 0) {
            r$colorBreaks <- ts$breaks
          }
        } else if (c == "ScaleBinned") {
          r$colors <- ts$palette.cache
          r$colorBreaks <- ts$breaks
          r$colorLimits <- ts$limits
        }
        r$colorScale <- c
        if (!is.null(s$name) && length(s$name) > 0) {
          r$colorLegendTitle <- s$name
        }
        w <- w + 1
      } else if (s$aesthetics[1] == "colour" || s$aesthetics[1] == "color") {
        c <- class(s)[1]
        ts <- gg_trained_scale(b, s$aesthetics[1])
        if (c == "ScaleContinuous") {
          r$colorSpectrum2 <- s$palette(c(0, 0.25, 0.5, 0.75, 1))
          k <- TRUE
        } else if (c == "ScaleDiscrete") {
          p <- s$palette(1)
          if (!is.null(names(p))) {
            k <- names(p)
            names(p) <- NULL
            q <- list()
            for (j in seq_along(k)) {
              q[[k[j]]] <- p[j]
            }
            r$colorKey2 <- q
            # See the fill branch: order by the colour variable's own level order.
            ordered_cols2 <- gg_order_scale_colors(o, q)
            r$colors2 <- if (!is.null(ordered_cols2)) ordered_cols2 else ts$palette.cache
          } else {
            r$colors2 <- ts$palette.cache
          }
          if (length(ts$breaks) > 0) {
            r$colorBreaks2 <- ts$breaks
          }
        } else if (c == "ScaleBinned") {
          r$colors2 <- ts$palette.cache
          r$colorBreaks2 <- ts$breaks
          r$colorLimits2 <- ts$limits
        }
        r$colorScale2 <- c
        if (!is.null(s$name) && length(s$name) > 0) {
          r$colorLegendTitle <- s$name
        }
        w <- w + 1
      } else if (s$aesthetics[1] == "x") {
        x_trans <- gg_scale_transform_name(s)
        has_x_trans <- !is.null(x_trans) && x_trans != "identity"
        if (!is.null(s$limits)) {
          r$setMinX <- s$limits[1]
          r$setMaxX <- s$limits[2]
        } else {
          x_breaks <- b$layout$panel_params[[1]]$x$breaks
          x_minor  <- b$layout$panel_params[[1]]$x$minor_breaks
          # When the scale is transformed, ggplot's panel breaks live in
          # TRANSFORMED space (e.g. log2 positions 2,3,4). CanvasXpress's
          # transform-tick axis wants UNTRANSFORMED tick values - it re-applies
          # the transform via toValue() for the pixel position while showing the
          # raw value as the label - so invert the breaks here. Without this the
          # axis prints the transformed positions (2,3,4) as labels and then
          # transforms them a second time, clustering them at one end.
          if (has_x_trans) {
            x_inv <- gg_scale_transform_inverse(s)
            if (is.function(x_inv)) {
              x_breaks <- x_inv(x_breaks)
              x_minor  <- x_inv(x_minor)
            }
          }
          r$xAxisSetValues <- x_breaks
          r$xAxisSetMinorValues <- x_minor
          r$xAxisTicks <- length(x_breaks)
        }
        if (has_x_trans) {
          r$xAxisTransform <- stringr::str_replace(x_trans, "-", "")
        }
        if (is.character(s$name)) {
          r$xAxisTitle <- s$name
        }
      } else if (s$aesthetics[1] == "y") {
        y_trans <- gg_scale_transform_name(s)
        has_y_trans <- !is.null(y_trans) && y_trans != "identity"
        if (!is.null(s$limits)) {
          r$setMinY <- s$limits[1]
          r$setMaxY <- s$limits[2]
        } else {
          y_breaks <- b$layout$panel_params[[1]]$y$breaks
          y_minor  <- b$layout$panel_params[[1]]$y$minor_breaks
          # See the x branch above: invert transformed breaks so the untransformed
          # data values become the axis labels and CanvasXpress positions them
          # through toValue().
          if (has_y_trans) {
            y_inv <- gg_scale_transform_inverse(s)
            if (is.function(y_inv)) {
              y_breaks <- y_inv(y_breaks)
              y_minor  <- y_inv(y_minor)
            }
          }
          r$yAxisSetValues <- y_breaks
          r$yAxisSetMinorValues <- y_minor
          r$yAxisTicks <- length(y_breaks)
        }
        if (has_y_trans) {
          r$yAxisTransform <- stringr::str_replace(y_trans, "-", "")
        }
        if (is.character(s$name)) {
          r$yAxisTitle <- s$name
        }
      } else if (s$aesthetics[1] == "pattern" ||
                   s$aesthetics[1] == "pattern_spacing" ||
                   s$aesthetics[1] == "pattern_angle") {
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
    built_scales <- gg_built_plot(b)$scales$scales
    n <- length(built_scales)
    k <- FALSE
    if (n > 0) {
      for (i in 1:n) {
        bs <- built_scales[[i]]
        aesthetic <- if (!is.null(bs$aesthetics)) bs$aesthetics[1] else NA
        is_color_aes <- !is.na(aesthetic) && aesthetic %in% c("colour", "color", "fill")
        # A default (no explicit scale_*) CONTINUOUS colour/fill scale -- e.g.
        # geom_bin_2d's count fill -- carries its colours as a gradient function,
        # not a per-level palette, so its palette.cache is empty. Emit the
        # gradient sampled at 5 stops as a colorSpectrum (matching the explicit
        # ScaleContinuous branch above) so CanvasXpress colours its own computed
        # bins by that blue gradient, instead of dropping through to the per-bin
        # `colors` fallback -- which CX ignores for a count-mapped bin2d/heatmap,
        # replacing it with its unrelated default red/blue spectrum.
        if (is_color_aes && is.function(bs$is_discrete) && !bs$is_discrete() &&
              is.function(bs$palette)) {
          r$colorSpectrum <- bs$palette(c(0, 0.25, 0.5, 0.75, 1))
          r$colorScale <- "ScaleContinuous"
          # Default fill has no explicit scale name, so take the legend title
          # from the mapped fill label (e.g. geom_bin_2d's computed "count").
          # The computed-stat label is only resolved on the built plot, not the
          # original, so read it from b$plot$labels.
          fill_label <- b$plot$labels[[aesthetic]]
          if (!is.null(fill_label) && length(fill_label) > 0 && nzchar(fill_label)) {
            r$colorLegendTitle <- fill_label
          }
          k <- TRUE
          break
        }
        if (!is.null(bs$palette.cache)) {
          # Route each trained scale's values to the right CanvasXpress key.
          # Only colour/fill scales are colors; shape/linetype have their own
          # keys (previously a shape scale leaked its pch codes into `colors`).
          if (aesthetic == "pattern") {
            r$patterns <- bs$palette.cache
          } else if (aesthetic == "shape") {
            r$shapes <- gg_shape_names(bs$palette.cache)
          } else if (aesthetic == "linetype") {
            r$lineType <- gg_linetype_names(bs$palette.cache)
          } else if (is_color_aes) {
            r$colors <- bs$palette.cache
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
                cl <- cols[1]
                cols <- c(cl, cl, cl)
              }
            }
          }
        }
      }
    }
    if (k || "colors" %in% names(r)) {
      ## Nothing to do -- a discrete palette (colors) or a continuous gradient
      ## (colorSpectrum) was already resolved above; `cols` is only computed on
      ## the !k fallback path.
    } else {
      r$colors <- cols
    }
  }
  layers <- sapply(o$layers, function(x) class(x$geom)[1])
  for (i in seq_along(layers)) {
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
  tx <- as.character(b$layout$coord$trans$x)[1]
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
  l <- c("x", "y", "z", "title", "subtitle", "caption", "tag", "colour",
         "fill", "shape", "size", "linetype")
  for (i in l) {
    if (!is.null(o$labels[[i]])) {
      if (i %in% c("title", "subtitle", "tag")) {
        r[[i]] <- gg_plotmath_to_text(o$labels[[i]])
      } else if (i == "caption") {
        r["citation"] <- gg_plotmath_to_text(o$labels[[i]])
      } else if (i %in% c("colour", "fill", "shape", "size", "linetype")) {
        if (i == "colour" || i == "fill") {
          if (class(o$labels[[i]])[1] != "element_blank") {
            r["colorLegendTitle"] <- gg_plotmath_to_text(o$labels[[i]])
          }
        } else {
          r[[paste(i, "LegendTitle", sep = "")]] <-
            gg_plotmath_to_text(o$labels[[i]])
        }
      } else {
        r[[paste(i, "AxisTitle", sep = "")]] <-
          gg_plotmath_to_text(o$labels[[i]])
      }
    }
  }
  # labs(x = NULL) / labs(y = NULL) explicitly REMOVES an axis title, but both
  # "unset" and "= NULL" leave o$labels$<a> NULL - only the RESOLVED labels
  # (get_labs) tell them apart (unset -> the mapped variable name; = NULL -> NULL).
  # When an axis is mapped yet its resolved label is NULL, the user suppressed it,
  # so emit an explicit empty title; the engine then skips synthesising one from
  # the aesthetic (which would otherwise re-label the axis with the variable name).
  resolved <- tryCatch(ggplot2::get_labs(o), error = function(e) NULL)
  if (!is.null(resolved)) {
    axis_mapped <- function(a) {
      if (!is.null(o$mapping[[a]])) {
        return(TRUE)
      }
      for (layer in o$layers) {
        if (!is.null(layer$mapping[[a]])) {
          return(TRUE)
        }
      }
      FALSE
    }
    for (a in c("x", "y")) {
      key <- paste0(a, "AxisTitle")
      if (is.null(r[[key]]) && is.null(resolved[[a]]) && axis_mapped(a)) {
        r[[key]] <- ""
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
  m <- c("x", "y", "z", "xmin", "xmax", "xend", "ymin", "ymax", "yend",
         "zmin", "zmax", "weight", "group", "colour", "color", "fill",
         "size", "shape", "alpha", "linetype", "label", "vjust", "sample",
         "pattern")
  e <- TRUE
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      e <- FALSE
      l <- rlang::as_label(o$mapping[[i]])
      # Unwrap only a factor(...) / as.*(...) coercion wrapper down to the bare
      # variable; leave any other function-call expression (e.g. -log10(yvals))
      # intact so the aes label still matches the column data_to_matrix
      # materialises for that expression. Blindly stripping ")" mangled such
      # expressions (e.g. EnhancedVolcano's y = -log10(pvalue)).
      if (grepl("^factor\\(", l) || grepl("^as\\.[A-Za-z]+\\(", l)) {
        l <- stringr::str_replace(l, "^factor\\(", "")
        l <- stringr::str_replace(l, "^as\\.[A-Za-z]+\\(", "")
        l <- stringr::str_replace(l, "\\)$", "")
      }
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

gg_mapping_list <- function(o) {
  if (missing(o)) {
    o <- ggplot2::last_plot()
  }
  # Check only mappings that are not delayed aesthetics
  result <- list()
  for (name in names(o$mapping)) {
    m <- o$mapping[[name]]
    # A constant aesthetic (e.g. aes(x = 1)) is stored as a bare literal, not a
    # quosure; it is never a delayed aesthetic and a numeric/character constant
    # is not a factor.
    if (!rlang::is_quosure(m)) {
      if (name %in% c("colour", "color")) {
        name <- "color"
      }
      result[[name]] <- is.factor(m)
      next
    }
    # Extract the expression from the quosure
    expr <- rlang::quo_get_expr(m)
    # Check if it's a call to after_stat() or stat()
    if (is.call(expr) && as.character(expr[[1]]) %in% c("after_stat", "stat")) {
      result[[name]] <- FALSE
    } else {
      if (name %in% c("colour", "color")) {
        name <- "color"
      }
      result[[name]] <- is.factor(rlang::eval_tidy(m, o$data))
    }
  }
  result
}

gg_proc_layer <- function(o, idx, bld) {
  l <- o$layers[[idx]]
  r <- list()
  q <- as.vector(NULL)
  d <- as.list(gg_default_aes(class(l$geom)[1]))
  clean_factor <- function(b) {
    gsub("factor\\(|\\)|as\\.", "", b)
  }
  aes_key <- function(a) {
    if (a == "colour") {
      "color"
    } else {
      a
    }
  }
  gg_shape_name <- function(n) {
    shape_map <- c(
      "square", "circle", "triangle", "plus", "minus", "diamond",
      "triangle2", "hexagon", "star", "octagon", "pentagon", "mdavid",
      "drop", "circleOpen", "square", "square", "circle", "triangle",
      "diamond", "circle", "circle", "circleOpen", "square", "diamond",
      "triangle", "triangle2"
    )
    i <- as.integer(n) + 1L
    if (!is.na(i) && i >= 1L && i <= length(shape_map)) {
      shape_map[i]
    } else {
      "circle"
    }
  }
  resolve_aes_val <- function(bld_vals, default) {
    bld_vals <- bld_vals[!is.na(bld_vals)]
    if (length(bld_vals) == 1) {
      bld_vals
    } else if (!is.null(default)) {
      gsub("\"", "", default)
    } else {
      NULL
    }
  }
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
          b <- clean_factor(b)
          q <- append(q, b)
          if (!(a %in% c("x", "y", "z"))) {
            r[[aes_key(a)]] <- b
          }
        } else {
          r[[aes_key(a)]] <- b
        }
      }
    }
  }
  skip <- c("compute_panel", "preserve", "setup_data", "setup_params",
            "super", "compute_layer", "orientation", "contour",
            "distribution", "length")
  skip2 <- c("na.rm", "reverse", "vjust")
  skip_values <- list(na.rm = FALSE, reverse = FALSE, vjust = 1)

  all_params <- c(l$aes_params, l$geom_params, l$stat_params)
  all_params <- all_params[!names(all_params) %in% skip]
  for (nm in intersect(names(all_params), skip2)) {
    if (is.null(all_params[[nm]]) ||
          isTRUE(skip_values[[nm]] == all_params[[nm]])) {
      all_params[[nm]] <- NULL
    }
  }
  for (a in names(all_params)) {
    b <- all_params[[a]]
    # ggplot2 4.0 leaves some params (e.g. geom_pointrange `fatten`) as an
    # empty missing-arg symbol; forcing it errors, so skip those.
    if (inherits(tryCatch(force(b), error = function(e) e), "error")) {
      next
    }
    k <- aes_key(a)
    if (!missing(b)) {
        if (is.vector(b)) {
            f <- regexpr("factor", b)[1]
            if (is.character(f) && f > 0) {
                b <- clean_factor(b)
            }
            if (is.null(r[[k]])) {
                r[[k]] <- b
            }
        } else if ("formula" %in% class(b)) {
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
        } else if (is.function(b) || is.primitive(b)) {
            if (is.null(r[[k]])) {
                fn_name <- tryCatch({
                    pkg <- environmentName(environment(b))
                    ns  <- if (nchar(pkg) > 0) asNamespace(pkg) else baseenv()
                    nms <- ls(ns)
                    found <- nms[vapply(nms, function(nm) {
                        identical(get(nm, envir = ns, inherits = FALSE), b)
                    }, logical(1))]
                    if (length(found) > 0) found[1] else NULL
                }, error = function(e) NULL)
                if (!is.null(fn_name)) r[[k]] <- fn_name
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
  pos_map <- c(PositionJitter = "jitter", PositionFill = "fill",
               PositionStack = "stack", PositionDodge = "dodge")
  pos_name <- class(l$position)[1]
  pos <- if (!is.na(pos_map[pos_name])) pos_map[[pos_name]] else "normal"
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
      # Carry the panel index so a faceted annotation layer (e.g. one
      # significance label per facet) can be scoped to its own panel; without it
      # every label would fall into the first panel. PANEL is 1-based and aligns
      # with the emitted facetLevels order.
      if ("PANEL" %in% colnames(dl)) {
        r$data$panel <- as.numeric(dl[["PANEL"]])
      }
    } else {
      dl <- l$data
      nd <- data.frame(lapply(dl, as.character), stringsAsFactors = FALSE)
      nd <- tibble::add_column(nd, Id = row.names(dl), .before = 1)
      nd <- tibble::add_row(nd, .before = 1)
      nd[1, ] <- colnames(nd)
      r$data <- as.matrix(nd)
    }
  }
  prps <- c("colour", "color", "fill", "alpha", "shape")
  for (p in prps) {
    aes_col <- if (p == "colour") "colour" else p
    if ((!(p %in% names(r))) && rlang::as_label(o$mapping[[p]]) == "NULL") {
      bld_vals <- unique(bld$data[[idx]][[aes_col]])
      val <- resolve_aes_val(bld_vals, d[[p]])
      if (!is.null(val)) {
        if (p == "colour") {
          if (!("color" %in% names(r))) r$color <- val
        } else {
          r[[p]] <- val
        }
      }
    } else if (p == "shape" && !is.null(d[[p]])) {
      r$shape <- gg_shape_name(d[[p]])
    }
  }
  r
}

data_to_matrix <- function(o, b) {
  layers <- sapply(o$layers, function(x) class(x$geom)[1])
  m <- c("x", "y", "z", "label", "colour", "color", "fill", "size")
  d <- o$data
  nd <- data.frame(lapply(d, as.character), stringsAsFactors = FALSE,
                   check.names = FALSE)
  k <- length(row.names(nd))
  for (i in m) {
    if (!is.null(o$mapping[[i]])) {
      q <- rlang::as_label(o$mapping[[i]])
      if (q %in% colnames(o$data) || q == "1") {
        ## Nothing to do
      } else if (i == "label" || i == "colour" || i == "color" || i == "fill") {
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
    for (i in seq_along(layers)) {
      geom_class <- class(o$layers[[i]]$geom)[1]
      q <- geom_class
      if (q != "GeomBlank") {
        for (j in m) {
          if (!is.null(o$layers[[i]]$mapping[[j]])) {
            q <- rlang::as_label(o$layers[[i]]$mapping[[j]])
            q <- gsub("\"", "", q)
            if (q %in% colnames(o$data)) {
              ## Nothing to do
            } else if ((geom_class == "GeomText" || geom_class == "GeomLabel") &&
                         (j == "x" || j == "y" || j == "z")) {
              ## A text/label layer's positional nudge (e.g. aes(y = y + 0.05))
              ## is a computed label position CanvasXpress does not consume; do
              ## NOT add it as a shared data column -- as an extra numeric field
              ## it pollutes a companion geom_col/bar's pivot and blanks its axis.
            } else if (j == "label" || j == "colour" || j == "color" ||
                         j == "fill") {
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
