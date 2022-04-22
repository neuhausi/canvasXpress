context("canvasXpress ggplot conversions")

test_that("simple scatterplot", {
    gg1 <- ggplot(data = mpg,
                  aes(x      = displ,
                      y      = hwy)) +
        geom_point()

    print(gg1)
    canvasXpress(gg1)

    gg2 <- ggplot(data = mpg) +
        geom_point(aes(x      = displ,
                       y      = hwy))

    print(gg2)
    canvasXpress(gg2) #incorrect currently
    warning("canvasxpress doesn't yet support aes in the geoms")
})


