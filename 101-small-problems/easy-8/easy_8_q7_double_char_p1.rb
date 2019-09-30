# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 7, Double Char (Part 1)

# QUESTION
# Write a method that takes a string, and returns a new string in which every character is doubled.

$stdout.sync = true # To display output immediately on windows using git bash

def repeater(string)
  string.chars.map { |char| char + char }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater(string)
  string.chars.inject('') { |new_str, char| new_str << char * 2 }
end
