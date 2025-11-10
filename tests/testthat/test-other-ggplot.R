context("canvasXpress ggplot conversions")

test_that("simple scatterplot", {
    testthat::skip_if_not_installed("ggplot2")

    gg1 <- ggplot(data = mpg,
                  aes(x      = displ,
                      y      = hwy)) +
        geom_point(aes(color = factor(cyl)))

    print(gg1)
    canvasXpress(gg1)
})


