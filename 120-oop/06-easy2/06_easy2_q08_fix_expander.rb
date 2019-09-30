# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 8, Fix The Program - Expander

# QUESTION
# What is wrong with the following code? What fix(es) would you make?

$stdout.sync = true # To display output immediately on windows using git bash

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# remove the self in the Expander#to_s method
