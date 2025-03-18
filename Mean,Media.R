# Create a numeric vector
num_vector <- c(5, 8, 12, 8, 15, 18, 8, 25)

# Calculate mean
mean_value <- mean(num_vector)
print(paste("Mean:", mean_value))

# Calculate median
median_value <- median(num_vector)
print(paste("Median:", median_value))

# Function to calculate mode (most frequent value)
mode_function <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

mode_value <- mode_function(num_vector)
print(paste("Mode:", mode_value))
