# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 2, Delete vowels

# QUESTION
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

$stdout.sync = true # To display output immediately on windows using git bash

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

def remove_vowels_v2(strings)
  strings.each { |string| string.gsub!(/[aeiou]/i, '') }
end

puts
p remove_vowels_v2(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels_v2(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels_v2(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
