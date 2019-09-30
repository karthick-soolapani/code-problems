# Using the Ruby language, have the function NextPalindrome(num) take the num
# parameter being passed and return the next largest palindromic number. The input
# can be any positive integer. For example: if num is 24, then your program should
# return 33 because that is the next largest number that is a palindrome.

# PROBLEM UNDERSTANDING
# input - Integer (positive)
# output - Integer (positive)

# rules -
# A number is a palindrome if the reverse of the number is same as the number e.g. 121
# Assume that 110 is not a palindrome even though it can be expressed as 0110
# Convert number as string to check whether it's a palindrome
#   num.to_s == num.to_s.reverse
# Single digit numbers are always a palindrome

# ALGORITHM
# - Create a method with 1 parameter: num
# - Set idx = num + 1
# - Create a loop
#   - break and return idx if the following is true
#     - idx.to_s == idx.to_s.reverse
#   - idx += 1

def NextPalindrome(num)
  idx = num + 1
  loop do
    break idx if idx.to_s == idx.to_s.reverse
    idx += 1
  end
end

p NextPalindrome(24) == 33
p NextPalindrome(2) == 3
p NextPalindrome(180) == 181
p NextPalindrome(57) == 66

def NextPalindrome(num)
  num += 1
  num.to_s == num.to_s.reverse ? num : NextPalindrome(num)
end
