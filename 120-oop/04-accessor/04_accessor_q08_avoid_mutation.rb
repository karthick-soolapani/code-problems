# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 8, Avoid Mutation

# QUESTION
# The following code is flawed. It currently allows @name to be modified from outside the method via a destructive method call. Fix the code so that it returns a copy of @name instead of a reference to it.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  def initialize(name)
    @name = name
  end
  
  def name
    @name.clone
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name
