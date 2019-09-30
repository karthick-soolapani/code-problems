# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 7, Prefix the Name

# QUESTION
# Using the following code, add the appropriate accessor methods so that @name is returned with the added prefix 'Mr.'.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_writer :name
  
  def name
    'Mr. ' + @name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
