# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 5, Hello, Sophie! (Part 1)

# QUESTION
# Using the code from the previous exercise, add a parameter to #initialize that provides a name for the Cat object. Use an instance variable to print a greeting with the provided name. (You can remove the code that displays I'm a cat!.)

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
