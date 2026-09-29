context("ggplot fixtures golden")

# Golden test for the per-layer pipeline (P0): the ggplot.as.list() output for
# every corpus entry must match its committed fixture byte-for-byte. This is the
# same JSON the JS regression suite renders, so any change to the emitted object
# is caught here (fast, no browser) before it reaches the pixel snapshots.
#
# If a diff is INTENDED, regenerate the goldens deliberately:
#   Rscript tools/gen-ggplot-fixtures.R   (from R/canvasXpress)
# then refresh the JS baselines:
#   npx playwright test ggplot-fixtures --update-snapshots   (from tests/)
#
# Corpus: helper-ggplot-corpus.R   Pipeline: docs/plans/ggplot/perlayer-ggplot-plan.md

test_that("ggplot.as.list output matches committed golden fixtures", {
    skip_if(getRversion() < "4.5.2")
    skip_if_not_installed("ggplot2")

    corpus      <- cx_ggplot_corpus()
    fixture_dir <- test_path("fixtures", "ggplot")

    for (entry in corpus) {
        golden_file <- file.path(fixture_dir, paste0(entry$name, ".json"))
        if (!file.exists(golden_file)) {
            fail(sprintf(
                "Missing golden fixture '%s'. Run tools/gen-ggplot-fixtures.R.",
                entry$name))
            next
        }
        generated <- as.character(ggplot.as.list(entry$plot))
        golden    <- paste(readLines(golden_file, warn = FALSE), collapse = "\n")
        expect_identical(
            generated, golden,
            info = sprintf(
                "Fixture '%s' drifted; if intended, rerun tools/gen-ggplot-fixtures.R.",
                entry$name))
    }
})
