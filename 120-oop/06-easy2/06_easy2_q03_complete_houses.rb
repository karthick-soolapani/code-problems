# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 3, Complete The Program - Houses

# QUESTION
# Modify the House class so that the above program will work. You are permitted to define only one new method in House.

$stdout.sync = true # To display output immediately on windows using git bash

class House
  include Comparable
  attr_reader :price

  def initialize(price)
    @price = price
  end
  
  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)

puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# DISCUSSION

# Making objects comparable is actually quite easy; you don't have to create every possible comparison operator for the object. Instead, all you need to do is include the Comparable mixin, and define one method: <=>. The <=> method should return 0 if the two objects are "equal", 1 if the receiving object is greater than the other object, and -1 if the receiving object is less than the other object. Often, as here, the comparison will boil down to comparing numbers or strings, both of which already have a <=> operator defined. Thus, you rarely have to write an involved #<=> method.
