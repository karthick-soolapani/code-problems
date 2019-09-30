# Coderbyte - Challenges
# Easy Challenges
# Question 1 - First Reverse

# QUESTION
# Have the function FirstReverse(str) take the str parameter being passed and
# return the string in reversed order. For example: if the input string is
# "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH. 

$stdout.sync = true # To display output immediately on windows using git bash

def FirstReverse(str)
  result = ''
  idx = str.length - 1
  while idx >= 0
    result << str[idx]
    idx -= 1
  end
  str = result
  return str 
         
end
   
# keep this function call here    
puts FirstReverse(STDIN.gets)
