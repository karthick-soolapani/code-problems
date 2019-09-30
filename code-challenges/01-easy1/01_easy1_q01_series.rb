$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# input - String (of digits 0-9), sub-string length
# output - Array (of numbers formed from consecutive sub-strings)
# rules -
# The sub-string returned in array should be integers
# When sub-string length greater than given string length raise ArgumentError

# ALGORITHM
# Define Series class
# Define constructor - 1 param: string
# Define slices method - 1 param: length
#   Iterate each char of string - until idx + length <= size
#   slice the sub-string based on idx and length
#   split each char into an array
#   convert each str char to integer and add sub_arr to a new array
#   return the new array

class Series
  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError, 'length is longer than string' if length > @string.size
    @string.chars.map(&:to_i).each_cons(length).to_a
  end
end
