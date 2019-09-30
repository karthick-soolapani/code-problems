# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 4, Comparing Names

# QUESTION
# Using the following code, add the appropriate accessor methods. Keep in mind that the last_name getter shouldn't be visible outside the class, while the first_name getter should be visible outside the class.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?
