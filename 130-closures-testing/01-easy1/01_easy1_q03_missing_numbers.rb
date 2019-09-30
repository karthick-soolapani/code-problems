# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 3, Find Missing Numbers

# QUESTION
# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

$stdout.sync = true # To display output immediately on windows using git bash

def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first + 1)..(second - 1)).to_a)
  end
  result
end

def missing(array)
  full_array = (array.min..array.max).to_a
  full_array - array
end

def missing(arr)
  [*(arr.min..arr.max)].reject{ |n| arr.include?(n) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
