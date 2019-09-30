# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 1, How old is Teddy?

# QUESTION
# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# EXAMPLES
# Teddy is 69 years old!

# Further Exploration
# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

$stdout.sync = true # To display output immediately on windows using git bash

puts '=> What is your name?'
name = gets.chomp
name = 'Teddy' if name.empty?

puts "#{name} is #{rand(20..200)} years old!"
