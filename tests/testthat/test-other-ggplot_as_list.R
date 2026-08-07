context("ggplot as list")

test_that("ggplot.as.list - pass non ggplot2 object", {
    skip_if_not_installed("ggplot2")
    expect_error(ggplot.as.list("test"), regexp = "Not a ggplot or ggmatrix object")
})


test_that("ggplot.as.list - ggplot2 GeomPoint", {
    skip_if_not_installed("ggplot2")

    gplot_orig <- ggplot(data = mtcars, aes(x = wt, y = mpg)) +
        geom_point(aes(color = cyl), position = "jitter")
    gplot <- gplot_orig +
        theme(legend.justification   = c(1, 1),
              legend.title           = element_blank(),
              panel.background       = element_rect(fill = "white", colour = "grey50")) +
        scale_colour_viridis_c() +
        ggtitle("GGPlot Example w/Hover") +
        xlab("wt") +
        ylab("mpg")

    cxplot      <- ggplot.as.list(gplot)
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_true(length(cxplot_list$data) == 33)
    expect_equal(cxplot_list$data[[2]][[1]], "Mazda RX4")

    gplot <- gplot_orig +
        scale_colour_gradientn(colours = terrain.colors(10))
    expect_equal(class(ggplot.as.list(gplot)), "json")

    gplot <- gplot_orig +
        facet_wrap(vars(drat = cut_number(drat, 3)), labeller = label_both)
    expect_equal(class(ggplot.as.list(gplot)), "json")
})


test_that("ggplot.as.list - ggplot2 GeomBin2d", {
    skip_if_not_installed("ggplot2")

    gplot <- ggplot(diamonds, aes(x, y)) + xlim(4, 10) + ylim(4, 10) +
        geom_tile() +
        stat_bin2d()

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_true(length(cxplot_list$data) > 0)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 GeomBar", {
    skip_if_not_installed("ggplot2")

    gplot <- ggplot(diamonds, aes(carat)) +
        geom_histogram()

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 53941)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 GeomPath", {
    skip_if_not_installed("ggplot2")

    gplot <- ggplot(economics, aes(date, unemploy)) +
        geom_line()

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 575)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 StatQq", {
    skip_if_not_installed("ggplot2")
    data  <- data.frame(y = rt(200, df = 5))
    gplot <- ggplot(data, aes(sample = y)) +
        stat_qq() +
        stat_qq_line()

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 201)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 point range", {
    skip_if_not_installed("ggplot2")

    dmod <- lm(price ~ cut, data = diamonds)
    cut <- unique(diamonds$cut)
    cuts_df <- data.frame(
        cut,
        predict(dmod, data.frame(cut), se = TRUE)[c("fit", "se.fit")]
    )
    gplot <- ggplot(cuts_df) +
        aes(
            x = cut,
            y = fit,
            ymin = fit - se.fit,
            ymax = fit + se.fit,
            colour = cut
        ) +
        geom_pointrange()

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 6)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 GeomErrorbar", {
    skip_if_not_installed("ggplot2")

    data <- data.frame(
        trt   = factor(c(1, 1, 2, 2)),
        resp  = c(1, 5, 3, 4),
        group = factor(c(1, 2, 1, 2)),
        se    = c(0.1, 0.3, 0.3, 0.2))
    gplot <- ggplot(data, aes(resp, trt, colour = group)) +
        geom_point() +
        geom_errorbar(aes(xmax = resp + se, xmin = resp - se), orientation = "y")

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 5)
    expect_equal(cxplot_list$data[[2]][[1]], "1")
})


test_that("ggplot.as.list - ggplot2 facets", {
    skip_if_not_installed("ggplot2")

    gplot <- ggplot(mpg, aes(cty, hwy)) +
        geom_point() +
        facet_grid(year ~ drv)

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 16)
    expect_true(cxplot_list$isGGPlot)
    expect_equal(length(cxplot_list$data), 235)
    expect_equal(cxplot_list$data[[2]][[1]], "1")

    gplot <- gplot +
        facet_grid(rows = vars(drv))

    expect_equal(class(suppressWarnings(ggplot.as.list(gplot))), "json")

    gplot <- gplot +
        facet_grid(cols = vars(cyl))
    expect_equal(class(suppressWarnings(ggplot.as.list(gplot))), "json")
})


# --- Regression tests for internal-helper pitfalls (2026-08) ---------------

test_that("gg_scales - coord transform maps x to xAxisTransform, not y", {
    skip_if_not_installed("ggplot2")
    skip_if(!("coord_transform" %in% getNamespaceExports("ggplot2")))

    df <- data.frame(a = c(1, 2, 3, 4), b = c(2, 1, 4, 3))
    gplot <- ggplot(df, aes(a, b)) + geom_point() +
        coord_transform(x = "log10")
    scales <- gg_scales(gplot, ggplot_build(gplot))

    # Was a copy/paste bug: tx read coord$trans$y, so an x-only transform was lost.
    expect_equal(unname(scales$xAxisTransform), "log10")
    expect_equal(unname(scales$yAxisTransform), "identity")
})


test_that("gg_theme - runs without an undefined-k error across themes", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(a = c(1, 2, 3, 4), b = c(2, 1, 4, 3))
    themes <- list(theme_gray(), theme_bw(), theme_minimal(), theme_classic())
    for (th in themes) {
        gplot <- ggplot(df, aes(a, b)) + geom_point() + th
        # The margin else-branch used to assign into t[[k]] with k undefined.
        expect_silent(gg_theme(gplot))
    }
})


test_that("gg_cxplot - a broken layer re-raises loudly with layer context", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(a = c(1, 2, 3, 4), b = c(2, 1, 4, 3),
                     g = factor(c("x", "y", "x", "y")))
    gplot <- ggplot(df, aes(a, b, color = g)) + geom_point() + geom_line()

    # Sanity: both layers convert normally.
    ok <- gg_cxplot(gplot, "canvas")
    expect_equal(length(ok$layers), 2)

    # Force the 2nd layer to error; conversion must fail loudly (strict), and
    # the re-raised error must name the offending layer index and geom.
    orig <- gg_proc_layer
    on.exit(assignInNamespace("gg_proc_layer", orig, ns = "canvasXpress"),
            add = TRUE)
    stub <- function(o, idx, bld) {
        if (idx == 2) stop("boom in layer 2")
        orig(o, idx, bld)
    }
    assignInNamespace("gg_proc_layer", stub, ns = "canvasXpress")

    expect_error(gg_cxplot(gplot, "canvas"),
                 regexp = "failed to convert ggplot layer 2 \\(GeomLine\\)")
})


test_that("gg_cxplot - handles a layerless ggplot (seq_along guard)", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(a = c(1, 2, 3, 4), b = c(2, 1, 4, 3))
    gplot <- ggplot(df, aes(a, b))   # no geom layer
    expect_silent(data_to_matrix(gplot, ggplot_build(gplot)))
})


test_that("gg_scales - fill and colour scales resolve to their own palette", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(x = 1:6, y = 6:1, g = rep(c("a", "b", "c"), 2))
    gplot <- ggplot(df, aes(x, y, fill = g, colour = g)) + geom_col() +
        scale_fill_manual(values = c("red", "green", "blue")) +
        scale_colour_manual(values = c("black", "grey", "white"))
    s <- gg_scales(gplot, ggplot_build(gplot))

    # Previously both grabbed scales[[1]] (the fill palette); each must now map
    # to its own trained scale.
    expect_equal(unname(unlist(s$colors)), c("red", "green", "blue"))
    expect_equal(unname(unlist(s$colors2)), c("black", "grey", "white"))
})


test_that("gg_scales - axis transform survives the trans/transformation rename", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(x = 1:6, y = 6:1)
    gplot <- ggplot(df, aes(x, y)) + geom_point() + scale_x_log10()
    s <- gg_scales(gplot, ggplot_build(gplot))
    expect_equal(unname(s$xAxisTransform), "log10")
})


test_that("gg_labels - captures plot tag and linetype legend title", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(x = 1:6, y = 6:1, g = rep(c("a", "b", "c"), 2))
    gplot <- ggplot(df, aes(x, y, linetype = g)) + geom_line() +
        labs(tag = "A", linetype = "Grp")
    r <- gg_labels(gplot)
    expect_equal(unname(r$tag), "A")
    expect_equal(unname(r$linetypeLegendTitle), "Grp")
})


test_that("gg_facet - grid single-axis counts do not rely on partial match", {
    skip_if_not_installed("ggplot2")

    df <- data.frame(x = 1:6, y = 6:1, g = rep(c("a", "b", "c"), 2))
    f <- gg_facet(ggplot(df, aes(x, y)) + geom_point() + facet_grid(rows = vars(g)))
    expect_equal(f$facetRows, 3)
    expect_equal(f$facetCols, 1)
})
