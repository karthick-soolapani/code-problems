# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 6, Fix the Program - Flight Data

# QUESTION
# There is nothing technically incorrect about this class, but the definition may lead to problems in the future. How can this class be fixed to be resistant to future problems?

$stdout.sync = true # To display output immediately on windows using git bash

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# SOLUTION

# Delete the following line:

# attr_accessor :database_handle

# DISCUSSION

# The problem with this definition is that we are providing easy access to the @database_handle instance variable, which is almost certainly just an implementation detail. As an implementation detail, users of this class should have no need for it, so we should not be providing direct access to it.

# The fix is easy: don't provide the unneeded and unwanted attr_accessor.

# What can go wrong if we don't change things? First off, by making access to @database_handle easy, someone may use it in real code. And once that database handle is being used in real code, future modifications to the class may break that code. You may even be prevented from modifying your class at all if the dependent code is of greater concern.
