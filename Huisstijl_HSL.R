huisstijl_HSL <- function(...) { 
  
  huisstijl <- c("rood"= "#B52B2B",
                 "geel"="#FFEB73",
                 "donkergroen"="#004D46",
                 "roze"="#FFD2D1",
                 "donkerpaars"="#280F4B",
                 "wit"="#FFFFFF",
                 "paars"="#5445A3",
                 "lichtpaars"="#E2D4FF",
                 "groen"="#008573",
                 "mintgroen"="#C9F0E6",
                 "blauw"="#004AF7",
                 "grijs"="#DEDCCE")
  cols <- c(...)
  if (is.null(cols))
    return(huisstijl_HSL)
  
  huisstijl[cols]
}
