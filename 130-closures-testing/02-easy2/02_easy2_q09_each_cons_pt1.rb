# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 9, each_cons (Part 1)

# QUESTION
# Implement Enumerable#each_cons

$stdout.sync = true # To display output immediately on windows using git bash

def each_cons(arr, size = 2)
  arr.each_index.with_object(nil) do |idx, _|
    break if idx + size > arr.size
    yield(arr[idx, size])
  end
end

def each_cons(arr, size = 2)
  (0..arr.size - size).each { |idx| yield(arr[idx, size]) }
  nil
end 

# inject
def each_cons(arr)
  arr.inject { |memo, elem| yield(memo, elem); elem }
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash #== { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
