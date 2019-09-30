# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 4, Matching Parentheses?

# QUESTION
# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

$stdout.sync = true # To display output immediately on windows using git bash

def balanced?(string)
  string = string.gsub(/(?<=\w)'(?=\w)/, '') # accounts for words with apostrophe
  return false if string.count("'").odd? || string.count('"').odd?

  counts = { ['(', ')'] => 0, ['[', ']'] => 0, ['{', '}'] => 0 }
  string.each_char do |char|
    counts.each_key { |key| counts[key] += 1 if key.include?(char) } if char.match(/[({\[]/)
    counts.each_key { |key| counts[key] -= 1 if key.include?(char) } if char.match(/[)}\]]/)
    break if counts.values.include?(-1)
  end
  counts.values.sum.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

puts
p balanced?("What's [] up") == true
p balanced?('What"s up') == false
p balanced?('What }{ up') == false
p balanced?('Wh"at {} "') == true
p balanced?('())(()') == false
