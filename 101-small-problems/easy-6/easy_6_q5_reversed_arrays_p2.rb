# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 5, Reversed Arrays (Part 2)

# QUESTION
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.
# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

$stdout.sync = true # To display output immediately on windows using git bash

def reverse(arr)
  arr.each_with_object([]) { |el, obj| obj.unshift(el) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

# ALTERNATE SOLUTIONS

def reverse(arr)
  arr.reverse_each.with_object([]) { |el, obj| obj << el }
end

def reverse(arr)
  arr.map.with_index {|_, idx| arr[-1 - idx]}
end
