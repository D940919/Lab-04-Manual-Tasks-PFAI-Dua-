# Create a sample wide dataset
wide_data <- data.frame(
  ID = c(1, 2, 3),
  Math = c(85, 90, 78),
  Science = c(88, 92, 81)
)

print("Wide format data:")
print(wide_data)

# Convert wide to long format
long_data <- wide_data %>%
  pivot_longer(cols = Math:Science, names_to = "Subject", values_to = "Score")

print("Long format data:")
print(long_data)

# Convert back from long to wide format
wide_data_again <- long_data %>%
  pivot_wider(names_from = Subject, values_from = Score)

print("Converted back to wide format:")
print(wide_data_again)