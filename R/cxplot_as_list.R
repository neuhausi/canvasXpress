#' Converts a cxplot object to a list that can be used by CanvasXpress.
#' @export
cxplot.as.list <- function(data, config, x, y, z, ...) {
  nd <- data.frame(lapply(data, as.character), stringsAsFactors = FALSE)
  nd <- tibble::add_column(nd, Id = row.names(data), .before = 1)
  nd <- tibble::add_row(nd, .before = 1)
  nd[1, ] <- colnames(nd)
  data <- as.matrix(nd)
  aes <- list(
    x = if (!is.null(x)) x else FALSE,
    y = if (!is.null(y)) y else FALSE,
    z = if (!is.null(z)) z else FALSE
  )
  cx <- list(
    data = data,
    aes = aes,
    isGGPlot = TRUE,
    config = config,
    isR = TRUE
  )
  jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE)
}
