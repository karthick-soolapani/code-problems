# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 5, Diamonds!

# QUESTION
# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may
# assume that the argument will always be an odd integer.

# diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

$stdout.sync = true # To display output immediately on windows using git bash

def diamond(grid_size, sym = '*', outline_only = false)
  result = []
  1.step(grid_size, 2) { |i| result << sym * i }
  (grid_size - 2).step(1, -2) { |i| result << sym * i }

  if outline_only
    result.map! do |element|
      next element if element.size == 1
      sym + ' ' * (element.size - 2) + sym
    end
  end

  puts result.map! { |element| element.center(grid_size) }
end

diamond(9)

def diamond(grid_size, sym)
  result = []
  1.step(grid_size, 2) { |i| result << sym * i }
  (grid_size - 2).step(1, -2) { |i| result << sym * i }
  puts result.map! { |element| element.center(grid_size) }
end

def diamond(grid_size)
  grid_size.times { |idx| puts ('*' * ([grid_size - idx, idx + 1].min * 2 - 1)).center(grid_size) }
end
