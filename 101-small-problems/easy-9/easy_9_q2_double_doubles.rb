# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 2, Double Doubles

# QUESTION
# A double number is a number with an even number of digits whose left-side digits
# are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676
# are all double numbers. 444, 334433, and 107 are not.
# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

$stdout.sync = true # To display output immediately on windows using git bash

def twice(num)
  /^(\d+)\1$/.match(num.to_s) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

def twice(num)
  str_num = num.to_s
  half = str_num.size/2 
  str_num[0...half] == str_num[half..-1] ? num : num * 2
end
