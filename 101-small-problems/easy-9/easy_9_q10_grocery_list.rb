# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 10, Grocery List

# QUESTION
# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

$stdout.sync = true # To display output immediately on windows using git bash

def buy_fruit(fruits)
  fruits.map { |fruit, count| [fruit] * count }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  