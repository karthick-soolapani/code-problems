# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 10, Transportation

# QUESTION
# Create a module named Transportation that contains three classes: Vehicle, Truck, and Car. Truck and Car should both inherit from Vehicle.

$stdout.sync = true # To display output immediately on windows using git bash

module Transportation
  class Vehicle; end
  class Truck < Vehicle; end
  class Car < Vehicle; end
end

Transportation::Truck.new

module Transportation
  Vehicle = Class.new
  Truck   = Class.new(Vehicle)
  Car     = Class.new(Vehicle)
end
