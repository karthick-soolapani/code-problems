# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 3, Lettercase Percentage Ratio

# QUESTION
# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

$stdout.sync = true # To display output immediately on windows using git bash

def letter_percentages(string)
  percentages = {}
  percentages[:lowercase] = string.count('a-z')     * 100 / string.size.to_f
  percentages[:uppercase] = string.count('A-Z')     * 100 / string.size.to_f
  percentages[:neither]   = string.count('^a-zA-Z') * 100 / string.size.to_f
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
