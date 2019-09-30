# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 7, each_with_object

# QUESTION
# Implement Enumerable#each_with_object

$stdout.sync = true # To display output immediately on windows using git bash

def each_with_object(arr, obj)
  arr.each { |el| yield(el, obj) }
  obj
end

def each_with_object(arr, obj)
  arr.each { |el| yield(el, obj) } && obj
end

def each_with_object(arr, obj)
  arr.inject(obj) { |obj, el| yield(el, obj); obj }
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}
