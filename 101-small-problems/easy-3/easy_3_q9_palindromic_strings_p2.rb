# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 9, Palindromic Strings (Part 2)

# QUESTION
# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you
# wrote in the previous exercise.

$stdout.sync = true # To display output immediately on windows using git bash

def real_palindrome?(str)
  str = str.gsub(/\W_/, '')
  str.downcase == string.downcase.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# ALTERNATE SOLUTIONS

=begin

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

=end