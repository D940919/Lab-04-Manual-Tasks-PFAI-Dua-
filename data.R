# Create a data table
dt <- data.table(
  ID = c(1, 2, 3, 4, 5, 6),
  Category = c("A", "B", "A", "B", "A", "B"),
  Value = c(10, 15, 20, 25, 30, 35)
)

print("Original Data Table:")
print(dt)

# Perform aggregation: Sum of Value by Category
aggregated_dt <- dt[, .(Total_Value = sum(Value)), by = Category]

print("Aggregated Data Table:")
print(aggregated_dt)