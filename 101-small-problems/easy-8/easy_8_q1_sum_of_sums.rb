# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 1, Sum of Sums

# QUESTION
# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

$stdout.sync = true # To display output immediately on windows using git bash

def sum_of_sums(arr)
  arr.each_index.inject(0) { |sum, idx, a| sum += arr[0..idx].sum }
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# ALTERNATE SOLUTION

# USING RECURSION
def sum_of_sums(arr)
  return arr[0] if arr.size <= 1
  arr.sum + sum_of_sums(arr[0...-1])
end
