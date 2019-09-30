# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 6, Letter Counter (Part 1)

# QUESTION
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

$stdout.sync = true # To display output immediately on windows using git bash

def word_sizes(sentence)
  sentence.split.each_with_object(Hash.new(0)) { |word, obj| obj[word.size] += 1 } 
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
