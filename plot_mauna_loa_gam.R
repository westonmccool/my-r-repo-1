
# Load function
source("plot_ts.R")

# Load file
co2 <- read.csv("co2_mm_mlo.csv")

# Make plot
plot_ts(co2$decdate, co2$interpolated, main = "Mauna Loa CO2 record")