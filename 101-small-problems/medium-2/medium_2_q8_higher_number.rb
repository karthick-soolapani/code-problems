# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 8, Next Featured Number Higher than a Given Value

# QUESTION
# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7),
# and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Issue an error message
# if there is no next featured number.

$stdout.sync = true # To display output immediately on windows using git bash

def featured(num)
  num += 1
  num += 1 until num.odd? && num % 7 == 0

  (num).step(by: 14) do |curr_num|
    return curr_num if curr_num.digits.uniq == curr_num.digits
    break if curr_num >= 9876543210
  end
  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
