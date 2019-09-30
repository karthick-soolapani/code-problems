# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 5, Reverse It (Part 1)

# QUESTION
# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# EXAMPLES
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

$stdout.sync = true # To display output immediately on windows using git bash

def reverse_sentence(string)
  return puts('Invalid String') unless string.is_a?(String)

  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('   ') == '   '
