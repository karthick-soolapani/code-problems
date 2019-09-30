# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 3, Counting the Number of Characters

# QUESTION
# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

$stdout.sync = true # To display output immediately on windows using git bash

print "Please write word or multiple words: "
str = gets.chomp

char_num = str.delete(' ').size
puts "There are #{char_num} characters in #{str}."
