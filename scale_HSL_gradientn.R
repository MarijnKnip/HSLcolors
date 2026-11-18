# vervangers voor scale_fill_gradientn / scale_color_gradientn
# n = aantal tussenkleuren dat uit het palet geïnterpoleerd wordt
scale_fill_HSL_gradientn <- function(palette = "main", direction = 1,
                                     n = 256, ...) {
  pal <- palette_gen_c(palette = palette, direction = direction)
  ggplot2::scale_fill_gradientn(colors = pal(n), ...)
}

scale_colour_HSL_gradientn <- function(palette = "main", direction = 1,
                                       n = 256, ...) {
  pal <- palette_gen_c(palette = palette, direction = direction)
  ggplot2::scale_colour_gradientn(colours = pal(n), ...)
}

scale_color_HSL_gradientn <- scale_colour_HSL_gradientn
