# Coderbyte - Challenges
# Easy Challenges
# Question 6 - Letter Capitalize

# QUESTION
# Have the function LetterCapitalize(str) take the str parameter being passed
# and capitalize the first letter of each word. Words will be separated by only one space.

$stdout.sync = true # To display output immediately on windows using git bash

def LetterCapitalize(str)
  str = str.split
  str.each do |word|
    word.capitalize!
  end
  str.join(' ')
end


# ALTERNATE SOLUTIONS

#1
def LetterCapitalize(str)

  # use regex to match words and then capitalize each one
  return str.gsub(/\w+/) { |w| w.capitalize }
end
