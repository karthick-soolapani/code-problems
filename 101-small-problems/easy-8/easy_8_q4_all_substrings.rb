# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 4, All Substrings

# QUESTION
# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will occur
# at each position, the substrings at a given position should be returned in order from shortest to longest.
# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

$stdout.sync = true # To display output immediately on windows using git bash

def substrings_at_start(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end

def substrings(string)
  string.chars.map.with_index { |_, idx| substrings_at_start(string[idx..-1]) }.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
