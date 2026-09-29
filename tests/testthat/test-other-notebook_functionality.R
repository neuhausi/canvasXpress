context("notebook_functionality")


test_that("cxDataUri reads file binary and returns a valid base64 data URI", {
  tmp_file <- tempfile(fileext = ".txt")
  writeLines("hello world", tmp_file)
  on.exit(unlink(tmp_file))

  res <- canvasXpress:::cxDataUri(tmp_file, "text/plain")

  expect_type(res, "character")
  expect_true(startsWith(res, "data:text/plain;base64,"))
  expect_false(grepl("[\r\n]", res))
})


test_that("cxNotebookDependency handles canvasXpress engine, missing src, and script/stylesheet inlining", {
  # 1. canvasXpress dependency branch (links to CDN)
  dep_cx <- list(name = "canvasXpress")
  res_cx <- canvasXpress:::cxNotebookDependency(dep_cx)
  expect_true(grepl(canvasXpress:::CX_NOTEBOOK_CSS_URL, res_cx, fixed = TRUE))
  expect_true(grepl(canvasXpress:::CX_NOTEBOOK_JS_URL, res_cx, fixed = TRUE))

  # 2. Dependency without local src$file (e.g. remote or null)
  dep_null_src <- list(name = "remote_dep", src = list(file = NULL))
  expect_equal(canvasXpress:::cxNotebookDependency(dep_null_src), "")

  # 3. Local dependency with existing and non-existing JS and CSS files
  tmp_dir <- tempfile(pattern = "dep_dir_")
  dir.create(tmp_dir)
  js_file  <- "valid.js"
  css_file <- "valid.css"

  writeLines("console.log('test');", file.path(tmp_dir, js_file))
  writeLines("body { color: red; }", file.path(tmp_dir, css_file))
  on.exit(unlink(tmp_dir, recursive = TRUE))

  dep_custom <- list(
    name       = "custom_dep",
    src        = list(file = tmp_dir),
    script     = c(js_file, "missing.js"),
    stylesheet = c(css_file, "missing.css")
  )

  res_custom <- canvasXpress:::cxNotebookDependency(dep_custom)

  # Check that existing JS script tag was built with data URI
  expect_true(grepl("<script title=\"custom_dep\" src=\"data:application/javascript;base64,", res_custom, fixed = TRUE))
  # Check that existing CSS link tag was built with data URI
  expect_true(grepl("<link href=\"data:text/css;charset-utf-8;base64,", res_custom, fixed = TRUE))
  # Check missing files were safely skipped
  expect_false(grepl("missing.js", res_custom, fixed = TRUE))
  expect_false(grepl("missing.css", res_custom, fixed = TRUE))
})


test_that("cxNotebookHtml generates skeleton html and handles selfcontained option", {
  # Create a valid dummy canvasXpress htmlwidget structure with package attribute set
  dummy_widget <- structure(
    list(
      x = list(),
      width = NULL,
      height = NULL,
      sizingPolicy = htmlwidgets::sizingPolicy(),
      dependencies = list(
        htmltools::htmlDependency(
          name    = "canvasXpress",
          version = "1.0",
          src     = c(file = tempdir())
        )
      ),
      elementId = "cx_test_1"
    ),
    class   = c("canvasXpress", "htmlwidget"),
    package = "canvasXpress"
  )

  # 1. Standard CDN skeleton rendering
  res_cdn <- canvasXpress:::cxNotebookHtml(dummy_widget)
  expect_true(grepl("<!doctype html>", res_cdn, fixed = TRUE))
  expect_true(grepl(canvasXpress:::CX_NOTEBOOK_JS_URL, res_cdn, fixed = TRUE))

  # 2. Self-contained fallback mode using option
  skip_if_not_installed("repr")

  old_opts <- options(canvasXpress.notebook.selfcontained = TRUE)
  on.exit(options(old_opts))

  res_selfcontained <- canvasXpress:::cxNotebookHtml(dummy_widget)
  expect_type(res_selfcontained, "character")
})

# ------------------------------------------------------------------------------
# 4. .onLoad
# ------------------------------------------------------------------------------
test_that(".onLoad registers S3 method when repr is available and handles missing repr safely", {
  # 1. Test registration when repr is available
  skip_if_not_installed("repr")
  expect_silent(canvasXpress:::.onLoad("canvasXpress", "canvasXpress"))

  # 2. Test fallback when repr namespace is unavailable
  ns       <- asNamespace("base")
  orig_req <- ns$requireNamespace

  unlockBinding("requireNamespace", ns)
  assign("requireNamespace", function(package, ...) {
    if (package == "repr") return(FALSE)
    orig_req(package, ...)
  }, envir = ns)
  lockBinding("requireNamespace", ns)

  on.exit({
    unlockBinding("requireNamespace", ns)
    assign("requireNamespace", orig_req, envir = ns)
    lockBinding("requireNamespace", ns)
  })

  expect_silent(canvasXpress:::.onLoad("canvasXpress", "canvasXpress"))
})
