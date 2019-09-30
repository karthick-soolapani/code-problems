# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 7, Stringy Strings

# QUESTION
# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# EXAMPLES
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

$stdout.sync = true # To display output immediately on windows using git bash

def stringy(num, start = 1)
  return 'Positive integer only' unless num.is_a?(Integer) && num > 0
  return 'Invalid starting number' unless start == 1 || start == 0

  string = ''
  num.times do
    string << start.to_s
    start = 1 - start
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
p stringy('cool')
p stringy(0)
p stringy(-10)
p stringy('')
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 5)
puts stringy(7, true)