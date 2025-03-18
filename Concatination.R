# Define strings
str1 <- "Hello"
str2 <- "R"
str3 <- "World"

# Concatenate with a separator
concatenated_str <- paste(str1, str2, str3, sep = "-")
print(concatenated_str)

# Concatenate without a separator (default space)
concatenated_space <- paste(str1, str2, str3)
print(concatenated_space)
