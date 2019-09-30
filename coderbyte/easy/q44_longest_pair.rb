# Using the Ruby language, have the function LargestPair(num) take the num parameter
# being passed and determine the largest double digit number within the whole number.
# For example: if num is 4759472 then your program should return 94 because that is the
# largest double digit number. The input will always contain at least two positive digits.

# PROBLEM UNDERSTANDING

# input - Integer (positive, at least 2 digits)
# output - Integer (higest 2 digit number within it)

# rules -
# Look for all 2 consecutive numbers and find the largest

# ALGORITHM

# - Define a method with 1 parameter: num
# - Set largest_number = 0
# - Split the number into its digits and place it in an array: digits
# - Iterate the array by accessing 2 consecutive elements, 2 parameters: num1, num2
#   - curr_num = num1 * 10 + num2
#   - If curr_num > largest_number
#     - largest_number = curr_num
# - Return largest_number

def LargestPair(num)
  largest_num = 0
  num.digits.reverse.each_cons(2) do |num1, num2|
    curr_num = num1 * 10 + num2
    largest_num = curr_num if curr_num > largest_num
  end
  largest_num
end

p LargestPair(4759472) == 94
p LargestPair(453857) == 85
p LargestPair(363223311) == 63

def LargestPair(num)
  largest_num = 0
  digits = num.to_s
  (0..num.size - 2).each do |idx|
    curr_num = digits.slice(idx, 2).to_i
    largest_num = curr_num if curr_num > largest_num
  end
  largest_num
end
