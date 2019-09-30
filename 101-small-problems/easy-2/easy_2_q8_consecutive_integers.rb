# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 8, Sum or Product of Consecutive Integers

# QUESTION
# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# EXAMPLES
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

$stdout.sync = true # To display output immediately on windows using git bash

def validate_num(number)
  number.to_i.to_s == number && number.to_i > 0
end

def validate_operation(operation)
  ['sum', 'product'].any? { |element| element.start_with?(operation) } && !(operation.empty?)
end

num = ''
loop do
  puts '>> Please enter an integer greater than 0:'
  num = gets.chomp

  break if validate_num(num)
  puts "#{num} is not a positive integer"
end

num = num.to_i

operation = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  
  break if validate_operation(operation)
  puts "#{operation} is not a valid operation"
end

start_num = 1

if 'sum'.start_with?(operation)
  sum = (start_num..num).inject(:+)
  puts "The sum of the integers between #{start_num} and #{num} is #{sum}."
else
  product = (start_num..num).inject(:*)
  puts "The product of the integers between #{start_num} and #{num} is #{product}."
end
