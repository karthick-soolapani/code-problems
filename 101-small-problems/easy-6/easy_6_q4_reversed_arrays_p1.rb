# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 4, Reversed Arrays (Part 1)

# QUESTION
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.

$stdout.sync = true # To display output immediately on windows using git bash

def reverse!(arr)
  (arr.size / 2).times { |idx| arr[idx], arr[-1 - idx] = arr[-1 - idx], arr[idx] }
  arr
end


list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []

# ALTERNATE SOLUTIONS

def reverse!(arr)
  arr.each_index { |idx| arr.insert(idx, arr.pop) }
end

def reverse!(arr)
  arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
end
