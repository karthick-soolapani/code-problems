# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 5, Counting Cats

# QUESTION
# Using the following code, create a class named Cat that tracks the number of times a new Cat object is instantiated. The total number of Cat instances should be printed when #total is invoked.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  @@num_of_cats = 0
  
  def initialize
    @@num_of_cats += 1
  end
  
  def self.total
    puts @@num_of_cats
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total
