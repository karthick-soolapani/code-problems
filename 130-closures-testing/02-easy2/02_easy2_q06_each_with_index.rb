# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 6, each_with_index

# QUESTION
# implement Enumerable#each_with_index

$stdout.sync = true # To display output immediately on windows using git bash

def each_with_index(arr)
  idx = 0
  arr.each do |el|
    yield(el, idx)
    idx += 1
  end
end

# using Integer#times
def each_with_index(arr)
  arr.size.times { |idx| yield(arr[idx], idx) }
  arr
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# recursive:
def each_with_index(arr, idx = 0, &block)
  idx == arr.size ? (return arr) : block.call(arr[idx], idx)
  each_with_index(arr, idx + 1, &block)
end

# using Array#each:
def each_with_index(arr)
  idx = -1
  arr.each { |elem| yield(elem, idx += 1) }
end
