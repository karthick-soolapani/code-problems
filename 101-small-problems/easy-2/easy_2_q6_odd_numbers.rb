# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 6, Odd Numbers

# QUESTION
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

$stdout.sync = true # To display output immediately on windows using git bash

(1..99).each { |num| puts num if num.odd? }

puts
puts 'Alternative method'
puts

puts (1..99).to_a.select { |num| num % 2 == 1 }

puts
puts 'Alternative method'
puts

1.upto(99) { |num| puts num if num.odd? }
