# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 10, Sum Square - Square Sum

# QUESTION
# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n positive integers.

$stdout.sync = true # To display output immediately on windows using git bash

def sum_square_difference(n)
  square_of_sum = (1..n).sum ** 2
  sum_of_squares = (1..n).map { |i| i ** 2 }.sum
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# USING METHEMATICAL FORMULA
def sum_square_difference(n)
  (n * (n+1) / 2) ** 2 - (n * (n+1) * (2 * n + 1) / 6)
end
