# Create a date-time object
date_str <- "2025-03-18 14:30:45"
parsed_date <- ymd_hms(date_str)  # Parse date

# Extract date components
year_val <- year(parsed_date)
month_val <- month(parsed_date, label = TRUE)  # Get month name
day_val <- day(parsed_date)
hour_val <- hour(parsed_date)

# Format date in a custom way
formatted_date <- format(parsed_date, "%d-%b-%Y %I:%M %p")

# Print outputs
print(paste("Year:", year_val))
print(paste("Month:", month_val))
print(paste("Day:", day_val))
print(paste("Hour:", hour_val))
print(paste("Formatted Date:", formatted_date))