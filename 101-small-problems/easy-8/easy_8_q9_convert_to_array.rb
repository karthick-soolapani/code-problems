# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 9, Convert number to reversed array of digits

# QUESTION
# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

$stdout.sync = true # To display output immediately on windows using git bash

def reversed_number(num)
  num.digits.join.to_i
end

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
