# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 2, Lettercase Counter

# QUESTION
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

$stdout.sync = true # To display output immediately on windows using git bash

def letter_case_count(string)
  counts = {}
  
  counts[:lowercase] = string.count('a-z')
  counts[:uppercase] = string.count('A-Z')
  counts[:neither]   = string.count('^a-zA-Z')
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.each_char do |char|
    next counts[:lowercase] += 1 if ('a'..'z').include?(char)
    next counts[:uppercase] += 1 if ('A'..'Z').include?(char)
    counts[:neither] += 1
  end
  counts
end
