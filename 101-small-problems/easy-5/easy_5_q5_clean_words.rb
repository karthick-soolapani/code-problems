# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 5, Clean up the words

# QUESTION
# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

$stdout.sync = true # To display output immediately on windows using git bash

def cleanup(sentence)
  sentence.gsub(/[^a-z]+/i, ' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '

def cleanup_v2(sentence)
  substituted_string = ''
  sentence.each_char do |char|
    if ('a'..'z').include?(char.downcase)
      substituted_string << char
    else
      substituted_string << ' '
    end
  end
  substituted_string.squeeze
end

puts
p cleanup_v2("---what's my +*& line?") == ' what s my line '


def cleanup_v3 str
  str1 = str.chars.map { |char| (("A".."Z").include? char.upcase) ? char : " "   }.join
  str1.gsub!("  ", " ") while str1.include? ("  ")
  str1
end

p cleanup_v3("---what's my +*& line?")