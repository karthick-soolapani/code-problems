# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 8, Method Lookup (Part 2)

# QUESTION
# Using the following code, determine the lookup path used when invoking cat1.color. Only list the classes and modules that Ruby will check when searching for the #color method.

$stdout.sync = true # To display output immediately on windows using git bash

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

# Cat
# Animal
# Object
# Kernel
# BasicObject
