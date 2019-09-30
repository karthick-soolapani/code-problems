# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 7, Multiplicative Average

# QUESTION
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

$stdout.sync = true # To display output immediately on windows using git bash

def show_multiplicative_average(arr)
  puts "The result is #{format('%.3f', (arr.inject(:*) / arr.size.to_f))}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
