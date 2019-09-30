$stdout.sync = true # To display output immediately on windows using git bash

class Integer
  def to_roman
    roman_matrix = {'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400,
      'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10,
      'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1}

    num = self.abs

    roman_matrix.each_with_object('') do |(char, value), roman|
      roman << char * (num / value)
      num = num % value
    end
  end
end

# ALTERNATE SOLUTIONS

NUMERAL_PATTERNS =
  [[], [:one], [:one, :one], [:one, :one, :one], [:one, :five], [:five],
   [:five, :one], [:five, :one, :one], [:five, :one, :one, :one], [:one, :ten]]

NUMERAL_DENOMINATIONS = [ { one: 'I', five: 'V', ten: 'X' },
                          { one: 'X', five: 'L', ten: 'C' },
                          { one: 'C', five: 'D', ten: 'M' },
                          { one: 'M'} ]

class Integer
  def to_roman
    patterns = self.digits.map { |digit| NUMERAL_PATTERNS[digit] }
    patterns.map.with_index do |place_value, idx|
      place_value.map { |pattern| NUMERAL_DENOMINATIONS[idx][pattern] }
    end.reverse.join
  end
end
