# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 9, Method Lookup (Part 3)

# QUESTION
# Using the following code, determine the lookup path used when invoking bird1.color. Only list the classes or modules that were checked by Ruby when searching for the #color method.

$stdout.sync = true # To display output immediately on windows using git bash

module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
bird1.color

# Bird
# Flyable
# Animal

bird1.method(:color).owner
# => Animal
