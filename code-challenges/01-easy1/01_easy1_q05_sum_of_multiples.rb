$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSATNDING
# input - Integers (to be multiples), Integer (limit)
# output - Integer (sum of multiples)
# rules -
#   Exclude the limit from the sum
#   Default multiple [3, 5]
#   Calculate sum both on class and instance i.e. class and instance methods req

# ALGORITHM
# Define class SumOfMultiples
# Define constant DEFAULT_MULTIPLES = [3, 5]
# Define class method to, 1 param: limit
# Define constructor, 1 param: multiples
#   If multiples is empty default to DEFAULT_MULTIPLES
# Define to method, 1 param: limit
#   (1..limit-1).select |num|
#     num divisble by any multiple
#   sum the filtered array

class SumOfMultiples
  DEFAULT_MULTIPLES = [3, 5]

  def initialize(*multiples)
    @multiples = multiples.empty? ? DEFAULT_MULTIPLES : multiples
  end
  
  def to(limit)
    self.class.to(limit, @multiples)
  end
  
  def self.to(limit, multiples = DEFAULT_MULTIPLES)
    (1...limit).select do |num|
      multiples.any? { |mult| num % mult == 0 }
    end.sum
  end
end

# ALTERNATE SOLUTIONS

class SumOfMultiples
  DEFAULT_MULTIPLES = [3, 5]

  def initialize(*multiples)
    @multiples = multiples.empty? ? DEFAULT_MULTIPLES : multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end

  def self.to(limit, multiples = DEFAULT_MULTIPLES)
    multiples.map { |mult| (mult...limit).step(mult).to_a }.flatten.uniq.sum
  end
end
