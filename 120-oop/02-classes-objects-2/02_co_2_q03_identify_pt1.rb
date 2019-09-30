# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 3, Identify Yourself (Part 1)

# QUESTION
# Using the following code, add a method named #identify that returns its calling object.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify
