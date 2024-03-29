# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 9, Accessor

# QUESTION
# Using the code from the previous exercise, replace the getter and setter methods using Ruby shorthand.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet
