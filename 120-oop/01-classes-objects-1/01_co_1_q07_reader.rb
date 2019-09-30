# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 7, Reader

# QUESTION
# Using the code from the previous exercise, add a getter method named #name and invoke it in place of @name in #greet.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
