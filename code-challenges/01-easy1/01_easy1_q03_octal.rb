$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# input - String
#   invalid: return 0 (accept digits 0-7 only)
# output - Integer (decimal number)

# ALGORITHM
# Define Octal class
# Define constructor, 1 param: number string
# Define to_decimal
#   num = 0
#   Iterate each char of str, 2 params: char, idx
#     num += char.to_i * (8 ** idx)
# return number

class Octal
  def initialize(octal)
    @octal = octal.to_s.match?(/[^0-7]/) ? 0 : octal.to_i
  end
  
  def to_decimal
    @octal.digits.map.with_index { |digit, idx| digit * (8 ** idx) }.sum
  end
end

# ALTERNATE SOLUTIONS

#1
class Octal
  def initialize(num)
    @num = num.match?(/[^0-7]/) ? '0' : num
  end

  def to_decimal
    @num.chars.reduce(0) { |sum, n| n.to_i + sum * 8 }
  end
end
