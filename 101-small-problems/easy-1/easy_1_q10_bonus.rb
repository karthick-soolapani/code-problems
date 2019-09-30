# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 10, What's my Bonus?

# QUESTION
# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the bonus
# should be half of the salary. If the boolean is false, the bonus should be 0.

# EXAMPLES
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

$stdout.sync = true # To display output immediately on windows using git bash

def calculate_bonus(salary, give_bonus)
  return 'Positive integer only' unless salary.is_a?(Integer) && salary > 0
  return 'Only true or false is valid' unless [true, false].include?(give_bonus)
  
  give_bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
