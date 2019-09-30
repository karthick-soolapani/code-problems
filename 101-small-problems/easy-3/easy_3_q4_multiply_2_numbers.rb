# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 4, Multiplying Two Numbers

# QUESTION
# Create a method that takes two arguments, multiplies them together, and returns the result.

# EXAMPLE
# multiply(5, 3) == 15 #=> true

$stdout.sync = true # To display output immediately on windows using git bash

def multiply(arg1, arg2)
  return "#{arg1} is not valid" unless arg1.is_a?(Numeric) ||
    arg1.is_a?(String) || arg1.is_a?(Array)
  return "#{arg2} is not valid" unless arg2.is_a?(Numeric)

  arg1 * arg2
end

p multiply(5, 3)
p multiply(5, 3.5)
p multiply([1, 2, 3], 2.5)
p multiply('abc', 3)
p multiply(5, 'abc')
