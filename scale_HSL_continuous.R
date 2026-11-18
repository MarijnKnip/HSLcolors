
#continuous
scale_color_HSL_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- palette_gen_c(palette = palette, direction = direction)
  
  scale_color_gradientn(colors = pal(256), ...)
  
}

scale_fill_HSL_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- palette_gen_c(palette = palette, direction = direction)
  
  scale_fill_gradientn(colors = pal(256), ...)
  
}

palette_gen_n <- function(palette = "main", direction = 1) {
  function(n) {
    pal <- HSLpalette(palette)
    pal <- unname(unlist(pal))
    pal <- if (direction >= 0) pal else rev(pal)
    if (n <= length(pal)) pal[1:n] else colorRampPalette(pal)(n)
  }
}
