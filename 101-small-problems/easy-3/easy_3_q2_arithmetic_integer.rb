# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 2, Arithmetic Integer

# QUESTION
# Write a program that prompts the user for two positive integers, and then
#  prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.

$stdout.sync = true # To display output immediately on windows using git bash

def prompt(msg)
  puts "==> #{msg}"
end

print "Enter the first number: "
num1 = gets.chomp.to_f
print "Enter the second number: "
num2 = gets.chomp.to_f

ops = [:+, :-, :*, :/, :%, :**]

puts

ops.each do |op|
  next if num2 == 0 && (op == '/' || op == '%')
  output = [num1, num2].inject(op)
  prompt("#{num1} #{op} #{num2} = #{format("%.2f", output)}")
end
