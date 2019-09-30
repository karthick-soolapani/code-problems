# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 1, Reading and Writing

# QUESTION
# Add the appropriate accessor methods to the following code.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

Person = Struct.new(:name)

# A Struct is a convenient way to bundle a number of attributes together, using accessor methods, without having to write an explicit class.
