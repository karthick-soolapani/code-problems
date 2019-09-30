# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 7, Odd Lists

# QUESTION
# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

$stdout.sync = true # To display output immediately on windows using git bash

def oddities(arr)
  return 'Invalid input' unless arr.is_a? Array

  odd_elements = []
  arr.each_with_index do |element, idx|
    odd_elements << element if idx.even?
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# ALTERNATIVE SOLUTONS

=begin

def oddities1(arr)
  (arr.map.with_index { |element,i| element if i.even? }).compact
end

def oddities(arr)
  arr.select.with_index { |_, index| index.even? }
end

def oddities(arr)
  # Mutates caller
  # Remove " + 1" for even"
  (arr.size / 2).times { |index| arr.slice!(index + 1) }
  arr
end

def oddities_v4!(arr)
  # Mutates caller a lot
  output = []
  while !arr.empty?
    # Flip the order of the following 2 lines for even
    output << arr.shift
    arr.shift
  end
  output
end

=end
