# Create sample time-series data
dates <- seq(as.Date("2024-01-01"), by = "month", length.out = 12)
values <- rnorm(12, mean = 100, sd = 10)  # Random values

# Convert to xts object
ts_data <- xts(values, order.by = dates)

# Plot time-series data
print(plot(ts_data, main = "Time-Series Data", col = "blue", type = "o", pch = 16))
