# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 2, Hello, Chloe!

# QUESTION
# Using the following code, add an instance method named #rename that renames kitty when invoked.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name
