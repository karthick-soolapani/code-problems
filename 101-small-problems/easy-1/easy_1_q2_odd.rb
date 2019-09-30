# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 2, Odd

# QUESTION
# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method return true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.
# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# BONUS QUESTION
# The Integer#remainder method performs a remainder operation in Ruby.
# Rewrite #is_odd? to use Integer#remainder instead of %

$stdout.sync = true # To display output immediately on windows using git bash

def is_odd?(num)
  num % 2 != 0
end

def is_odd_v2?(num)
  num.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
puts
puts is_odd_v2?(2)    # => false
puts is_odd_v2?(5)    # => true
puts is_odd_v2?(-17)  # => true
puts is_odd_v2?(-8)   # => false
puts is_odd_v2?(0)    # => false
puts is_odd_v2?(7)    # => true
