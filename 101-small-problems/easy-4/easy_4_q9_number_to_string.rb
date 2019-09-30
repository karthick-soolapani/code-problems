# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 9, Convert a Number to a String!

# QUESTION
# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.
# Write a method that takes a positive integer or zero, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

$stdout.sync = true # To display output immediately on windows using git bash

def integer_to_string(number)
  number.digits.reverse.each_with_object('') { |digit, string| string << ('0'.ord + digit).chr }
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# ALTERNATE SOLUTIONS

def integer_to_string(number)
  number.digits.reverse.join
  #join converts each element to string and return a string
end

def integer_to_string(number)
  digits = %w(0 1 2 3 4 5 6 7 8 9)
  string = ''

  while number > 0
    number, remainder = number.divmod(10)

    string = digits[remainder] + string
  end
  string
end
