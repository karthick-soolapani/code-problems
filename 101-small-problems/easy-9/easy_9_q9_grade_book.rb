# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 9, Grade book

# QUESTION
# Write a method that determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'

$stdout.sync = true # To display output immediately on windows using git bash

GRADES = { 'A' => (90..100), 'B' => (80...90), 'C' => (70...80), 'D' => (60...70), 'F' => (0...60) }

def get_grade(*scores)
  average = scores.sum / scores.size
  GRADES.detect { |grade, score| score === average }.first
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

def get_grade(s1, s2, s3)
  average = (s1 + s2 + s3) / 3.0
  GRADES.select { |grade, score| score.include?(average) }.keys.first
end

def get_grade(*scores)
  average = scores.sum / scores.size
  GRADES.each { |grade, score| return grade if score === average }
end
