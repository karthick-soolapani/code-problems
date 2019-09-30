# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 9, Fibonacci Numbers (Procedural)

# QUESTION
# Rewrite your recursive fibonacci method so that it computes its results without recursion.

$stdout.sync = true # To display output immediately on windows using git bash

def fibonacci(n)
  (3..n).each_with_object([1, 1]) { |_, obj| obj << (obj[-1] + obj[-2]) }.last
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

#1 - MUCH FASTER as only last 2 elements are maintained
def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) { first, last = [last, first + last] }
  last
end
