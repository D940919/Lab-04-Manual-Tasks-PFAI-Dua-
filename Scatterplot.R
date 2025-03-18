# Create the scatterplot and store it in a variable
p <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(title = "Scatterplot of Sepal Length vs Petal Length",
       x = "Sepal Length",
       y = "Petal Length") +
  theme_minimal()

# Explicitly print the plot
print(p)
