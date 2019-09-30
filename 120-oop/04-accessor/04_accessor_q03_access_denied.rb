# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 3, Access Denied

# QUESTION
# Modify the following code so that the value of @phone_number can't be modified outside the class.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1234567899)
puts person1.phone_number

person1.phone_number = 9987654321
puts person1.phone_number
