# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 3, Students

# QUESTION
# Below we have 3 classes: Student, Graduate, and Undergraduate. Some details for these classes are missing. Make changes to the classes below so that the following requirements are fulfilled:

# Graduate students have the option to use on-campus parking, while Undergraduate students do not.
# Graduate and Undergraduate students have a name and year associated with them.

$stdout.sync = true # To display output immediately on windows using git bash

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end

# ALTERNATE SOLUTIONS

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end

  def parking 
    'off campus'
  end
end

class Graduate < Student
  def parking(lot)
    "#{super()} or #{lot}"
  end
end

class Undergraduate < Student
end

jason = Graduate.new('Jason', '3rd Year Graduate')
p jason.parking('lot b')
michelle = Undergraduate.new('Michelle', 'Junior Undergraduate')
p michelle.parking

# "off campus or lot b"
# "off campus"
