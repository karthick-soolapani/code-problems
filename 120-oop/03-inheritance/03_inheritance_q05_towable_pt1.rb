# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 5, Towable (Part 1)

# QUESTION
# Using the following code, create a Towable module that contains a method named tow that prints I can tow a trailer! when invoked. Include the module in the Truck class.

$stdout.sync = true # To display output immediately on windows using git bash

module Towable
  def tow
    puts "I can tow a trailer!"
  end
end

class Truck
  include Towable
end

class Car
end

truck1 = Truck.new
truck1.tow
