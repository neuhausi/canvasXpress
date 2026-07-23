context("canvasXpress cxHtmlPage creation")
skip_if_offline(host = "www.canvasxpress.org")


test_that("scatterplot cxHtmlPage", {
    tryCatch({
        y <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-dat.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
        x <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-smp.txt", header = TRUE, sep = "\t", quote = "", row.names = 1, fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    },
    error = function(e) {
        skip('Unable to read data files')
    })

    if (is.null(rmarkdown:::find_pandoc()$dir)) {
        skip('Pandoc not installed')
    }

    result <- canvasXpress(data        = y,
                           smpAnnot    = x,
                           graphType   = "Scatter2D",
                           title       = "Scatterplot - webshot print")

    html_page <- cxHtmlPage(result)
    expect_true(!is.null(html_page))

    expect_error(cxHtmlPage(result, width  = "bad"))
    expect_error(cxHtmlPage(result, height = "bad"))

    expect_true(!is.null(cxHtmlPage(result, width = "50vw", height = "100%")))
    expect_true(!is.null(cxHtmlPage(result, width = "100px", height = "20vh")))
    expect_true(!is.null(cxHtmlPage(result, width = 300, height = 600)))
    expect_true(!is.null(cxHtmlPage(result)))
})


##################

## No new package dependencies: only testthat is used (mocking via
## testthat::local_mocked_bindings(), available since testthat 3.1.4).
## Run these via devtools::test() / R CMD check so testthat can identify
## the package under test and correctly intercept rmarkdown::render() /
## htmlwidgets::saveWidget() calls made from inside cxHtmlPage().

# ---------------------------------------------------------------------------
# Shared fixture / helpers
# ---------------------------------------------------------------------------

skip_if_no_pandoc <- function() {
  if (is.null(rmarkdown:::find_pandoc()$dir)) {
    skip("Pandoc not installed")
  }
}

# Builds the same real scatterplot canvasXpress object used across these
# tests. Returns NULL (rather than failing) if the remote data files can't
# be read, so callers can skip().
get_scatter_chart <- function() {
  y <- NULL
  x <- NULL
  tryCatch({
    y <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-dat.txt",
                     header = TRUE, sep = "\t", quote = "", row.names = 1,
                     fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
    x <- read.table("https://www.canvasxpress.org/data/r/cX-ageheightt-smp.txt",
                     header = TRUE, sep = "\t", quote = "", row.names = 1,
                     fill = TRUE, check.names = FALSE, stringsAsFactors = FALSE)
  },
  error = function(e) NULL)

  if (is.null(y) || is.null(x)) {
    return(NULL)
  }

  canvasXpress(data      = y,
               smpAnnot  = x,
               graphType = "Scatter2D",
               title     = "Scatterplot - cxHtmlPage tests")
}

# The literal placeholder used internally by cxHtmlPage().
cx_placeholder <- "<!--CX_WIDGET_PLACEHOLDER_9F3A2C7E-->"

# ---------------------------------------------------------------------------
# End-to-end behavior (real widget, real pandoc render)
# ---------------------------------------------------------------------------

test_that("scatterplot cxHtmlPage", {
  skip_if_no_pandoc()

  result <- get_scatter_chart()
  if (is.null(result)) {
    skip("Unable to read data files")
  }

  html_page <- cxHtmlPage(result)
  expect_true(!is.null(html_page))
  expect_error(cxHtmlPage(result, width  = "bad"))
  expect_error(cxHtmlPage(result, height = "bad"))
  expect_true(!is.null(cxHtmlPage(result, width = "50vw", height = "100%")))
  expect_true(!is.null(cxHtmlPage(result, width = "100px", height = "20vh")))
  expect_true(!is.null(cxHtmlPage(result, width = 300, height = 600)))
  expect_true(!is.null(cxHtmlPage(result)))
})

# ---------------------------------------------------------------------------
# Placeholder-count validation
#
# saveWidget/locate_html_tags/escape_nuls are left real (so the head/body
# extraction is genuinely exercised); only rmarkdown::render is mocked, to
# control exactly how many times the placeholder shows up in the "rendered"
# document.
# ---------------------------------------------------------------------------

test_that("cxHtmlPage warns and returns NULL when the placeholder is missing (0 hits)", {
  skip_if_no_pandoc()

  result <- get_scatter_chart()
  if (is.null(result)) {
    skip("Unable to read data files")
  }

  local_mocked_bindings(
    render = function(input, output_format, output_file, output_dir, quiet) {
      path <- file.path(output_dir, output_file)
      writeLines("<html><body>no placeholder in here</body></html>", path)
    },
    .package = "rmarkdown"
  )

  expect_warning(
    html_page <- cxHtmlPage(result),
    regexp = "Expected exactly one placeholder in rendered HTML, found 0"
  )
  expect_null(html_page)
})

test_that("cxHtmlPage warns and returns NULL when the placeholder appears twice (2 hits)", {
  skip_if_no_pandoc()

  result <- get_scatter_chart()
  if (is.null(result)) {
    skip("Unable to read data files")
  }

  local_mocked_bindings(
    render = function(input, output_format, output_file, output_dir, quiet) {
      path <- file.path(output_dir, output_file)
      writeLines(paste0("<html><body>", cx_placeholder, cx_placeholder, "</body></html>"),
                 path)
    },
    .package = "rmarkdown"
  )

  expect_warning(
    html_page <- cxHtmlPage(result),
    regexp = "Expected exactly one placeholder in rendered HTML, found 2"
  )
  expect_null(html_page)
})

# ---------------------------------------------------------------------------
# General error -> warning wrapping (the outer tryCatch's `error` handler)
# ---------------------------------------------------------------------------

test_that("cxHtmlPage converts a saveWidget failure into a warning and returns NULL", {
  skip_if_no_pandoc()

  result <- get_scatter_chart()
  if (is.null(result)) {
    skip("Unable to read data files")
  }

  local_mocked_bindings(
    saveWidget = function(...) stop("simulated saveWidget failure"),
    .package = "htmlwidgets"
  )

  expect_warning(
    html_page <- cxHtmlPage(result),
    regexp = "Unable to create page due to: simulated saveWidget failure"
  )
  expect_null(html_page)
})

test_that("cxHtmlPage converts an rmarkdown::render failure into a warning and returns NULL", {
  skip_if_no_pandoc()

  result <- get_scatter_chart()
  if (is.null(result)) {
    skip("Unable to read data files")
  }

  local_mocked_bindings(
    render = function(...) stop("simulated render failure"),
    .package = "rmarkdown"
  )

  expect_warning(
    html_page <- cxHtmlPage(result),
    regexp = "Unable to create page due to: simulated render failure"
  )
  expect_null(html_page)
})

# ---------------------------------------------------------------------------
# escape_nuls (internal, unexported helper) - tested directly
# ---------------------------------------------------------------------------

test_that("escape_nuls leaves byte vectors with no NUL bytes unchanged", {
  bytes <- charToRaw("hello world")
  expect_identical(escape_nuls(bytes), bytes)
})

test_that("escape_nuls replaces a single embedded NUL byte", {
  bytes  <- c(charToRaw("ab"), as.raw(0), charToRaw("cd"))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "ab\\x00cd")
})

test_that("escape_nuls replaces a NUL byte at the very start", {
  bytes  <- c(as.raw(0), charToRaw("abc"))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "\\x00abc")
})

test_that("escape_nuls replaces a NUL byte at the very end", {
  bytes  <- c(charToRaw("abc"), as.raw(0))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "abc\\x00")
})

test_that("escape_nuls replaces consecutive NUL bytes", {
  bytes  <- c(charToRaw("a"), as.raw(0), as.raw(0), charToRaw("b"))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "a\\x00\\x00b")
})

test_that("escape_nuls replaces multiple scattered NUL bytes", {
  bytes  <- c(charToRaw("x"), as.raw(0), charToRaw("y"), as.raw(0), charToRaw("z"))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "x\\x00y\\x00z")
})

test_that("escape_nuls handles an all-NUL byte vector", {
  bytes  <- as.raw(rep(0, 3))
  result <- escape_nuls(bytes)
  expect_identical(rawToChar(result), "\\x00\\x00\\x00")
})

test_that("escape_nuls handles an empty byte vector", {
  bytes  <- raw(0)
  result <- escape_nuls(bytes)
  expect_identical(result, raw(0))
})
