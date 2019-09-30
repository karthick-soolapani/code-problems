# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 9, Iterators: True for One?

# QUESTION
# Implement Enumerable#one?

$stdout.sync = true # To display output immediately on windows using git bash

def one?(collection)
  counter = 0

  collection.each do |el|
    counter += 1 if yield(el)
    return false if counter > 1
  end
  
  counter == 1
end

def one?(input_array)
  1 == input_array.inject(0) do |sum, element|
    sum += 1 if yield(element)
    return false if sum > 1
    sum
  end
end

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }                     == false
