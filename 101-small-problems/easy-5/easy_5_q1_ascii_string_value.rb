# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 1, Short Long Short

# QUESTION
# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

$stdout.sync = true # To display output immediately on windows using git bash

def ascii_value(str)
  str.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# ALTERNATE SOLUTIONS

def ascii_value(str)
  str.chars.inject(0) { |sum, char| sum += char.ord }
end
