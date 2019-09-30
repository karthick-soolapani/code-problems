$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSATNDING
# INPUT - Integer
#   only positive
#   raise RuntimeError when < 1
# OUTPUT - String (deficient, perfect, abundant)
# rules -
#   Find factors of a num excluding itself
#   Perfect: Sum of factors = number
#   Abundant: Sum of factors > number
#   Deficient: Sum of factors < number

# ALGORITHM
# Define class PerfectNumber
# Define class method classify, 1 param: num
#   raise RuntimeError if num < 1
#   Iterate (1...num) and filter(select)
#     if it is a factor of the num
#   sum the factors
#   return correct string based on sum <=> num

class PerfectNumber
  def self.classify(num)
    raise 'Only positive integers' if num < 1
    sum_of_factors = (1...num).select { |n| num % n == 0 }.sum
    %w[perfect abundant deficient][sum_of_factors <=> num]
  end
end
