# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 3, Fibonacci Number Location By Length

# QUESTION
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.
# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

$stdout.sync = true # To display output immediately on windows using git bash

def find_fibonacci_index_by_length(digits)
  fibonacci_series = [1, 1]

  while fibonacci_series.last < 10 ** (digits - 1)
    fibonacci_series << fibonacci_series[-1] + fibonacci_series[-2]
  end
  fibonacci_series.size
end


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
