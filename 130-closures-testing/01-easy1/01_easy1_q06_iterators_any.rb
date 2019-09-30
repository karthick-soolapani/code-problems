# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 6, Iterators: True for Any?

# QUESTION
# implement Enumerable#any?

$stdout.sync = true # To display output immediately on windows using git bash

def any?(arr)
  arr.each { |element| return true if yield(element) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
