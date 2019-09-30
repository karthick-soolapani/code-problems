# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 5, Who is Older?

# QUESTION
# Using the following code, add the appropriate accessor methods. Keep in mind that @age should only be visible to instances of Person.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_writer :age

  def older_than?(other)
    age > other.age
  end

  protected

  attr_reader :age
end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)
