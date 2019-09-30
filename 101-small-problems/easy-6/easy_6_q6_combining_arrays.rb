# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 6, Combining Arrays

# QUESTION
# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

$stdout.sync = true # To display output immediately on windows using git bash

def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end
