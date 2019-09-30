# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 9, Sum of Digits

# QUESTION
# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits.

# EXAMPLES
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# FURTHER EXPLORATION
# For a challenge, try writing this without any basic looping constructs
# (while, until, loop, and each).

# EASY SOLUTION
# number.digits.sum
# But trying this with recursion

$stdout.sync = true # To display output immediately on windows using git bash

POWERS_OF_TEN = [10**0, 10**1, 10**2, 10**3, 10**4, 10**5, 10**6,
                 10**7, 10**8, 10**9, 10**10, 10**11, 10**12]

def sum(number, zillions = POWERS_OF_TEN)
  return 'Positive integer only' unless number.is_a?(Integer) && number > 0
  
  zillions_clone = zillions.clone
  divisor = zillions_clone.pop
  
  write = number / divisor
  left = number % divisor

  if left > 0
    write + sum(left, zillions_clone)
  else
    write
  end
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
