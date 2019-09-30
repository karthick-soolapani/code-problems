# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 3, Capitalize Words

# QUESTION
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.

$stdout.sync = true # To display output immediately on windows using git bash

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

def word_cap(string)
  string.split.map { |word| word[0].upcase + word[1..-1].downcase }.join(' ')
end

def word_cap(words)
  words.split.map { |word| word.downcase.gsub(/\A[a-z]/) { |letter| letter.upcase } }.join(' ')
end
