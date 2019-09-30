# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 10, Protected Secret

# QUESTION
# Using the following code, add an instance method named compare_secret that compares the value of @secret from person1 with the value of @secret from person2.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_writer :secret

  def compare_secret(another_person)
    @secet == another_person.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)
