# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 6, Hello, Sophie! (Part 2)

# QUESTION
# Using the code from the previous exercise, move the greeting from the #initialize method to an instance method named #greet that prints a greeting when invoked.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
