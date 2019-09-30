# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 3, List of Digits

# QUESTION
# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

$stdout.sync = true # To display output immediately on windows using git bash

def digit_list(num)
  return 'Invalid integer' unless num.is_a?(Integer)
  return 'Positive number only' if num <= 0

  num.to_s.split('').map { |element| element.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts
p digit_list(-7)
p digit_list(7.0)
p digit_list(0)
