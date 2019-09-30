# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 5, What Will This Do?

# QUESTION
# What will the following code print?

$stdout.sync = true # To display output immediately on windows using git bash

class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata
puts thing.dupdata

# ByeBye
# HelloHello
