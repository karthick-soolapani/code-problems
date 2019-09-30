# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 3, Always Return Negative

# QUESTION
# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

$stdout.sync = true # To display output immediately on windows using git bash

def negative(num)
  num.positive? ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

def negative(num)
  -num.abs
end
