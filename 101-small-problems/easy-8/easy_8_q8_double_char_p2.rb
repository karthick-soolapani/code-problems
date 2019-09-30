# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 8, Double Char (Part 2)

# QUESTION
# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

$stdout.sync = true # To display output immediately on windows using git bash

def double_consonants(string)
  string.chars.inject('') do |str, char|
    char.downcase.count("a-z", "^aeiou") > 0 ? str + char * 2 : str + char
  end
end

def double_consonants(string)
  string.chars.inject('') { |str, char| /[a-z&&[^aeiou]]/i.match(char) ? str + char * 2 : str + char }
end

def double_consonants(string)
  string.gsub(/([a-z&&[^aeiou]])/i, '\1\1')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
