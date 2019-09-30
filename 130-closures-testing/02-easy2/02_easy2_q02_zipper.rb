# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 2, Zipper

# QUESTION
# Implement Array#zip

$stdout.sync = true # To display output immediately on windows using git bash

def zip(arr1, arr2)
  arr1.map.with_index { |el1, idx| [el1, arr2[idx]] }
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
