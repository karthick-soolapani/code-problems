# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 7, Letter Counter (Part 2)

# QUESTION
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.

$stdout.sync = true # To display output immediately on windows using git bash

def word_sizes(sentence)
  sentence.split.each_with_object(Hash.new(0)) do |word, obj|
    word = word.gsub(/[^a-z]+/i, '')
    obj[word.size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# ALTERNATE SOLUTION

# This can be used instead of gsub to remove symbols
# clean_word = word.delete('^A-Za-z')

# Directly count by ignoring the symbols
# word.count(^a-zA-Z)
