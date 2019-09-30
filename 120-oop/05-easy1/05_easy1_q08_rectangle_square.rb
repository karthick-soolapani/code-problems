# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 8, Rectangles and Squares

# QUESTION
# Write a class called Square that inherits from Rectangle, and is used like this:

$stdout.sync = true # To display output immediately on windows using git bash

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"

# ALTERNATE SOLUTIONS

class Square < Rectangle
  def initialize(side)
    @height = @width = side
  end
end

class Square < Rectangle
  def initialize(height, width = height)
    super
  end
end
