# Generate a sequence from 1 to 100
numbers <- 1:100

# Select even numbers
even_numbers <- numbers[numbers %% 2 == 0]

# Calculate sum of even numbers
sum_even <- sum(even_numbers)
print(paste("Sum of even numbers from 1 to 100:", sum_even))
