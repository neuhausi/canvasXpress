# Single source of truth for the per-layer ggplot -> CanvasXpress pipeline (P0).
#
# One small, DETERMINISTIC builder per geom/feature. Both the golden test
# (test-other-ggplot-fixtures.R) and the fixture generator
# (tools/gen-ggplot-fixtures.R) consume this list, so example definitions live
# in exactly one place. Keep data tiny and fixed so the emitted JSON and the
# downstream pixel snapshots stay stable across runs.
#
# See docs/plans/ggplot/perlayer-ggplot-plan.md (S6) for the full pipeline.

cx_ggplot_corpus <- function() {
  df <- data.frame(
    x = c(1, 2, 3, 4, 5, 6),
    y = c(2, 1, 4, 3, 6, 5),
    g = factor(rep(c("a", "b", "c"), 2)),
    h = factor(rep(c("p", "q"), 3))
  )
  cat_df <- data.frame(cat = factor(c("a", "b", "c")), val = c(3, 5, 2))
  box_df <- data.frame(
    grp = factor(rep(c("a", "b"), each = 6)),
    val = c(1, 2, 3, 4, 5, 6, 2, 3, 4, 5, 6, 7)
  )

  gg <- ggplot2::ggplot
  aes <- ggplot2::aes

  list(
    list(
      name = "point",
      plot = gg(df, aes(x, y)) + ggplot2::geom_point()
    ),
    list(
      name = "point_color",
      plot = gg(df, aes(x, y, color = g)) + ggplot2::geom_point()
    ),
    list(
      name = "line",
      plot = gg(df, aes(x, y)) + ggplot2::geom_line()
    ),
    list(
      name = "col",
      plot = gg(cat_df, aes(cat, val)) + ggplot2::geom_col()
    ),
    list(
      name = "boxplot",
      plot = gg(box_df, aes(grp, val)) + ggplot2::geom_boxplot()
    ),
    list(
      name = "multilayer_point_line",
      plot = gg(df, aes(x, y)) + ggplot2::geom_line() + ggplot2::geom_point()
    ),
    list(
      name = "facet_wrap",
      plot = gg(df, aes(x, y)) + ggplot2::geom_point() +
        ggplot2::facet_wrap(ggplot2::vars(g))
    ),
    list(
      # facet_wrap over TWO variables -> one panel per present (g, h) combination.
      # Exercises the multi-var composite facet key (I4).
      name = "facet_wrap_multi",
      plot = gg(df, aes(x, y)) + ggplot2::geom_point() +
        ggplot2::facet_wrap(ggplot2::vars(g, h))
    ),
    list(
      # Two layers mapping DIFFERENT y columns (disjoint ranges 1-5 vs 11-15).
      # A faithful per-layer render must span both series; exercises per-layer
      # aes (each layer carries its own y).
      name = "per_layer_y",
      plot = gg(
        data.frame(x = 1:5, y1 = 1:5, y2 = 11:15),
        aes(x)
      ) +
        ggplot2::geom_line(aes(y = y1), colour = "red") +
        ggplot2::geom_line(aes(y = y2), colour = "blue")
    ),
    list(
      # Two layers of the SAME geom with different fixed params — impossible to
      # represent before layers became a positional array (they collided on the
      # geom key). Locks the new same-geom-layer capability end to end.
      name = "layered_points",
      plot = gg(df, aes(x, y)) +
        ggplot2::geom_point(colour = "red", size = 6) +
        ggplot2::geom_point(colour = "blue", size = 2)
    ),
    list(
      name = "dual_fill_colour",
      plot = gg(df, aes(x, y, fill = g, colour = h)) + ggplot2::geom_col() +
        ggplot2::scale_fill_manual(values = c("red", "green", "blue")) +
        ggplot2::scale_colour_manual(values = c("black", "grey"))
    ),

    # --- P4 probes: per-aesthetic scales (shape / linetype / size) ----------
    list(
      name = "point_shape",
      plot = gg(df, aes(x, y, shape = g)) + ggplot2::geom_point(size = 4)
    ),
    list(
      name = "shape_manual",
      plot = gg(df, aes(x, y, shape = g)) + ggplot2::geom_point(size = 4) +
        ggplot2::scale_shape_manual(values = c(15, 16, 17))
    ),
    list(
      name = "line_linetype",
      plot = gg(df, aes(x, y, linetype = g, group = g)) + ggplot2::geom_line()
    ),
    list(
      name = "point_size",
      plot = gg(df, aes(x, y, size = y)) + ggplot2::geom_point()
    ),

    # --- Per-layer combos (different geoms sharing a panel) -----------------
    list(
      name = "point_smooth",
      plot = gg(df, aes(x, y)) + ggplot2::geom_point() +
        ggplot2::geom_smooth(method = "lm", se = FALSE, formula = y ~ x)
    ),
    list(
      # boxplot + points (NOT jitter — jitter is random and would flake)
      name = "boxplot_point",
      plot = gg(box_df, aes(grp, val)) + ggplot2::geom_boxplot() +
        ggplot2::geom_point()
    ),

    # --- More special-cased geoms + coords ---------------------------------
    list(
      name = "area",
      plot = gg(df, aes(x, y)) + ggplot2::geom_area()
    ),
    list(
      name = "coord_flip",
      plot = gg(cat_df, aes(cat, val)) + ggplot2::geom_col() +
        ggplot2::coord_flip()
    ),
    list(
      # Manhattan-style parity case, exercising TWO gaps at once:
      #   (1) scale_x_continuous(labels = ...) RELABELS a genuinely continuous axis
      #       (chromosome numbers at cumulative-bp centres) - the large break
      #       positions must render as "1"/"2"/"3", not scientific notation
      #       (xAxisSetLabels);
      #   (2) the only colour aes (alternating band) is drawn show.legend = FALSE, so
      #       no legend must appear (global showLegend hoisted from the layer).
      name = "x_continuous_labels",
      plot = gg(data.frame(pos = c(5e7, 1.1e8, 1.5e8, 2.2e8, 2.5e8),
                           y = c(2, 4, 5, 1, 3),
                           band = factor(c(0, 0, 1, 1, 0))),
                aes(pos, y)) +
        ggplot2::geom_point(aes(colour = band), show.legend = FALSE) +
        ggplot2::scale_colour_manual(values = c("#D6604D", "#4A6FA5")) +
        ggplot2::scale_x_continuous(breaks = c(5e7, 1.5e8, 2.5e8),
                                    labels = c(1, 2, 3))
    ),
    list(
      # Dodged fill bar with error bars: the fill factor is pivoted into coloured
      # per-series columns (no colorBy), so the error-bar layer must NOT suppress the
      # fill legend - it is driven by those coloured vars.
      name = "dodge_bar_errorbar_legend",
      plot = gg(df, aes(g, y, fill = h)) +
        ggplot2::geom_col(position = ggplot2::position_dodge(width = 0.8),
                          width = 0.7) +
        ggplot2::geom_errorbar(aes(ymin = y - 0.5, ymax = y + 0.5),
                               position = ggplot2::position_dodge(width = 0.8),
                               width = 0.2)
    )
  )
}
