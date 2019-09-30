# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 1, Longest Sentence

# QUESTION
# Write a program that reads the content of a text file and then prints the longest
# sentence in the file based on number of words. Sentences may end with periods
# (.), exclamation points (!), or question marks (?). Any sequence of characters
# that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

$stdout.sync = true # To display output immediately on windows using git bash

def longest_sentence
  text = File.read('sample.txt')
  sentences = text.split(/[.!?]/)
  longest_sentence = sentences.max_by { |sentence| sentence.split.size }
  longest_sentence_words = longest_sentence.split.size

  puts "Longest sentence -"
  puts longest_sentence
  puts "Number of words in the sentence = #{longest_sentence_words}"

  paragraphs = text.split(/\n+/)
  longest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
  longest_paragraph_words = longest_paragraph.split.size

  puts
  puts "Longest paragraph -"
  puts longest_paragraph
  puts "Number of words in the paragraph = #{longest_paragraph_words}"

  words = text.split(/\s+/)
  longest_word = words.max_by { |word| word.size }

  puts
  puts "Longest word - #{longest_word}"
  puts "Number of characters in the word = #{longest_word.size}"
end

longest_sentence
