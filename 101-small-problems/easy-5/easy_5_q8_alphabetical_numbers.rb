# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 8, Alphabetical Numbers

# QUESTION
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

$stdout.sync = true # To display output immediately on windows using git bash

NUMBER_WORDS = %w(zero, one, two, three, four, five, six, seven, eight, nine,
                  ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen,
                  seventeen, eighteen, nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

def alphabetic_number_sort_v2(numbers)
  numbers.sort { |num1, num2| NUMBER_WORDS[num1] <=> NUMBER_WORDS[num2] }
end

puts
p alphabetic_number_sort_v2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
