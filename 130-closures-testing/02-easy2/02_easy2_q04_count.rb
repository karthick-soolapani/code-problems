# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 4, count

# QUESTION
# Implement Enumerable#count

$stdout.sync = true # To display output immediately on windows using git bash

def count(*arr)
  arr.inject(0) { |count, el| yield(el) ? count + 1 : count }
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
