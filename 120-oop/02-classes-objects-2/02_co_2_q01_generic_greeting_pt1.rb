# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 1, Generic Greeting (Part 1)

# QUESTION
# Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

$stdout.sync = true # To display output immediately on windows using git bash

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting
