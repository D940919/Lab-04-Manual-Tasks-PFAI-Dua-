#Debugging Syntax Errors
x <- c(1, 2, 3  # Missing closing parenthesis
       print(x)
#Fixing    
       x <- c(1, 2, 3)  # Added missing parenthesis
       print(x)
#Logical Errors
       x <- 10
       y <- 5
       result <- x * y  # Intended to divide but used multiplication
       print(result)
#Fixing
       result <- x / y  # Corrected from * to /
       print(result)
#Using traceback()
       log(-1)  # Logarithm of a negative number (invalid)
#Fixing
       traceback()
       log(abs(-1))  # Convert to absolute value
#Using debug() for Step-by-Step Execution
       my_function <- function(x) {
         y <- x + 10
         print(y)
       }
       debug(my_function)
       my_function(5)  # Runs step-by-step
       undebug(my_function)  # Stop debugging
#Using browser() for Interactive Debugging
       my_function <- function(x) {
         browser()  # Pauses execution here
         y <- x + 10
         print(y)
       }
       
       my_function(5)  # Runs interactively
#Using tryCatch() to Handle Errors
       safe_division <- function(a, b) {
         tryCatch({
           result <- a / b
           return(result)
         }, error = function(e) {
           print("Error: Division by zero not allowed!")
           return(NA)
         })
       }
       
       safe_division(10, 0)  # Catches error and prints a message
       
       
       
       
       