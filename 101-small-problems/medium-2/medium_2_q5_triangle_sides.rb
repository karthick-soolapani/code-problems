# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 5, Triangle Sides

# QUESTION
# A triangle is classified as follows:
# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have lengths
# greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments,
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
# on whether the triangle is equilateral, isosceles, scalene, or invalid.

$stdout.sync = true # To display output immediately on windows using git bash

def triangle(s1, s2, s3)
  sides = [s1, s2, s3]

  return :invalid     if sides.min(2).sum <= sides.max
  return :equilateral if sides.uniq.one?
  return :isosceles   if sides.uniq.size == 2
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

def triangle(s1, s2, s3)
  sides = [s1, s2, s3]

  if sides.sum - sides.max <= sides.max
    :invalid
  elsif sides.count(s1) == 3
    :equilateral
  elsif sides.any? { |side| sides.count(side) == 2 }
    :isosceles
  else
    :scalene
  end
end
