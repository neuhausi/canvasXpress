#' Reconstruct approximate ggplot2 source code from a ggplot object.
#'
#' Walks a ggplot object and returns code that renders an equivalent plot. This
#' is BEST-EFFORT: functions passed to stats (e.g. \code{fun = mean}) round-trip
#' only by name, custom themes collapse to a note (a complete theme carries every
#' element, so the original \code{theme_*()}/\code{element_*()} calls cannot be
#' recovered), and the data pipeline that built \code{o$data} is unrecoverable.
#'
#' The result is also attached to the output of \code{\link{ggplot.as.list}} as
#' the \code{decompiled} field.
#'
#' @param o         a ggplot object.
#' @param data_name the symbol used for the data argument in the emitted
#'                  \code{ggplot(...)} call (default \code{"dat"}).
#'
#' @return A single character string containing the reconstructed code, with one
#'   ggplot layer/scale/label per line. Use \code{cat()} or \code{writeLines()}
#'   to print it. Returns \code{NA_character_} for non-ggplot input.
#'
#' @examples
#' \dontrun{
#'   p <- ggplot2::ggplot(mtcars, ggplot2::aes(wt, mpg)) + ggplot2::geom_point()
#'   cat(ggplot.decompiled(p, "mtcars"))
#' }
#'
#' @export
ggplot.decompiled <- function(o, data_name = "dat") { # nolint: object_name_linter.

  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("The ggplot2 package is required to use this functionality.")
  }
  if (!requireNamespace("rlang", quietly = TRUE)) {
    stop("The rlang package is required to use this functionality.")
  }
  if (!inherits(o, "ggplot")) {
    return(NA_character_)
  }

  # aes(...) -> "aes(x = wt, colour = cyl)" (strips quosure environments).
  fmt_aes <- function(mapping) {
    if (length(mapping) == 0) return(NULL)
    parts <- vapply(names(mapping), function(k) {
      expr <- rlang::quo_get_expr(mapping[[k]])
      paste0(k, " = ", paste(deparse(expr), collapse = ""))
    }, character(1))
    paste0("aes(", paste(parts, collapse = ", "), ")")
  }

  # a fixed constant -> R literal.
  fmt_val <- function(v) {
    if (is.character(v))                  return(paste0('"', v, '"'))
    if (is.logical(v) || is.numeric(v))   return(as.character(v))
    paste(deparse(v), collapse = " ")
  }

  # named list of scalar params -> "k1 = v1, k2 = v2" (functions recovered by name)
  fmt_params <- function(lst) {
    lst <- lst[!vapply(lst, is.null, logical(1))]
    if (!length(lst)) return(character(0))
    known_funs <- c("mean", "median", "sum", "min", "max", "length", "sd",
                    "mean_sdl", "mean_se", "mean_cl_normal", "mean_cl_boot")
    vapply(names(lst), function(k) {
      v <- lst[[k]]
      if (is.function(v)) {
        hit <- known_funs[vapply(known_funs, function(nm)
          exists(nm) && identical(get(nm), v), logical(1))]
        return(paste0(k, " = ", if (length(hit)) hit[1] else "<function>"))
      }
      paste0(k, " = ", fmt_val(v))
    }, character(1))
  }

  # "GeomPoint" -> "geom_point"
  snake <- function(proto_name, prefix) {
    body <- sub(paste0("^", prefix), "", proto_name)
    paste0(tolower(prefix), "_",
           tolower(gsub("([a-z0-9])([A-Z])", "\\1_\\2", body)))
  }

  out <- character(0)
  add <- function(...) out[[length(out) + 1]] <<- paste0(...)

  # ---- base call -----------------------------------------------------------
  base_aes <- fmt_aes(o$mapping)
  add("ggplot(", data_name,
      if (!is.null(base_aes)) paste0(", ", base_aes) else "", ") +")

  # ---- layers --------------------------------------------------------------
  for (i in seq_along(o$layers)) {
    ly   <- o$layers[[i]]
    geom <- snake(class(ly$geom)[1], "Geom")
    stat <- snake(class(ly$stat)[1], "Stat")
    posn <- snake(class(ly$position)[1], "Position")

    args <- character(0)

    # Reference-line geoms (vline/hline/abline) stash their intercept/slope as a
    # constant column in the layer's own data rather than as an aes_param. When
    # the mapping just points each such aesthetic at its identically-named data
    # column, recover the literal value(s) instead of emitting the aes().
    ref_line_keys <- switch(class(ly$geom)[1],
      GeomVline  = "xintercept",
      GeomHline  = "yintercept",
      GeomAbline = c("intercept", "slope"),
      NULL)
    mapping <- ly$mapping
    if (!is.null(ref_line_keys) && is.data.frame(ly$data)) {
      for (key in ref_line_keys) {
        mapped <- key %in% names(mapping) &&
          identical(paste(deparse(rlang::quo_get_expr(mapping[[key]])),
                           collapse = ""), key)
        if (mapped && key %in% names(ly$data)) {
          vals <- unique(ly$data[[key]])
          if (length(vals) >= 1) {
            literal <- if (length(vals) == 1) {
              fmt_val(vals)
            } else {
              paste(deparse(vals), collapse = "")
            }
            args <- c(args, paste0(key, " = ", literal))
            mapping[[key]] <- NULL
          }
        }
      }
    }

    la <- fmt_aes(mapping)
    if (!is.null(la)) args <- c(args, la)
    if (!stat %in% "stat_identity") {
      args <- c(args, paste0('stat = "', sub("^stat_", "", stat), '"'))
    }

    # merge the three param sources, drop duplicate keys and NA/empty noise
    all_params <- c(ly$aes_params, ly$stat_params, ly$geom_params)
    all_params <- all_params[!duplicated(names(all_params))]
    drop_noise <- vapply(names(all_params), function(k) {
      v <- all_params[[k]]
      (k %in% c("na.rm", "orientation") &&
         (isFALSE(v) || (length(v) == 1 && is.na(v)))) ||
        (k == "fun.args" && is.list(v) && length(v) == 0)
    }, logical(1))
    args <- c(args, fmt_params(all_params[!drop_noise]))

    if (!posn %in% "position_identity") {
      args <- c(args, paste0('position = "', sub("^position_", "", posn), '"'))
    }
    if (isFALSE(ly$inherit.aes)) {
      args <- c(args, "inherit.aes = FALSE")
    }
    add("  ", geom, "(", paste(args, collapse = ", "), ") +")
  }

  # ---- scales --------------------------------------------------------------
  for (sc in o$scales$scales) {
    aesk <- sc$aesthetics[1]
    call <- tryCatch(sc$call, error = function(e) NULL)
    if (!is.null(call)) {
      add("  ", paste(deparse(call), collapse = ""), " +")
    } else {
      add("  scale_", aesk, "_*(...) +   # ", class(sc)[1])
    }
  }

  # ---- facet (non-default) -------------------------------------------------
  fc <- class(o$facet)[1]
  if (!fc %in% "FacetNull") {
    add("  ", snake(fc, "Facet"), "(...) +")
  }

  # ---- coord (non-default) -------------------------------------------------
  cc <- class(o$coordinates)[1]
  if (!cc %in% "CoordCartesian") {
    add("  ", snake(cc, "Coord"), "() +")
  }

  # ---- labels --------------------------------------------------------------
  labs <- o$labels
  if (length(labs)) {
    parts <- vapply(names(labs), function(k) {
      v <- labs[[k]]
      if (is.character(v) && length(v) == 1) {
        paste0(k, ' = "', v, '"')
      } else {
        paste0(k, " = ", paste(deparse(v), collapse = ""))
      }
    }, character(1))
    add("  labs(", paste(parts, collapse = ", "), ") +")
  }

  # ---- theme (resolved, flattened — see caveat) ----------------------------
  th <- o$theme
  is_complete <- isTRUE(attr(th, "complete"))
  set_elems <- names(th)[!vapply(th, is.null, logical(1))]
  if (is_complete) {
    add("  theme_*() +  # complete theme (", length(set_elems),
        " elements); original theme_*()/element_*() calls are lost")
  } else if (length(set_elems)) {
    shown <- paste(utils::head(set_elems, 12), collapse = ", ")
    more  <- if (length(set_elems) > 12) {
      paste0(", ... +", length(set_elems) - 12, " more")
    } else {
      ""
    }
    add("  theme(  # ", length(set_elems), " element(s) set explicitly\n",
        "    ", shown, more, "\n  )")
  }

  # trim the trailing " +" on the last emitted line
  out[length(out)] <- sub(" \\+$", "", out[[length(out)]])
  code <- paste(unlist(out), collapse = "\n")
  # Emit single quotes for string literals. The reconstruction is stored inside
  # the CanvasXpress object and re-serialized by the engine's stringifyJSON, which
  # strips backslashes -- so a double-quoted (hence backslash-escaped) string would
  # corrupt the JSON. Single quotes are valid R and need no escaping. (A string
  # literal that itself contains a single quote is the rare exception.)
  gsub('"', "'", code)
}
