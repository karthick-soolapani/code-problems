# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 5, Staggered Caps (Part 1)

# QUESTION
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

$stdout.sync = true # To display output immediately on windows using git bash

def staggered_case(string, first_char_upcase = true)
  string.chars.each do |char|
    first_char_upcase ? char.upcase! : char.downcase!
    first_char_upcase = !first_char_upcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case(string)
  string.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char.downcase }.join
end

def staggered_case(string, cap = 0)
  string.chars.each_with_index { |char, idx| (idx + cap).even? ? char.upcase! : char.downcase! }.join
end
