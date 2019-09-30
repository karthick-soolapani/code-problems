# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 5, Multiples of 3 and 5

# QUESTION
# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.

$stdout.sync = true # To display output immediately on windows using git bash

def multisum(limit)
  multiples = []

  (3..limit).step(3) { |multiple| multiples << multiple }
  (5..limit).step(5) { |multiple| multiples << multiple }
  multiples.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# ALTERNATE SOLUTION

def multisum(num)
  (1..num).select { |n| (n % 3).zero? || (n % 5).zero? }.inject(:+)
end
