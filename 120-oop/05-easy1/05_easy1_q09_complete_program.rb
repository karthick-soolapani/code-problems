# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 9, Complete the Program - Cats!

# QUESTION
# Update this code so that when you run it, you see the following output:
# My cat Pudding is 7 years old and has black and white fur.
# My cat Butterscotch is 10 years old and has tan and white fur.

$stdout.sync = true # To display output immediately on windows using git bash

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, color)
    super(name, age)
    @color = color
  end
  
  def to_s
    "My cat #{@name} is #{@age} years old and has #{@color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
