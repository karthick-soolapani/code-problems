# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 2, Rotation (Part 2)

# QUESTION
# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

$stdout.sync = true # To display output immediately on windows using git bash

def rotate_rightmost_digits(num, count)
  digits = num.digits.reverse
  count = ((count - 1) % digits.size) + 1
  
  digits << digits.delete_at(-count)
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(735291, 7) == 735291

def rotate_array(arr)
  arr.empty? ? [] : arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, count)
  digits = num.digits.reverse
  count = ((count - 1) % digits.size) + 1
  
  rotated = digits[0...-count] + rotate_array(digits[-count..-1])
  rotated.join.to_i
end
