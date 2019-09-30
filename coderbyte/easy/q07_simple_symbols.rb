# Coderbyte - Challenges
# Easy Challenges
# Question 7 - Simple Symbols

# QUESTION
# Have the function SimpleSymbols(str) take the str parameter being passed and
# determine if it is an acceptable sequence by either returning the string true or false.
# The str parameter will be composed of + and = symbols with several letters between them
# (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol.
# So the string to the left would be false. The string will not be empty and will have at least one letter.

$stdout.sync = true # To display output immediately on windows using git bash

def SimpleSymbols(str)
  str = '=' + str + '='
  idx = 0
  while idx < str.length
    curr_char = str[idx].downcase

    if curr_char.ord.between?(97, 122)
      return false if str[idx - 1] != '+' || str[idx + 1] != '+'
    end
    
    idx += 1
  end
  true
end


# ALTERNATE SOLUTIONS

#1
def SimpleSymbols(str)
  str_filtered = str.gsub(/\+[a-zA-Z]\+/, '')
  !str_filtered.match?(/[a-zA-Z]/)
end

#2
def SimpleSymbols(str)

  # pad the strings so that if a character exists at the beginning
  # of the string for example, we don't get on out-of-bounds error by
  # trying to get the character before it
  str = '=' + str + '='
  
  # loop through the entire string
  (0..str.length - 1).each do |i|
    # check to see if current character is an alphabetic character 
    if str[i] =~ /[A-Za-z]/
      # check to see if a + symbol is to the left and right
      # if not, then we know this string is not valid
      return 'false' if str[i - 1] != '+' || str[i + 1] != '+'
    end
  end
  'true'
end
