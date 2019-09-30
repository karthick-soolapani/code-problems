# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 1, Inherited Year

# QUESTION
# Using the following code, create two classes - Truck and Car - that both inherit from Vehicle.

$stdout.sync = true # To display output immediately on windows using git bash

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle; end
class Car < Vehicle; end

truck1 = Truck.new(1994)
puts truck1.year

car1 = Car.new(2006)
puts car1.year
