# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 6, Guaranteed Formatting

# QUESTION
# Using the following code, add the appropriate accessor methods so that @name is capitalized upon assignment.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_reader :name
  
  def name=(name)
    @name = name.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name
