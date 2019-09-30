# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 1 Question 8, Writer

# QUESTION
# Using the code from the previous exercise, add a setter method named #name. Then, rename kitty to 'Luna' and invoke #greet again.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_reader :name
  attr_writer :name

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
