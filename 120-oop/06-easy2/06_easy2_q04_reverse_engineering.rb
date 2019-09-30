# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 4, Reverse Engineering

# QUESTION
# Write a class that will display:
# ABC
# xyz

$stdout.sync = true # To display output immediately on windows using git bash

class Transform
  def initialize(data)
    @data = data
  end

  def uppercase
    @data.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
