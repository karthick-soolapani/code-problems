# Coderbyte - Challenges
# Easy Challenges
# Question 10 - Alphabet Soup

# QUESTION
# Have the function AlphabetSoup(str) take the str string parameter being passed
# and return the string with the letters in alphabetical order (ie. hello becomes ehllo).
# Assume numbers and punctuation symbols will not be included in the string.

$stdout.sync = true # To display output immediately on windows using git bash

def AlphabetSoup(str)
  str.chars.sort.join
end


# ALTERNATE SOLUTIONS

#1
#None
