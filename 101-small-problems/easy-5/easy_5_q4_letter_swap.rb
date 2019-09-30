# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 4, Letter Swap

# QUESTION
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

$stdout.sync = true # To display output immediately on windows using git bash

def swap(sentence)
  sentence.split.map do |word|
    word = word.chars
    first = word.pop
    last = word.shift
    word.unshift(first).push(last).compact.join
  end.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

def swap(sentence)
  sentence.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end.join(' ')
end

puts
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
