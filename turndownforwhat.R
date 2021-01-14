plot_ts <- function(x, y, annoy_brian = FALSE, ...) {
  library(ggplot2)
  if (annoy_brian) {
    ggplot(aes(x, y), data = data.frame(x, y)) + 
      geom_line() + 
      geom_smooth() +
      theme_minimal()
  } else {
    fit <- mgcv::gam(y ~ s(x))
    plot(x, y, type = 'l', ...)
    lines(x, fitted(fit), col = 2, lwd = 2)
  }
}
source("plot_ts.R")
co2 <- read.csv("co2_mm_mlo.csv")
plot_ts(co2$decdate, co2$interpolated, annoy_brian = TRUE)
