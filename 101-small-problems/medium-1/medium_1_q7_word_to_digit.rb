# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 7, Word to Digit

# QUESTION
# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

$stdout.sync = true # To display output immediately on windows using git bash

ENG_NUM = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  string.gsub!(/\w+\s*/) { |word| ENG_NUM.index(word.downcase.strip) || word }
  string.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end

p word_to_digit('Hey No. 4, please call me at three two zero five five five one TWO three Four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
