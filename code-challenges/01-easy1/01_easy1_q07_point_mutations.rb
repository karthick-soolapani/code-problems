$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - 2 Strings
#   can be empty, different lengths
# OUTPUT - Integer (no. of mismatched characters)
# RULES -
#   case insensitive - assume upcase only
#   With 2 different length strings use the shortest for checking

# ALGORITHM
# Define class DNA
# Define constructor, 1 param: str1
# Define method hamming_distance, 1 param: str2
#   Find shortest string
#   Convert strings to arrays
#   short.zip(long)
#   Iterate(map), 1 param: arr
#     arr[0] == arr[1] ? 0 : 1
#   return sum of array

class DNA
  def initialize(strand1)
    @strand1 = strand1
  end
  
  def hamming_distance(strand2)
    short, long = [@strand1.chars, strand2.chars].sort_by(&:size)
    short.zip(long).map { |arr| arr[0] == arr[1] ? 0 : 1 }.sum
  end
end

# ALTERNATE SOLUTIONS

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand_2)
    strand_1 = @strand[0, strand_2.length]
    strand_1.chars.zip(strand_2.chars).count { |pair| pair.first != pair.last }
  end
end