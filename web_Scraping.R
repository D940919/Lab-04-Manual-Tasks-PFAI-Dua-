# Define the webpage URL (example)
url <- "https://www.worldometers.info/world-population/"

# Read the webpage
webpage <- read_html(url)

# Extract population data using CSS selectors (modify selector as needed)
population <- webpage %>%
  html_nodes(".maincounter-number span") %>%
  html_text()

# Print extracted data
print(paste("World Population:", population))
