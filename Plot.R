# Load necessary libraries
library(plotly)

# Create a scatter plot of mpg vs horsepower (hp) from the mtcars dataset
plot <- plot_ly(data = mtcars, 
                x = ~hp,   # Horsepower on X-axis
                y = ~mpg,  # Miles per gallon on Y-axis
                type = 'scatter', 
                mode = 'markers',  # Use markers (points)
                marker = list(size = 10, color = 'blue'))  # Customize marker size & color

# Show the plot
plot
