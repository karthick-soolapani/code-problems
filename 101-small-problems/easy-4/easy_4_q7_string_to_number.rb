# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 7, Convert a String to a Number!

# QUESTION
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.
# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

$stdout.sync = true # To display output immediately on windows using git bash

def string_to_integer(num_string)
  digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
             '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

  num_string.chars.reverse.map.with_index { |char, idx| digits[char] * (10 ** idx) }.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
puts

# FURTHER EXPLORATION

def hexadecimal_to_integer(hex_string)
  hex_digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                 '8' => 8, '9' => 9, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

  hex_string.chars.inject(0) { |sum, char| 16 * sum + hex_digits[char.downcase] }
end

p hexadecimal_to_integer('4D9f') == 19871

# ALTERNATIVE SOLUTONS

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  # 10 * 0 + 4 = 4
  # 10 * 4 + 3 = 43
  # 10 * 43 + 2 = 432
  # 10 * 432 + 1 = 4321
  value
end

def string_to_integer(string)
  string.chars.inject(0) { |sum, char| 10 * sum + ('1'..char).count }
end

def hex_digit(char)
  [(1..char).count, 9].min + ('a'..char.downcase).count
end

def hexadecimal_to_integer(string)
  string.chars.reverse.map.with_index { |char, idx| (16 ** idx) * hex_digit(char) }.sum
end
