# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 5, Greeting a user

# QUESTION
# Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# EXAMPLES
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

$stdout.sync = true # To display output immediately on windows using git bash

print 'What is your name? '
name = gets.chomp

name_chars = name.chars

if name_chars.last == '!'
  name_chars.pop
  name = name_chars.join
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Alternative solution
# if name[-1] == '!'
#   name = name.chop    (This removes the trailing ! sign)
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"