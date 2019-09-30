# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 5, Palindromic Substrings

# QUESTION
# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards
# as it does backwards. The return value should be arranged in the same sequence as the
# substrings appear in the string. Duplicate palindromes should be included multiple times.
# You may (and should) use the substrings method you wrote in the previous exercise.
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

$stdout.sync = true # To display output immediately on windows using git bash

def palindromes(string)
  substrings = string.chars.map.with_index do |_, idx1|
    inner_string = string[idx1..-1]
    inner_string.chars.map.with_index { |_, idx2| inner_string[0..idx2] }
  end.flatten
  
  substrings.select do |word|
    word = word.gsub(/[^a-z0-9]/i, '').downcase
    word.length > 1 && word == word.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

#2
def substrings(string)
  string.chars.map.with_index do |_, idx1|
    inner_string = string[idx1..-1]
    inner_string.chars.map.with_index { |_, idx2| inner_string[0..idx2] }
  end.flatten
end

def palindromes(string)
  substrings(string).select do |word|
    # word = word.gsub(/[^a-z]/i, '').downcase # this is needed only when
    # non-alpabets and cases are to be ignored
    word.length > 1 && word == word.reverse
  end
end

#3
def substrings_at_start(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end

def substrings(string)
  string.chars.map.with_index { |_, idx| substrings_at_start(string[idx..-1]) }.flatten
end

def palindromes(string)
  substrings(string).select { |word| word.length > 1 && word == word.reverse }
end
