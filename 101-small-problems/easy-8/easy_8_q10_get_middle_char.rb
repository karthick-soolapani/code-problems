# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 10, Get The Middle Character

# QUESTION
# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

$stdout.sync = true # To display output immediately on windows using git bash

def center_of(string)
  quotient, remainder = (string.size - 1).divmod(2)
  string.slice(quotient, remainder + 1)
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

def center_of(string)
  string.size.odd? ? string[string.size / 2] : string[(string.size / 2) - 1, 2]
end
