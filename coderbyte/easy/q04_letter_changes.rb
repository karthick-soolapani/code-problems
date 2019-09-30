# Coderbyte - Challenges
# Easy Challenges
# Question 4 - Letter Changes

# QUESTION
# Have the function LetterChanges(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the letter following it in the alphabet (ie. c becomes d, z becomes a).
# Then capitalize every vowel in this new string (a, e, i, o, u) and finally
# return this modified string.

$stdout.sync = true # To display output immediately on windows using git bash

def LetterChanges(str, offset = 1)
  str.chars.map do |char|
    if char.ord.between?(97, 122)
      delta = (char.ord - 'a'.ord + offset) % 26
      char = ('a'.ord + delta).chr
    elsif char.ord.between?(65, 90)
      delta = (char.ord - 'A'.ord + offset) % 26
      char = ('A'.ord + delta).chr
    else
      char
    end
  end.join.tr('aeiou', 'AEIOU')
end
   
puts LetterChanges("this long cake@&") == "UIjt mpOh dblf@&"


# ALTERNATE SOLUTIONS

#1
def LetterChanges(str)

  # we will replace every letter in the string with the letter following it
  # by first getting the number representation of the letter, adding 1 to it, 
  # then converting this new number to a letter using the chr function
  # we also check to see if the character is z and if so we simply convert the z to an a
  converted = str.gsub(/[a-zA-Z]/) do |c|  
      if c == 'z' or c == 'Z'
        'a'   
      else
        (c.ord + 1).chr
      end
  end
  
  # we have now successfully converted each letter to the letter following it
  # in the alphabet, and all we need to do now is capitalize the vowels
  return converted.tr!('aeiou', 'AEIOU')
         
end
