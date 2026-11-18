scale_fill_HSL <- function(palette = "main", direction = 1, ...) {
  all_colors <- HSLpalette(palette)
  all_colors <- unname(unlist(all_colors))
  all_colors <- if (direction >= 0) all_colors else rev(all_colors)
  ggplot2::scale_fill_manual(values = all_colors, ...)
}

scale_colour_HSL <- function(palette = "main", direction = 1, ...) {
  
  ggplot2::discrete_scale(
    "colour", "HSL",
    palette_gen(palette, direction),
    ...
  )
}

scale_color_HSL <- scale_colour_HSL
