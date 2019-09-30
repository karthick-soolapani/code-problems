# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 7, Identify Yourself (Part 2)

# QUESTION
# Update the following code so that it prints I'm Sophie! when it invokes puts kitty.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def to_s
    "I'm #{name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty
