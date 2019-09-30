# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 8, Multiply Lists

# QUESTION
# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments
# that have the same index. You may assume that the arguments contain the same number of elements.

$stdout.sync = true # To display output immediately on windows using git bash

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
