# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 10, Unexpected Change

# QUESTION
# Modify the following code to accept a string containing a first and last name. The name should be split into two instance variables in the setter method, then joined in the getter method to form a full name.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  def name=(full_name)
    @first_name, @last_name = full_name.split
    @last_name ||= ''
  end
  
  def name
    "#{@first_name} #{@last_name}".strip
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

person1.name = 'John'
puts person1.name
