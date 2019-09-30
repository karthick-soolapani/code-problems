# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 2, Fix the Program - Drivable

# QUESTION
# Correct the following program so it will work properly. Assume that the Car class has a complete implementation; just make the smallest possible change to ensure that cars have access to the drive method.

$stdout.sync = true # To display output immediately on windows using git bash

module Drivable
  def self.drive
    puts 'zooom'
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive

# Modify the self.drive method in Drivable to simply drive:

# def drive; end
