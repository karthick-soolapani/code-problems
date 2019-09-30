# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 7, Method Lookup (Part 1)

# QUESTION
# Using the following code, determine the lookup path used when invoking cat1.color. Only list the classes that were checked by Ruby when searching for the #color method.

$stdout.sync = true # To display output immediately on windows using git bash

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

# [Cat, Animal]
# Ruby stops checking at Animal because it found the #color method. So this
# shouldn't include Object, Kernel, BasicObject classes even though it's
# part of the chain
