# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 6, fizzbuzz

# QUESTION
# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two numbers,
# except if a number is divisible by 3, print "Fizz", if a number is divisible by 5,
# print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

$stdout.sync = true # To display output immediately on windows using git bash

def fizzbuzz(start_num, end_num)
  (start_num..end_num).each_with_object([]) do |num, arr|
    next arr << 'FizzBuzz' if num % 5 == 0 && num % 3 == 0
    next arr << 'Buzz'     if num % 5 == 0
    next arr << 'Fizz'     if num % 3 == 0
         arr << num
  end.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
