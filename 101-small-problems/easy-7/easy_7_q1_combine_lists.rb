# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 1, Combine Two Lists

# QUESTION
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

$stdout.sync = true # To display output immediately on windows using git bash

def interleave(arr1, arr2)
  arr1.each_with_index.inject([]) { |new_arr, (el, idx)| new_arr << el << arr2[idx] }
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

def interleave(arr1, arr2)
  arr1.each_with_index.with_object([]) { |(el, idx), new_arr| new_arr << el << arr2[idx] }
end

def interleave(arr1, arr2)
  new_arr = []
  idx = 0
  
  while idx < arr1.length
    new_arr << arr1[idx] << arr2[idx]
    idx += 1
  end
  new_arr
end
