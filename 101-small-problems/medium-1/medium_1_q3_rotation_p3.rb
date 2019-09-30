# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 3, Rotation (Part 3)

# QUESTION
# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits,
# you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597. Finally,
# keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation
# of that argument. You can (and probably should) use the rotate_rightmost_digits method
# from the previous exercise.

$stdout.sync = true # To display output immediately on windows using git bash

def max_rotation(num)
  digits = num.digits.reverse
  digits.size.downto(2) { |n| digits << digits.delete_at(-n) }
  digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

#1 - WITH HELPER METODS
def rotate_array(arr)
  arr.empty? ? [] : arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  digits = num.digits.reverse
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

def max_rotation(num)
  digits = num.digits.reverse
  digits.size.downto(2) { |n| num = rotate_rightmost_digits(num, n) }
  num
end

#2 - RECURSION
def max_rotation_recursion(arr)
  arr = arr[1..-1] + [arr[0]]
  arr.size <= 2 ? arr : [arr[0]] + max_rotation_recursion(arr[1..-1])
end

def max_rotation(num)
  max_rotation_recursion(num.digits.reverse).join.to_i
end
