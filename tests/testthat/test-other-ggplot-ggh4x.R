context("ggplot as list - ggh4x")

test_that("ggplot.as.list - ggh4x per-strip fill colors (gg_strip_colors)", {
    skip_if(getRversion() < "4.1.0")
    skip_if_not_installed("ggplot2")

    strip_cols <- ggh4x::strip_themed(
        background_x = ggh4x::elem_list_rect(fill = c("skyblue", "salmon", "lightgreen"))
    )

    gplot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
        geom_point() +
        ggh4x::facet_wrap2(vars(factor(cyl)), strip = strip_cols)

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_true(cxplot_list$isGGPlot)
    expect_false(is.null(cxplot_list$theme$strip.background.fill))
})
