# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 6, Colorful Cat

# QUESTION
# Using the following code, create a class named Cat that prints a greeting when #greet is invoked. The greeting should include the name and color of the cat. Use a constant to define the color.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  COLOR = 'purple'

  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello! My name is #{@name} and I'm a #{COLOR} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
