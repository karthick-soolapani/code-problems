# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 4, Counting Up

# QUESTION
# Write a method that takes an integer argument, and returns an Array of all integers,
# in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer that is greater than 0.

$stdout.sync = true # To display output immediately on windows using git bash

def sequence(num)
  num.positive? ? (1..num).to_a : (num..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)

def sequence(num)
  splat = *(1..num)
end

def sequence(num)
  (1..num.abs).map { |i| i * (num / num.abs) }.sort
end
