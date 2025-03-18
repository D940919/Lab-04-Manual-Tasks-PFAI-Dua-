# Create an interactive line plot of unemployment rate over time
plot <- plot_ly(data = economics, 
                x = ~date, 
                y = ~unemploy, 
                type = 'scatter', 
                mode = 'lines', 
                line = list(color = 'red'))

# Show the plot
plot
```{r, echo=FALSE}
library(plotly)
plot_ly(data = mtcars, x = ~hp, y = ~mpg, type = 'scatter', mode = 'markers')
