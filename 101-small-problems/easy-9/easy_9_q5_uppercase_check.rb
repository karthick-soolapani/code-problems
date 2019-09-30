# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 5, Uppercase Check

# QUESTION
# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

$stdout.sync = true # To display output immediately on windows using git bash

def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

def uppercase?(str)
  !str.chars.any? { |char| /[a-z]/.match(char) }
end

def uppercase?(str)
  str.scan(/[a-z]/).length == 0
end
