# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Debugging, Question 2, Animal Kingdom

# QUESTION
# The code below raises an exception. Examine the error message and alter the code so that it runs without error.

$stdout.sync = true # To display output immediately on windows using git bash

class Animal
  def initialize(diet, superpower)
    @diet = diet
    @superpower = superpower
  end

  def move
    puts "I'm moving!"
  end

  def superpower
    puts "I can #{@superpower}!"
  end
end

class Fish < Animal
  def move
    puts "I'm swimming!"
  end
end

class Bird < Animal
end

class FlightlessBird < Bird
  def initialize(diet, superpower)
    super
  end

  def move
    puts "I'm running!"
  end
end

class SongBird < Bird
  def initialize(diet, superpower, song)
    super(diet, superpower)
    @song = song
  end

  def move
    puts "I'm flying!"
  end
end

# Examples

p unicornfish = Fish.new(:herbivore, 'breathe underwater')
p penguin = FlightlessBird.new(:carnivore, 'drink sea water')
p robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')
