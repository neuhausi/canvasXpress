#' Converts a canvasXpress object to a list that can be used by CanvasXpress.
#' @export
canvasXpress.as.list <- function(data, x, y, z, ...) {
  nd <- data.frame(lapply(data, as.character), stringsAsFactors = FALSE)
  nd <- tibble::add_column(nd, Id = row.names(data), .before = 1)
  nd <- tibble::add_row(nd, .before = 1)
  nd[1, ] <- colnames(nd)
  data <- as.matrix(nd)
  aes <- list()
  if (!is.null(x)) {
    aes$x <- x
  }
  if (!is.null(y)) {
    aes$y <- y
  }
  if (!is.null(z)) {
    aes$z <- z
  }
  cx <- list(
    data = data,
    aes = aes,
    scales = list(),
    coords = list(),
    theme = list(),
    labels = list(),
    facet = list(),
    layers = list(),
    geoms = list(),
    isGGPlot = TRUE,
    config = list(),
    isR = TRUE
  )
  jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.add.to.last <- function(geom, ...) {
  t <- list(...)
  l <- jsonlite::fromJSON(get("canvasXpress.last", globalenv()), simplifyDataFrame = TRUE)
  if (length(t) == 0) {
    l$layers[[geom]] <- append(l$layers[[geom]], list())
  } else {
    l$layers[[geom]] <- append(l$layers[[geom]], ...)
  }
  l$geoms <- append(l$geoms, geom)
  j <- jsonlite::toJSON(l, pretty = TRUE, auto_unbox = TRUE)
  assign("canvasXpress.last", j, globalenv())
  canvasXpress.json(j)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.abline <- function(...) {
  canvasXpress.add.to.last('GeomAbline', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.hline <- function(...) {
  canvasXpress.add.to.last('GeomHline', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.vline <- function(...) {
  canvasXpress.add.to.last('GeomVline', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.area <- function(...) {
  canvasXpress.add.to.last('GeomArea', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.bar <- function(...) {
  canvasXpress.add.to.last('GeomBar', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.col <- function(...) {
  canvasXpress.add.to.last('GeomCol', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.bin.2d <- function(...) {
  canvasXpress.add.to.last('GeomBin2d', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.boxplot <- function(...) {
  canvasXpress.add.to.last('GeomBoxplot', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.contour <- function(...) {
  canvasXpress.add.to.last('GeomContour', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.contour.filled <- function(...) {
  canvasXpress.add.to.last('GeomContourFilled', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.density <- function(...) {
  canvasXpress.add.to.last('GeomDensity', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.density.2d <- function(...) {
  canvasXpress.add.to.last('GeomDensity2d', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.density.2d.filled <- function(...) {
  canvasXpress.add.to.last('GeomDensity2dFilled', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.density.ridges <- function(...) {
  canvasXpress.add.to.last('GeomDensityRidges', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.dotplot <- function(...) {
  canvasXpress.add.to.last('GeomDotplot', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.errorbar <- function(...) {
  canvasXpress.add.to.last('GeomErrorbar', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.errorbarh <- function(...) {
  canvasXpress.add.to.last('GeomErrorbarh', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.hex <- function(...) {
  canvasXpress.add.to.last('GeomHex', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.histogram <- function(...) {
  canvasXpress.add.to.last('GeomHistogram', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.label <- function(...) {
  canvasXpress.add.to.last('GeomLabel', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.line <- function(...) {
  canvasXpress.add.to.last('GeomLine', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.path <- function(...) {
  canvasXpress.add.to.last('GeomPath', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.jitter <- function(...) {
  canvasXpress.add.to.last('GeomJitter', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.point <- function(...) {
  canvasXpress.add.to.last( 'GeomPoint', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.polygon <- function(...) {
  canvasXpress.add.to.last('GeomPolygon', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.qq <- function(...) {
  canvasXpress.add.to.last('GeomQq', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.qq.line <- function(...) {
  canvasXpress.add.to.last('GeomQqLine', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.quantile <- function(...) {
  canvasXpress.add.to.last('GeomQuantile', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.ribbon <- function(...) {
  canvasXpress.add.to.last('GeomRibbon', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.rug <- function(...) {
  canvasXpress.add.to.last('GeomRug', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.sina <- function(...) {
  canvasXpress.add.to.last('GeomSina', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.smooth <- function(...) {
  canvasXpress.add.to.last('GeomSmooth', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.stream <- function(...) {
  canvasXpress.add.to.last('GeomStream', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.violin <- function(...) {
  canvasXpress.add.to.last('GeomViolin', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.raster <- function(...) {
  canvasXpress.add.to.last('GeomRaster', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.step <- function(...) {
  canvasXpress.add.to.last('GeomStep', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.text <- function(...) {
  canvasXpress.add.to.last('GeomText', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.ecdf <- function(...) {
  canvasXpress.add.to.last('StatEcdf', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.ellipse <- function(...) {
  canvasXpress.add.to.last('StatEllipse', ...)
}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.facet <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.labels <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.scales <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.scale.fill.manual <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.scale.color.manual <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.coordinates <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.theme <- function(...) {

}

#' Converts a list in args to json that can be used by CanvasXpress.
#' @export
canvasXpress.config <- function(...) {

}