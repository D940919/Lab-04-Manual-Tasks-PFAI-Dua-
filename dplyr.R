# Filter rows where Species is "setosa" and arrange by Sepal.Length
filtered_data <- iris %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length)

# View the first few rows
print(filtered_data)