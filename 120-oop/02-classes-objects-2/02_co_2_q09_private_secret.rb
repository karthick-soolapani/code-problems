# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Classes & Objects 2 Question 9, Private Secret

# QUESTION
# Using the following code, add a method named share_secret that prints the value of @secret when invoked.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  attr_writer :secret

  def share_secret
    puts @secret
  end

  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret
