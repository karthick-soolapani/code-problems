$stdout.sync = true # To display output immediately on windows using git bash

class Trinary
  def initialize(octal)
    @octal = octal.to_s.match?(/[^0-2]/) ? 0 : octal.to_i
  end
  
  def to_decimal
    @octal.digits.map.with_index { |digit, idx| digit * (3 ** idx) }.sum
  end
end

# ALTERNATE SOLUTIONS

class Trinary
  def initialize(num)
    @num = num.match?(/[^012]/) ? '0' : num
  end

  def to_decimal
    @num.chars.reduce(0) { |sum, n| n.to_i + sum * 3 }
  end
end

class Hex
  HEX_TO_DECIMAL = [*'0'..'9', *'A'..'F'].freeze

  def initialize(num)
    @num = num.match?(/[^0-9a-f]/i) ? '0' : num.upcase
  end

  def to_decimal
    @num.chars.reduce(0) { |sum, n| HEX_TO_DECIMAL.index(n) + sum * 16 }
  end
end
