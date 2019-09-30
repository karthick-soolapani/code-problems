# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 10, The End Is Near But Not Here

# QUESTION
# Write a method that returns the next to last word in the String passed to it as an argument.
# Words are any sequence of non-blank characters.
# You may assume that the input String will always contain at least two words.

$stdout.sync = true # To display output immediately on windows using git bash

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle_word(string)
  return string unless /\s/.match(string)

  split_string = string.split
  p split_string[(split_string.size - 1) / 2]
end

puts
p middle_word('last word') == 'last'
p middle_word('Launch School is great!') == 'School'
p middle_word('Launch School is always great!') == 'is'
p middle_word('LaunchSchool') == 'LaunchSchool'
p middle_word('') == ''
