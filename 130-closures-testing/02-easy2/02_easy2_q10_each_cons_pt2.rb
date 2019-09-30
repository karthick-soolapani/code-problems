# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 10, each_cons (Part 2)

# QUESTION
# Implement Enumerable#each_cons with an argument

$stdout.sync = true # To display output immediately on windows using git bash

def each_cons(arr, size)
  (0..arr.size - size).each { |idx| yield(*arr[idx, size]) }
  nil
end

def each_cons(array, number)
  array[0..-number].each_index { |index| yield(*array[index, number]) }
  nil
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
