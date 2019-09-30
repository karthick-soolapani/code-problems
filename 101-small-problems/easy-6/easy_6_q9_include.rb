# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 9, Does My List Include This?

# QUESTION
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

$stdout.sync = true # To display output immediately on windows using git bash

def include?(arr, value)
  !!arr.index(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include?(arr, value)
  !arr.select { |element| element == value }.empty?
end

def include?(arr, value)
  arr.count(value) > 0 ? true : false
end

def include?(arr, val)
  arr.inject(false) { |bool, ele| bool = (bool || ele == val) }
end
