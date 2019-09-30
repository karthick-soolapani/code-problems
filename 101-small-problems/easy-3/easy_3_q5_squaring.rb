# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 5, Squaring an Argument

# QUESTION
# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).

# EXAMPLES
# square(5) == 25
# square(-8) == 64

$stdout.sync = true # To display output immediately on windows using git bash

def square(arg1)
  return "#{arg1} is not valid for squaring" unless arg1.is_a?(Numeric)

  arg1 ** 2
end

p square(5)
p square(3.5)
p square([1, 2, 3])
p square('abc')
p square(-6)

# ALTERNATE SOLUTION
# Using multiply method from previous exercise
# def square(n)
#   multiply(n, n)
# end
