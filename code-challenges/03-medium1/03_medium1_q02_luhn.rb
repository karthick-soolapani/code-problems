$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - Integer (positive only)
# OUTPUT - depending on the method invocation
# RULES -
#   addends -> every odd index number to be doubled and reduced by 9
#     i.e. n * 2 - 9 if above 4
#   checksum -> sum of the above digits
#   valid -> if checksum % 10 == 0 then valid
#   find last digit -> 10 - checksum so that it will be divisible by 10

class Luhn
  def initialize(number)
    @digits = number.digits
  end

  def addends
    @digits.map.with_index do |n, idx|
      next n if idx.even?
      n >= 5 ? n * 2 - 9 : n * 2
    end.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    checksum_digit = (new(number * 10).checksum % -10).abs
    number * 10 + checksum_digit
  end
end

# ALTERNATE SOLUTIONS

class Luhn
  def self.create(num)
    "#{num}#{(0..9).find { |n| new("#{num}#{n}".to_i).valid? }}".to_i
  end

  def initialize(num)
    @digits = num.digits
  end

  def addends
    @digits.map.with_index { |n, i| i.even? ? n : ((n * 2) % 9.5).ceil }.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    (checksum % 10).zero?
  end
end
