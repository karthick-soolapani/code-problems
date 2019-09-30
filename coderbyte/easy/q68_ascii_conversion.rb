# Using the Ruby language, have the function ASCIIConversion(str) take the str parameter being passed and return a new string where every character, aside from the space character, is replaced with its corresponding decimal character code. For example: if str is "dog" then your program should return the string 100111103 because d = 100, o = 111, g = 103. 

def ASCIIConversion(str)
  str.split.map do |word|
    word.chars.map do |chr|
      chr.ord
    end.join
  end.join(' ')
end

p ASCIIConversion("dog") == "100111103"
p ASCIIConversion("hello world") == "104101108108111 119111114108100"
p ASCIIConversion("abc **") == "979899 4242"
