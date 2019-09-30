# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 2, Choose the Right Method

# QUESTION
# Add the appropriate accessor methods to the following code.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_accessor :name
  attr_writer :phone_number
end

person1 = Person.new
person1.name = 'Jessica'
person1.phone_number = '0123456789'
puts person1.name
