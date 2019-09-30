# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 7, Buggy Code - Car Mileage

# QUESTION
# Fix the following code so it works properly:

$stdout.sync = true # To display output immediately on windows using git bash

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    mileage = total # should be self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678

# SOLUTION 1: Change increment_mileage to:

# def increment_mileage(miles)
#   total = mileage + miles
#   self.mileage = total
# end

# SOLUTION 2: Change increment_mileage to:

# def increment_mileage(miles)
#   total = mileage + miles
#   @mileage = total
# end
