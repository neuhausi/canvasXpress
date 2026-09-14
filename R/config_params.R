#' CanvasXpress configuration parameter catalog
#'
#' Returns a data.frame describing every CanvasXpress config parameter - its
#' name, type, default value, allowed values (for enumerated parameters) and a
#' one-line description. The catalog is generated from the CanvasXpress config
#' schema (the same source as the JavaScript \code{.d.ts} and Python
#' \code{CXConfig} types) and shipped with the package under
#' \code{inst/config/config-params.json}.
#'
#' Because \code{\link{canvasXpress}} accepts config parameters through
#' \code{...}, R cannot autocomplete them; this catalog is the R equivalent of
#' those typed surfaces - a searchable, documented reference you can query
#' programmatically and validate against with \code{\link{cxValidateConfig}}.
#'
#' @return A data.frame with columns \code{parameter}, \code{type},
#'   \code{default}, \code{options} (a list-column of allowed values, or
#'   \code{NULL}) and \code{description}. The result is memoised for the session.
#'
#' @examples
#' \dontrun{
#' params <- cxConfigParams()
#' # look up one parameter
#' params[params$parameter == "graphType", ]
#' # every parameter whose description mentions "legend"
#' params[grepl("legend", params$description, ignore.case = TRUE), "parameter"]
#' }
#'
#' @seealso \code{\link{cxValidateConfig}}, \code{\link{canvasXpress}}
#' @export
cxConfigParams <- function() {
    if (!is.null(.cx_config_params_cache$df)) {
        return(.cx_config_params_cache$df)
    }

    path <- system.file("config", "config-params.json", package = "canvasXpress")
    if (!nzchar(path) || !file.exists(path)) {
        stop("CanvasXpress config catalog not found - reinstall the package or run build.py --schema.")
    }

    catalog <- jsonlite::fromJSON(path, simplifyVector = FALSE)
    entries <- catalog$parameters

    df <- data.frame(
        parameter   = vapply(entries, function(e) e$parameter, character(1)),
        type        = vapply(entries, function(e) e$type, character(1)),
        default     = vapply(entries, function(e) .cx_scalar_or_na(e$default), character(1)),
        description = vapply(entries, function(e) if (is.null(e$description)) NA_character_ else e$description, character(1)),
        stringsAsFactors = FALSE
    )
    # options is a per-row list-column (character vector of allowed values or NULL)
    df$options <- lapply(entries, function(e) if (is.null(e$options)) NULL else unlist(e$options, use.names = FALSE))

    .cx_config_params_cache$df <- df
    df
}

#' Validate a CanvasXpress configuration against the parameter catalog
#'
#' Checks a named config list against \code{\link{cxConfigParams}} and reports
#' parameters that are not recognised and enumerated parameters set to a value
#' outside their allowed options. This mirrors the compile-time checking the
#' JavaScript \code{.d.ts} and Python \code{CXConfig} types give consumers, for R
#' code where config flows through \code{...} and is otherwise unchecked.
#'
#' Recognised-but-unlisted parameters (obfuscation aliases, or a parameter newer
#' than the installed catalog) are reported as unknown; that is a hint, not proof
#' of an error - \code{\link{canvasXpress}} still accepts any parameter.
#'
#' @param config A named list of CanvasXpress config parameters (the same
#'   \code{name = value} pairs you would pass to \code{\link{canvasXpress}} via
#'   \code{...}).
#' @param strict Logical; if \code{TRUE}, raise an error when any issue is found
#'   instead of warning. Default \code{FALSE}.
#'
#' @return Invisibly, a list with elements \code{unknown} (character vector of
#'   unrecognised parameter names) and \code{bad_options} (a named list mapping
#'   each offending enumerated parameter to the invalid value supplied). A config
#'   with no issues returns two empty elements and emits no message.
#'
#' @examples
#' \dontrun{
#' cxValidateConfig(list(graphType = "Bar", colorScheme = "Tableau"))   # clean
#' cxValidateConfig(list(graphType = "NotAType", wat = 1))              # warns
#' }
#'
#' @seealso \code{\link{cxConfigParams}}, \code{\link{canvasXpress}}
#' @export
cxValidateConfig <- function(config, strict = FALSE) {
    if (is.null(config)) config <- list()
    if (!is.list(config) || (length(config) > 0 && is.null(names(config)))) {
        stop("'config' must be a named list of parameter = value pairs.")
    }

    params  <- cxConfigParams()
    known   <- params$parameter
    supplied <- names(config)
    supplied <- supplied[nzchar(supplied)]

    unknown <- supplied[!(supplied %in% known)]

    bad_options <- list()
    for (nm in supplied) {
        if (!(nm %in% known)) next
        allowed <- params$options[[match(nm, known)]]
        if (is.null(allowed)) next
        value <- config[[nm]]
        # Only validate scalar string values against the enum; skip vectors/expressions.
        if (length(value) == 1 && is.character(value) && !(value %in% allowed)) {
            bad_options[[nm]] <- value
        }
    }

    issues <- length(unknown) > 0 || length(bad_options) > 0
    if (issues) {
        msg <- character(0)
        if (length(unknown) > 0) {
            msg <- c(msg, paste0("Unknown parameter(s): ", paste(unknown, collapse = ", ")))
        }
        for (nm in names(bad_options)) {
            allowed <- params$options[[match(nm, known)]]
            msg <- c(msg, paste0("'", nm, "' = '", bad_options[[nm]],
                                 "' is not an allowed value (options: ",
                                 paste(allowed, collapse = ", "), ")"))
        }
        text <- paste(msg, collapse = "\n")
        if (strict) stop(text) else warning(text, call. = FALSE)
    }

    invisible(list(unknown = unknown, bad_options = bad_options))
}

# ---- internal ---------------------------------------------------------------

# Session cache for the parsed catalog (avoids re-reading the JSON each call).
.cx_config_params_cache <- new.env(parent = emptyenv())
.cx_config_params_cache$df <- NULL

# Coerce a scalar default to a single string; lists/vectors/NULL become NA.
.cx_scalar_or_na <- function(value) {
    if (is.null(value) || length(value) != 1) return(NA_character_)
    if (is.list(value)) return(NA_character_)
    as.character(value)
}
