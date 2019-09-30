# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 2, Start the Engine (Part 1)

# QUESTION
# Change the following code so that creating a new Truck automatically invokes #start_engine.

$stdout.sync = true # To display output immediately on windows using git bash

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super
    start_engine
  end

  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year
