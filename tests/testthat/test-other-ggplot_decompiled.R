library(testthat)

test_that("ggplot.decompiled returns NA_character_ for non-ggplot objects", {
    expect_equal(ggplot.decompiled(list(a = 1)), NA_character_)
    expect_equal(ggplot.decompiled("not a plot"), NA_character_)
    expect_equal(ggplot.decompiled(1:10), NA_character_)
})

test_that("ggplot.decompiled reconstructs basic plot and applies data_name and single quotes", {
    skip_if_not_installed("ggplot2")

    p <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point()

    res <- ggplot.decompiled(p, data_name = "my_df")

    expect_type(res, "character")
    expect_match(res, "^ggplot\\(my_df, aes\\(x = wt, y = mpg\\)\\) \\+")
    expect_match(res, "geom_point\\(\\)")
    # Verifies double quotes were replaced with single quotes
    expect_false(grepl('"', res, fixed = TRUE))
})

test_that("ggplot.decompiled handles reference line geoms and literal value extraction", {
    skip_if_not_installed("ggplot2")

    # GeomVline single intercept
    p_vline <- ggplot2::ggplot() + ggplot2::geom_vline(xintercept = 5)
    expect_match(ggplot.decompiled(p_vline), "geom_vline\\(xintercept = 5, inherit.aes = FALSE\\)")

    # GeomVline multiple intercepts
    p_vline_multi <- ggplot2::ggplot() + ggplot2::geom_vline(xintercept = c(1, 2))
    expect_match(ggplot.decompiled(p_vline_multi), "xintercept = c\\(1, 2\\)")

    # GeomHline
    p_hline <- ggplot2::ggplot() + ggplot2::geom_hline(yintercept = 10)
    expect_match(ggplot.decompiled(p_hline), "geom_hline\\(yintercept = 10, inherit.aes = FALSE\\)")

    # GeomAbline (slope & intercept)
    p_abline <- ggplot2::ggplot() + ggplot2::geom_abline(slope = 2, intercept = 1)
    res_abline <- ggplot.decompiled(p_abline)
    expect_match(res_abline, "geom_abline\\(")
    expect_match(res_abline, "slope = 2")
    expect_match(res_abline, "intercept = 1")
})

test_that("ggplot.decompiled handles non-identity stat, position, inherit.aes, and param noise filtering", {
    skip_if_not_installed("ggplot2")

    p <- ggplot2::ggplot(mtcars, ggplot2::aes(x = factor(cyl), y = mpg)) +
        ggplot2::geom_boxplot(
            position = ggplot2::position_dodge(width = 0.8),
            inherit.aes = FALSE,
            na.rm = FALSE
        )

    res <- ggplot.decompiled(p)

    expect_match(res, "position = 'dodge'")
    expect_match(res, "inherit.aes = FALSE")
    # na.rm = FALSE should be stripped as noise
    expect_false(grepl("na.rm = FALSE", res, fixed = TRUE))
})

test_that("ggplot.decompiled formats known and unknown function parameters", {
    skip_if_not_installed("ggplot2")

    # Known function (mean)
    p_known <- ggplot2::ggplot(mtcars, ggplot2::aes(x = cyl, y = mpg)) +
        ggplot2::stat_summary(fun = mean)
    expect_match(ggplot.decompiled(p_known), "fun = mean")

    # Custom/unknown function
    custom_fun <- function(x) x + 1
    p_unknown <- ggplot2::ggplot(mtcars, ggplot2::aes(x = cyl, y = mpg)) +
        ggplot2::stat_summary(fun = custom_fun)
    expect_match(ggplot.decompiled(p_unknown), "fun = <function>")
})

test_that("ggplot.decompiled handles scales with and without call attributes", {
    skip_if_not_installed("ggplot2")

    p <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point()

    # 1. Scale WITH a call attribute
    mock_scale_with_call <- list(aesthetics = "x", call = quote(scale_x_log10()))
    class(mock_scale_with_call) <- c("ScaleContinuousPosition", "ScaleContinuous", "Scale", "ggproto")
    p$scales$scales[[length(p$scales$scales) + 1]] <- mock_scale_with_call

    # 2. Scale WITHOUT a call attribute (fallback path)
    mock_scale_no_call <- list(aesthetics = "fill", call = NULL)
    class(mock_scale_no_call) <- "ScaleDiscrete"
    p$scales$scales[[length(p$scales$scales) + 1]] <- mock_scale_no_call

    res <- ggplot.decompiled(p)

    expect_match(res, "scale_x_log10\\(\\)")
    expect_match(res, "scale_fill_\\*\\(\\.\\.\\.\\) \\+   # ScaleDiscrete")
})

test_that("ggplot.decompiled handles non-default facets, coords, and labels", {
    skip_if_not_installed("ggplot2")

    p <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point() +
        ggplot2::facet_wrap(~ cyl) +
        ggplot2::coord_flip() +
        ggplot2::labs(title = "My Title", x = "Weight", y = "MPG")

    res <- ggplot.decompiled(p)

    expect_match(res, "facet_wrap\\(\\.\\.\\.\\)")
    expect_match(res, "coord_flip\\(\\)")
    expect_match(res, "labs\\(x = 'Weight', y = 'MPG', title = 'My Title'\\)")
})

test_that("ggplot.decompiled handles complete and partial themes", {
    skip_if_not_installed("ggplot2")

    # 1. Complete Theme
    p_complete <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point() +
        ggplot2::theme_bw()

    res_complete <- ggplot.decompiled(p_complete)
    expect_match(res_complete, "theme_\\*\\(\\) \\+  # complete theme")

    # 2. Partial Theme (<= 12 elements)
    p_small <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point() +
        ggplot2::theme(panel.grid = ggplot2::element_blank())

    res_small <- ggplot.decompiled(p_small)
    expect_match(res_small, "theme\\(  # 1 element\\(s\\) set explicitly")
    expect_match(res_small, "panel.grid")

    # 3. Partial Theme (> 12 elements)
    large_theme_list <- stats::setNames(
        as.list(rep(list(ggplot2::element_blank()), 13)),
        paste0("elem_", 1:13)
    )
    p_large <- ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
        ggplot2::geom_point() +
        do.call(ggplot2::theme, large_theme_list)

    res_large <- ggplot.decompiled(p_large)
    expect_match(res_large, "theme\\(  # 13 element\\(s\\) set explicitly")
    expect_match(res_large, "\\+1 more")
})
