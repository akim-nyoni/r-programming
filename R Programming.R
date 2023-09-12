#number1
# Store the sequence in a vector
sequence <- c(19, 16, 13, 11, 87, 54, 33)

# Calculate the maximum
maximum <- max(sequence)

# Calculate the minimum
minimum <- min(sequence)

# Calculate the mean
mean_value <- mean(sequence)

# Print the results
print(maximum)
print(minimum)
print(mean_value)
#======================================================================================================================================
#number2

# Store the sequence in a vector
sequence <- c(18, 29, 17, 19, 19, 19, 20, 21)

# Calculate the frequency of each number
freq <- table(sequence)
#you can view this by print(frequency)
print(freq)
# Find the number with the maximum frequency
max_frequency <- max(freq)

# Find the number(s) with the maximum frequency
num_with_max_freq <- as.numeric(names(freq[freq == max_frequency]))

# Print the result
print(paste("the maximum frequency:", num_with_max_freq))
print(paste("Number of times repeated:", max_frequency))
#paste function is used to concatenate the strings and the elements into a single string
#======================================================================================================================================
#Number 3
#Function to check if a number is prime
is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
    #prime number should be a positive integer > 1
  }
  
  for (i in 2:sqrt(n)) { 
#This means that the loop will execute once for each value from 2 to the square root of n, inclusive.
    if (n %% i == 0) {
      #checks if n is divisible by i without leaving a remainder.
      return(FALSE)
    }
  }
  
  return(TRUE)
}

# Store the sequence in a vector
sequence <- c(18, 29, 17, 11, 13, 25, 20, 21, 26, 28, 14, 20)

# Find the prime numbers
prime_numbers <- sequence[sapply(sequence, is_prime)]
#the sapply() is a function that applies the is_prime function to each element of a vector and returns a vector of the same length.

# Print the prime numbers
print(prime_numbers)
#=======================================================================================================================================
#number 4
# Prompt the user to enter their name
name <- readline("Enter your name: ")

# Prompt the user to enter their surname
surname <- readline("Enter your surname: ")

# Prompt the user to enter their student number
student_number = readline("Enter your student number: ")

# Prompt the user to enter their degree program
degree_program <- readline("Enter your degree program: ")

# Print the entered information
print("Name:", name, "\n")
cat("Surname:", surname, "\n")
cat("Student Number:", student_number, "\n")
cat("Degree Program:", degree_program, "\n")
#=======================================================================================================================================
#number 5

random_sequence <- sample(10:100, 100, replace = TRUE)

# Calculate the mean of numbers from 20 to 50
mean_value <- mean(random_sequence[random_sequence >= 20 & random_sequence <= 50])

# Calculate the sum of numbers from 10 to 80
sum_value <- sum(random_sequence[random_sequence >= 10 & random_sequence <= 80])

# Print the results
print(paste("Mean of numbers from 20 to 50:", mean_value))
print(paste("Sum of numbers from 10 to 80:", sum_value))
#=======================================================================================================================================
#Number 6
# Set the seed for reproducibility (optional)
set.seed(103)
# uses an LCG eg, Xj=(Xj−100−Xj−37)mod230, so you can replace 103 with any number

# Generate a vector of 20 random integer values between -100 and 100
random_vector <- sample(-100:100, 20, replace = TRUE)
print(random_vector)
# Find the maximum and minimum values in the vector
maximum_value <- max(random_vector)
minimum_value <- min(random_vector)

# Print the results
print(paste("Maximum value:", maximum_value))
print(paste("Minimum value:", minimum_value))

#===================================================================================================================================================
#number 7
# Create the vector with missing values
vec <- c(10, 11, 17, NA, 89, 24, NA)

# Remove missing values
vec_clean <- vec[!is.na(vec)]

# Print the cleaned vector
print(vec_clean)

