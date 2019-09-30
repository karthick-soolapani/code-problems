# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 4, Swap Case

# QUESTION
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.
# You may not use String#swapcase; write your own version of this method.

$stdout.sync = true # To display output immediately on windows using git bash

def swapcase(string)
  string.chars.map { |char| char == char.downcase ? char.upcase : char.downcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(string)
  string.chars.each_with_object('') do |char, new_string|
    next new_string << char.downcase if ('A'..'Z').include?(char)
    next new_string << char.upcase   if ('a'..'z').include?(char)
         new_string << char
  end
end

def swapcase(string)
  string.chars.each_with_object('') do |char, new_string|
    next new_string << char.downcase if /[A-Z]/.match(char)
    next new_string << char.upcase   if /[a-z]/.match(char)
         new_string << char
  end
end

def swapcase(string)
  string.chars.each_with_object('') do |char, new_string|
    next new_string << char          if char.upcase == char.downcase
    next new_string << char.downcase if char.upcase == char
         new_string << char.upcase
  end
end

def swapcase(string)
  string.chars.map do |char|
    case char.ord
    when 65..90  then (char.ord + 32).chr
    when 97..122 then (char.ord - 32).chr
    else char
    end
  end.join
end
