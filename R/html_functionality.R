#' Stand-Alone HTML Page Creation
#'
#' This function creates and returns a stand-alone HTML page containing
#' the given canvasXpress object.  Width and height can be inferred from
#' the canvasXpress object (default) or overridden for the page output.
#'
#' @param chartObject a canvasXpress plot object
#' @param width       plot width override for the HTML page (valid CSS units)  - default = NULL
#' @param height      plot height override for the HTML page (valid CSS units) - default = NULL
#'
#' @return a character string containing a self-contained html page
#'
#' @examples
#' \dontrun{
#' my_chart <- canvasXpress(data      = data.frame(Sample1 = c(33, 48),
#'                                                 Sample2 = c(44, 59),
#'                                                 Sample3 = c(55, 6)),
#'                          graphType = "Bar",
#'                          title     = "Example Bar Chart",
#'                          width     = "600px")
#'
#' # create a page using the chart dimensions on my_chart
#' html_page <- cxHtmlPage(my_chart)
#'
#' # or change the chart width/height for this page:
#' html_page <- cxHtmlPage(my_chart, width = "100%", height = "70vh")
#'
#' # save page for viewing/sharing
#' writeLines(html_page, tempfile(fileext = ".html"))
#' }
#'
#' @export
cxHtmlPage <- function(chartObject, width = NULL, height = NULL) {
    if (any(is.null(chartObject),
            is.na(chartObject),
            !inherits(chartObject, "canvasXpress"))) {
        stop("chartObject must be supplied and be a canvasXpress object")
    }

    tryCatch({
        if (!is.null(width))  htmltools::validateCssUnit(width)
        if (!is.null(height)) htmltools::validateCssUnit(height)
    },
    error = function(e) {
        stop("If width or height are specified they must be valid CSS units.")
    })

    result <- NULL

    tryCatch({
        if (!is.null(width)) {
            chartObject$width <- width
        }

        if (!is.null(height)) {
            chartObject$height <- height
        }

        tmp_widget <- tempfile("cx_widget_", fileext = ".html")
        tmp_rmd    <- tempfile("cx_rmd_",    fileext = ".Rmd")
        tmp_html   <- tempfile("cx_html_",   fileext = ".html")

        on.exit(try(unlink(c(tmp_widget, tmp_rmd, tmp_html)), silent = TRUE),
                add = TRUE)

        # 1. Save the widget as a self-contained HTML file (JS/CSS inlined).
        htmlwidgets::saveWidget(chartObject,
                                file          = tmp_widget,
                                selfcontained = TRUE,
                                title         = "")

        # 2. Extract <head> and <body> inner content as raw byte vectors.
        widget_bytes <- readBin(con  = tmp_widget,
                                what = "raw",
                                n    = file.info(tmp_widget)$size)

        tag_positions <- locate_html_tags(widget_bytes)

        head_inner <- widget_bytes[(tag_positions$head_open_end + 1):(tag_positions$head_close_start - 1)]
        body_inner <- widget_bytes[(tag_positions$body_open_end + 1):(tag_positions$body_close_start - 1)]

        head_inner <- escape_nuls(head_inner)
        body_inner <- escape_nuls(body_inner)

        # 3. Render a minimal Rmd with just a placeholder where the widget
        #    should go. Pandoc never sees the widget content, so NUL bytes
        #    and other non-UTF-8 sequences in the minified JS can't be
        #    corrupted.
        placeholder <- "<!--CX_WIDGET_PLACEHOLDER_9F3A2C7E-->"

        rmd_text <- paste(
            "---",
            "title: '&nbsp;'",
            "output: html_document",
            "---",
            "",
            "```{=html}",
            placeholder,
            "```",
            "",
            sep = "\n"
        )

        con <- file(tmp_rmd, open = "wb")
        writeBin(charToRaw(rmd_text), con)
        close(con)

        rmarkdown::render(
            input         = tmp_rmd,
            output_format = rmarkdown::html_document(self_contained = FALSE),
            output_file   = basename(tmp_html),
            output_dir    = dirname(tmp_html),
            quiet         = TRUE
        )

        # 4. Splice the widget fragment into the placeholder position,
        #    working entirely with raw bytes.
        rendered <- readBin(con  = tmp_html,
                            what = "raw",
                            n    = file.info(tmp_html)$size)

        placeholder_bytes <- charToRaw(placeholder)
        hits              <- grepRaw(pattern = placeholder_bytes, rendered, fixed = TRUE, all = TRUE)

        if (length(hits) != 1) {
            stop("Expected exactly one placeholder in rendered HTML, found ",
                 length(hits))
        }

        fragment <- c(head_inner, charToRaw("\n"), body_inner)

        start <- hits[1]
        end   <- start + length(placeholder_bytes) - 1
        final_bytes <- c(rendered[seq_len(start - 1)],
                         fragment,
                         rendered[(end + 1):length(rendered)])

        # 5. Return as a character string.
        result <- rawToChar(final_bytes)
    },
    error = function(e) {
        warning("Unable to create page due to: ", e$message)
    })

    result
}


# Replace every 0x00 byte with the 4 ASCII bytes: \  x  0  0
# This is safe inside JS string/regex/template literals, which is where
# minified libraries put any NULs. The transformation is byte-level and
# does not require decoding the payload as text.
escape_nuls <- function(bytes) {
    cleaned_bytes <- bytes
    nul_positions <- which(bytes == as.raw(0))

    if (length(nul_positions) > 0) {
        # 4 bytes: 5c 78 30 30
        escape_seq <- charToRaw("\\x00")

        # Build the output in one pass: interleave chunks between NULs
        # with the escape sequence.
        n      <- length(bytes)
        chunks <- vector("list", 2 * length(nul_positions) + 1)
        prev <- 1
        idx  <- 1
        for (p in nul_positions) {
            chunks[[idx]] <- raw(0)
            if (p > prev) {
                chunks[[idx]] <- bytes[prev:(p - 1)]
            }
            chunks[[idx + 1]] <- escape_seq
            prev              <- p + 1
            idx               <- idx + 2
        }

        chunks[[idx]] <- raw(0)
        if (prev <= n) {
            chunks[[idx]] <- bytes[prev:n]
        }

        cleaned_bytes <- do.call(c, chunks)
    }

    cleaned_bytes
}


# Locate <head>...</head> and <body>...</body> byte positions in a
# raw vector containing HTML. Returns 1-based inclusive positions for
# the opening and closing tag bytes.
#
# We can't call rawToChar() on the full vector because it may contain
# embedded NULs. Instead we make a sanitized copy (NUL -> space) purely
# for regex position lookup; the returned positions apply to the
# original raw vector
locate_html_tags <- function(bytes) {
    sanitized                         <- bytes
    sanitized[sanitized == as.raw(0)] <- charToRaw(" ")

    scan_str           <- rawToChar(sanitized)
    Encoding(scan_str) <- "bytes"

    head_open  <- locate_pattern(pattern = "<head\\b[^>]*>", text = scan_str)
    head_close <- locate_pattern(pattern = "</head\\s*>",    text = scan_str, start = head_open$end + 1)
    body_open  <- locate_pattern(pattern = "<body\\b[^>]*>", text = scan_str)
    body_close <- locate_pattern(pattern = "</body\\s*>",    text = scan_str, start = body_open$end + 1)

    list(
        head_open_start  = head_open$start,
        head_open_end    = head_open$end,
        head_close_start = head_close$start,
        head_close_end   = head_close$end,
        body_open_start  = body_open$start,
        body_open_end    = body_open$end,
        body_close_start = body_close$start,
        body_close_end   = body_close$end
    )
}


locate_pattern <- function(pattern, text, start = 1) {
    slice     <- substr(x = text, start = start, stop = nchar(text, type = "bytes"))
    match_loc <- regexpr(pattern = pattern, text = slice, perl = TRUE, ignore.case = TRUE)

    if (match_loc == -1) {
        stop("Could not locate '", pattern, "' in widget HTML")
    }

    list(start = as.integer(match_loc) + start - 1,
         end   = as.integer(match_loc) + start - 1 + attr(match_loc, "match.length") - 1)
}
