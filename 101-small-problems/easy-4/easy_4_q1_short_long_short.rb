# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 1, Short Long Short

# QUESTION
# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

$stdout.sync = true # To display output immediately on windows using git bash

def short_long_short(str1, str2)
  if str1.length <= str2.length
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# ALTERNATE SOLUTIONS

=begin

def short_long_short(str1, str2)
  long = [str1, str2].max { |a, b| a.length <=> b.length }
  short = [str1, str2].min { |a, b| a.length <=> b.length }
  short + long + short
end

def short_long_short(str1, str2)
  short, long = str1.size > str2.size ? [str2, str1] : [str1, str2]
  "#{short}#{long}#{short}"
end

=end
