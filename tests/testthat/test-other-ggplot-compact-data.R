## Compact serialization of large ggplot data matrices (gg_serialize /
## gg_matrix_to_json): numeric columns are written unquoted and without
## pretty-print whitespace; small plots keep the historical output.

cell_strings <- function(rows) {
  matrix(unlist(lapply(rows, function(r) {
    vapply(r, function(x) if (is.null(x)) NA_character_ else as.character(x), "")
  })), ncol = length(rows[[1]]), byrow = TRUE)
}

legacy_matrix <- function() {
  rbind(c("Id", "n", "f", "s"),
        cbind(paste0("r", 1:5),
              c("1", "20", "300", "4", "5"),
              c("0.5", "1e+05", "-2.25", "3", NA),
              c("a", "b\"q", "c\\d", "007", "x\ty")))
}

test_that("small plots keep the historical pretty serialization", {
  cx <- list(data = legacy_matrix(), config = list(graphType = "Bar"))
  expect_identical(canvasXpress:::gg_serialize(cx),
                   jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE))
})

test_that("numeric columns are typed and every value is preserved", {
  m <- legacy_matrix()
  rows <- jsonlite::fromJSON(canvasXpress:::gg_matrix_to_json(m),
                             simplifyVector = FALSE)
  expect_length(rows, nrow(m))
  expect_true(is.numeric(rows[[2]][[2]]))   # n: all numbers -> unquoted
  expect_true(is.numeric(rows[[2]][[3]]))   # f: numbers plus an NA -> unquoted
  expect_null(rows[[6]][[3]])               # NA stays null
  expect_type(rows[[2]][[4]], "character")  # s: not numeric -> quoted
  expect_type(rows[[2]][[1]], "character")  # Id is always quoted
  expect_type(rows[[1]][[2]], "character")  # header is always quoted
  expect_identical(cell_strings(rows), m)   # nothing lost or altered
})

test_that("a leading zero or non-numeric token keeps the column quoted", {
  m <- rbind(c("Id", "z"), cbind(c("a", "b"), c("007", "5")))
  rows <- jsonlite::fromJSON(canvasXpress:::gg_matrix_to_json(m),
                             simplifyVector = FALSE)
  expect_type(rows[[2]][[2]], "character")
  expect_identical(cell_strings(rows), m)
})

test_that("an unescapable control character falls back to the standard path", {
  m <- rbind(c("Id", "s"), cbind("a", "bell\001"))
  expect_null(canvasXpress:::gg_matrix_to_json(m))
})

test_that("large matrices serialize compactly and parse to the same plot", {
  cx <- list(data = legacy_matrix(), config = list(graphType = "Bar"))
  legacy <- jsonlite::fromJSON(
    jsonlite::toJSON(cx, pretty = TRUE, auto_unbox = TRUE),
    simplifyVector = FALSE)
  testthat::local_mocked_bindings(gg_compact_rows = 1L, .package = "canvasXpress")
  compact <- canvasXpress:::gg_serialize(cx)
  expect_s3_class(compact, "json")
  parsed <- jsonlite::fromJSON(compact, simplifyVector = FALSE)
  expect_identical(parsed$config, legacy$config)
  expect_identical(cell_strings(parsed$data), cell_strings(legacy$data))
  expect_true(is.numeric(parsed$data[[2]][[2]]))
})
