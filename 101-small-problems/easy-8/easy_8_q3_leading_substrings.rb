# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 3, Leading Substrings

# QUESTION
# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

$stdout.sync = true # To display output immediately on windows using git bash

def substrings_at_start(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings_at_start(string)
  substrings = []
  string.length.times { |idx| substrings << string[0..idx] }
  substrings
end

def substrings_at_start(string)
  substrings = []
  idx = 0
  
  while idx < string.length
    substrings << string[0..idx]
    idx += 1
  end
  substrings
end

# RECURSION
def substrings_at_start(string, arr = [])
  return arr if arr.size == string.size

  arr << string[0..arr.size]
  substrings_at_start(string, arr)
end
