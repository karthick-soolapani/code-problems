# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 1, Rotation (Part 1)

# QUESTION
# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

$stdout.sync = true # To display output immediately on windows using git bash

def rotate_array(arr)
  arr.empty? ? arr : arr[1..-1] + [arr[0]]
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_number(num)
  rotate_string(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
p rotate_array([]) == []

p rotate_string('cool') == 'oolc'

p rotate_number(346) == 463
p rotate_number(305) == 53
