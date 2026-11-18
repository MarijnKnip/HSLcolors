
# discrete fill-scale met interpolatie bij tekort aan kleuren
scale_fill_HSL_n <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "fill", "HSL_n",
    palette_gen_n(palette, direction),
    ...
  )
}

# discrete color-scale met interpolatie bij tekort aan kleuren
scale_color_HSL_n <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "colour", "HSL_n",
    palette_gen_n(palette, direction),
    ...
  )
}
#United Britain of America
scale_colour_HSL_n <- scale_color_HSL_n 
