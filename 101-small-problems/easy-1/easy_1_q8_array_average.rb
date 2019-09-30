# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 8, Array Average

# QUESTION
# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

# EXAMPLES
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# FURTHER EXPLORATION
# Currently, the return value of average is an Integer. When dividing numbers,
# sometimes the quotient isn't a whole number, therefore, it might make more sense
# to return a Float. Can you change the return value of average from an Integer to a Float?

$stdout.sync = true # To display output immediately on windows using git bash

def average(numbers)
  (numbers.inject(:+) / numbers.size.to_f).round(2)
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
