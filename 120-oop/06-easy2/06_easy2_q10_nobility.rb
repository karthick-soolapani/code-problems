# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 10, Nobility

# QUESTION
# Now that we have a Walkable module, we are given a new challenge. Apparently some of our users are nobility, and the regular way of walking simply isn't good enough. Nobility need to strut.
# We need a new class Noble that shows the title and name when walk is called:

$stdout.sync = true # To display output immediately on windows using git bash

module Movable
  def walk
    "#{self} #{gait} forward"
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def to_s
    name
  end
end

class Person < Animal
  include Movable

  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s
    "#{title} " + super
  end

  private

  def gait
    "struts"
  end
end

class Cat < Animal
  include Movable

  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
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

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"
