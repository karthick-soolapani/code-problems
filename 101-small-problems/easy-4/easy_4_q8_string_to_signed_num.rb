# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 8, Convert a String to a Signed Number!

# QUESTION
# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.
# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.
# You may assume the string will always contain a valid number.
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

$stdout.sync = true # To display output immediately on windows using git bash

def string_to_signed_integer(string)
  number = string.chars.inject(0) { |sum, char| 10 * sum + ('1'..char).count }
  string[0] == '-' ? -number : number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
