# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 10, Convert a Signed Number to a String!

# QUESTION
# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.
# Write a method that takes an integer, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

$stdout.sync = true # To display output immediately on windows using git bash

def signed_integer_to_string(number)
  string = ''
  number.abs.digits.reverse.each { |digit| string << ('0'.ord + digit).chr }

  string.prepend('+') if number.positive?
  string.prepend('-') if number.negative?
  string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# ALTERNATE SOLUTIONS

def signed_integer_to_string(int)
  arr = []
  str = arr.push(int).join
  %w(0 -).include?(str[0]) ? str : ('+' + str)
end

def signed_integer_to_string(int)
  int.abs.digits.reverse.join.prepend case int <=> 0
                                      when -1 then '-'
                                      when +1 then '+'
                                      else ''
                                      end
end
