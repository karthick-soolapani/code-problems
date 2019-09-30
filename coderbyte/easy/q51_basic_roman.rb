# Using the Ruby language, have the function BasicRomanNumerals(str) read str which
# will be a string of Roman numerals. The numerals being used are: I for 1, V for 5,
# X for 10, L for 50, C for 100, D for 500 and M for 1000. In Roman numerals, to create
# a number like 11 you simply add a 1 after the 10, so you get XI. But to create a number
# like 19, you use the subtraction notation which is to add an I before an X or V (or add
# an X before an L or C). So 19 in Roman numerals is XIX.
# The goal of your program is to return the decimal equivalent of the Roman numeral given.
# For example: if str is "XXIV" your program should return 24

def BasicRomanNumerals(str)
  romans = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1 }
  
  sum = 0
  str.chars.each_with_index do |char, idx|
    next sum += romans[char] if idx >= str.size - 1
    if romans[str[idx + 1]] > romans[char]
      sum -= romans[char]
    else
      sum += romans[char]
    end
  end
  sum
end

p BasicRomanNumerals('XXIV') == 24
p BasicRomanNumerals("IV") == 4
p BasicRomanNumerals("XLVI") == 46
