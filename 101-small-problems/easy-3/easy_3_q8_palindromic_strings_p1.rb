# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 8, Palindromic Strings (Part 1)

# QUESTION
# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward. For this exercise,
# case matters as does punctuation and spaces.

$stdout.sync = true # To display output immediately on windows using git bash

def palindrome?(str)
  idx1 = 0
  idx2 = -1

  while idx1 < str.length
    return false unless str[idx1] == str[idx2]

    idx1 += 1
    idx2 -= 1
  end
  true
end

def palindrome_v2?(str)
  str == str.reverse
end

def palindrome_v3?(str)
  idx = 0

  while idx < str.length
    return false unless str[idx] == str[str.length - 1 - idx]

    idx += 1
  end
  true
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 'boom', 'boom', 2, 1]) == true


puts
p palindrome_v2?('madam') == true
p palindrome_v2?('Madam') == false          # (case matters)
p palindrome_v2?("madam i'm adam") == false # (all characters matter)
p palindrome_v2?('356653') == true
p palindrome_v2?([1, 2, 'boom', 'boom', 2, 1]) == true

puts
p palindrome_v3?('madam') == true
p palindrome_v3?('Madam') == false          # (case matters)
p palindrome_v3?("madam i'm adam") == false # (all characters matter)
p palindrome_v3?('356653') == true
p palindrome_v3?([1, 2, 'boom', 'boom', 2, 1]) == true
