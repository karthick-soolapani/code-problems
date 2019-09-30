# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Accessor Methods, Question 9, Calculated Age

# QUESTION
# Using the following code, multiply @age by 2 upon assignment, then multiply @age by 2 again when @age is returned by the getter method.

$stdout.sync = true # To display output immediately on windows using git bash

class Person
  def age=(age)
    @age = age * 2
  end
  
  def age
    @age * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age

#1
class Person
  def age=(age)
    @age = double(age)
  end

  def age
    double(@age)
  end

  private

  def double(value)
    value * 2
  end
end
