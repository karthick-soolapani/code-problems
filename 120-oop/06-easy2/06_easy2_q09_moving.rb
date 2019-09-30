# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 9, Moving

# QUESTION
# You need to modify the code so that this works:

$stdout.sync = true # To display output immediately on windows using git bash

module Movable
  def walk
    "#{name} #{gait} forward"
  end
end

class Person
  include Movable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Movable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Movable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
p mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
p kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
p flash.walk
# => "Flash runs forward"

# DISCUSSION

# You can use the Walkable module as a mixin with any class that defines gait and name. You can also define a parent class and make the other classes inherit from that class.

# However, if you recall from the OOP book, modules are more appropriate in a has-a relationship. While it is sometimes tricky to choose one or the other, a great guideline is to decide if you want some additional functionality, or if you want to extend the abilities of the class. In this case, it is pretty clear that we need the functionality of walking; we don't need to extend the abilities of class Person(extending the abilities of a class coincides with an is-a relationship, not has-a).
