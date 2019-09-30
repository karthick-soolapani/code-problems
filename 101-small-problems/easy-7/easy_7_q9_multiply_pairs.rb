# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 9, Multiply All Pairs

# QUESTION
# Write a method that takes two Array arguments in which each Array contains a list
# of numbers, and returns a new Array that contains the product of every pair of numbers
# that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.
# You may assume that neither argument is an empty Array.

$stdout.sync = true # To display output immediately on windows using git bash

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(arr1, arr2)
  arr1.each_with_object([]) do |element1, new_arr|
    arr2.each { |element2| new_arr << element1 * element2 }
  end.sort
end
