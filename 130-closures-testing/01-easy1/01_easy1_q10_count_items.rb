# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 10, Count Items

# QUESTION
# Write a method that takes an array as an argument, and a block that returns true or false depending on the value of the array element passed to it. The method should return a count of the number of times the block returns true.

$stdout.sync = true # To display output immediately on windows using git bash

def count(collection)
  collection.select { |el| yield(el) }.size
end

def count(collection, &block)
  collection.select(&block).size
end

def count(collection)
  collection.inject(0) { |count, el| yield(el) ? count + 1 : count }
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# times
def count(arr)
  record = 0
  (arr.size).times do |n|
    record += 1 if yield(arr[n])
  end
  record
end

# sum
def count(arr)
  arr.sum { |element| yield(element) ? 1 : 0 }
end

# recursion
def count(array, &block)
  total = 0
  return total if array == []
  total += 1 if yield array.pop
  total + count(array, &block)
end
