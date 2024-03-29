# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 8, Fibonacci Numbers (Recursion)

# QUESTION
# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

$stdout.sync = true # To display output immediately on windows using git bash

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

#1 - TAIL RECURSION (faster than normal versionn)
def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(20)
