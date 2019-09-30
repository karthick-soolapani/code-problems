# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 4, What Are You?

# QUESTION
# Using the code from the previous exercise, add an #initialize method that prints I'm a cat! when a new Cat object is initialized.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  def initialize
    puts "I'm a Cat"
  end
end

kitty = Cat.new
