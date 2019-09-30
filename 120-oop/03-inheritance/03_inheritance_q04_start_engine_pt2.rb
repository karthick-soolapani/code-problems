# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Inheritance, Question 4, Start the Engine (Part 2)

# QUESTION
# Given the following code, modify #start_engine in Truck by appending 'Drive fast, please!' to the return value of #start_engine in Vehicle. The 'fast' in 'Drive fast, please!' should be the value of speed.

$stdout.sync = true # To display output immediately on windows using git bash

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')
