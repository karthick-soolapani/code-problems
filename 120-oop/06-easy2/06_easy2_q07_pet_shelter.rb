# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 7, Pet Shelter

# QUESTION
# Write the classes and methods that will be necessary to make this code run, and print the following output:

$stdout.sync = true # To display output immediately on windows using git bash

class Pet
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{@type} named #{@name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end
end

class Shelter
  def initialize
    @unadopted_pets = []
    @adoptions = {}
  end

  def add_pets(*pets)
    @unadopted_pets += pets.uniq
  end

  def adopt(owner, pet)
    @adoptions[owner] = owner.pets
    @adoptions[owner] << @unadopted_pets.delete(pet)
  end

  def print_adoptions
    @adoptions.each do |owner, pets|
      puts "#{owner.name} has adopted the following pets:"
      puts pets
      puts nil
    end
  end

  def print_unadopted_pets
    puts "The Animal Shelter has the following unadopted pets:"
    puts @unadopted_pets
    puts nil
  end

  def num_of_unadopted_pets
    @unadopted_pets.size
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.add_pets(butterscotch, pudding, darwin, kennedy, sweetie, molly,
  chester, asta, laddie, fluffy, kat, ben, chatterbox, bluebell)

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
shelter.print_unadopted_pets
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.num_of_unadopted_pets} unadopted pets."

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Kennedy
# a parakeet named Sweetie Pie
# a dog named Molly
# a fish named Chester

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluffy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The Animal shelter has 7 unadopted pets.
