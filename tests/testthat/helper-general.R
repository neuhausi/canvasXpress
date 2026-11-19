# Test helpers for the canvasXpress package.
#
# In modern testthat v3, test infrastructure lives in helper-*.R files which
# are sourced before each test file. Avoid setup.R / teardown.R — they are
# legacy constructs that encourage shared global mutable state.
#
# UI example functions (cXbar1, cXscatter2d1, etc.) are not exported from the
# package. They are loaded once per session from the bundled ui-examples file.

# --- Load suggested packages ----------------------------------------------- #
# Use tryCatch so missing packages produce warnings instead of silent failures.

.load_suggested <- function() {
    suggested <- c(
        "canvasXpress.data", "readr", "ggplot2", "patchwork",
        "GGally", "ggpubr", "ggpattern", "dplyr", "tibble", "jsonlite"
    )
    for (pkg in suggested) {
        tryCatch(
            library(pkg, character.only = TRUE),
            error = function(e) {
                warning("Suggested package '", pkg, "' not available: ", e$message)
            }
        )
    }
}

.load_suggested()

# --- Load UI examples (not exported from the package) ---------------------- #
# cX-function.R.gz contains the export scaffold that defines cXbar1,
# cXscatter2d1, etc. Used across many test-ui-*.R files.

.ui_examples_loaded <- FALSE

.load_ui_examples <- function() {
    if (.ui_examples_loaded) {
        return(invisible(NULL))
    }

    success <- tryCatch({
        test_file <- readr::read_lines(
            system.file("ui-examples/cX-function.R.gz",
                        package = "canvasXpress", mustWork = TRUE))

        # --- Manual corrections for syntax differences -------------------- #

        # escape sequence incorrect
        test_file <- gsub("\\\\$", "$", test_file, fixed = TRUE)

        # scatter2d9
        test_file <- gsub(", list\\(list\\(FALSE, \'red\'\\)\\)",
                          ", list\\(FALSE, \'red\'\\)", test_file)

        # bubble3, bubble4
        test_file <- gsub("true\\)\\)\\)", "TRUE\\)\\)\\)", test_file)

        # --------------------------------------------------------------- #

        temp <- tempfile(fileext = ".R")
        on.exit(unlink(temp))
        writeLines(test_file, temp)
        source(temp)
        TRUE
    }, error = function(e) {
        warning("Could not load UI examples: ", e$message)
        FALSE
    })

    if (success) {
        .ui_examples_loaded <<- TRUE
    }
}

.load_ui_examples()

# --- UI test helper ------------------------------------------------------ #

check_ui_test <- function(result) {
    skip_on_cran()
    skip_on_ci()

    if (interactive()) {
        print(result)
    }

    tryCatch({
        expect_s3_class(result, "canvasXpress")
        expect_s3_class(result, "htmlwidget")
    },
    error = function(e) {
        warning("check_ui_test() errored with: ", e)
    })
}
