context("ggplot as list")

test_that("ggplot.as.list - pass non ggplot2 object", {
    skip_if_not_installed("ggplot2")
    expect_error(ggplot.as.list("test"), regexp = "Not a ggplot object")
})


test_that("ggplot.as.list - ggplot2 GeomPoint", {
    skip_if_not_installed("ggplot2")

    gplot_orig <- ggplot(data = mtcars, aes(x = wt, y = mpg)) +
        geom_point(aes(color = cyl), position = "jitter")
    gplot <- gplot_orig +
        theme(legend.justification   = c(1, 1),
              legend.position.inside = c(1, 1),
              legend.title           = element_blank(),
              panel.background       = element_rect(fill = "white", colour = "grey50")) +
        scale_colour_viridis_c() +
        ggtitle("GGPlot Example w/Hover") +
        xlab("wt") +
        ylab("mpg")

    cxplot      <- ggplot.as.list(gplot)
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
        geom_errorbarh(aes(xmax = resp + se, xmin = resp - se))

    cxplot      <- suppressWarnings(ggplot.as.list(gplot))
    cxplot_list <- jsonlite::parse_json(cxplot)

    expect_equal(class(cxplot), "json")
    expect_equal(length(cxplot_list), 14)
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
    expect_equal(length(cxplot_list), 14)
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
