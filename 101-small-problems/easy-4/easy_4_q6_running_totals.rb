# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 6, Running Totals

# QUESTION
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

$stdout.sync = true # To display output immediately on windows using git bash

def running_total(numbers)
  cumulative_sum = []
  sum = 0

  numbers.each { |num| cumulative_sum << sum += num }
  cumulative_sum
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# ALTERNATIVE SOLUTIONS

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

def running_total(numbers)
  sum = 0
  numbers.each_with_object([]) { |num, totals| totals << sum += num }
end

def running_total(numbers)
  totals = []
  numbers.inject(0) { |sum, num| (totals << sum + num).last }
  totals
end

def running_total3(arr)
  output = []
  arr.size.times { |count| output << arr[0..count].inject(:+)}
  output
end

def running_total(numbers)
  numbers.map.with_index { |num, idx| numbers[0..idx].inject(:+) }
end
