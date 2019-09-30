# Coderbyte - Challenges
# Easy Challenges
# Question 2 - First factorial

# QUESTION
# Have the function FirstFactorial(num) take the num parameter being passed and
# return the factorial of it (e.g. if num = 4, return (4 * 3 * 2 * 1)). For the
# test cases, the range will be between 1 and 18 and the input will always be an integer.

$stdout.sync = true # To display output immediately on windows using git bash

def FirstFactorial(num)
  factorial = 1
  while num > 1
    factorial *= num
    num -= 1
  end
  factorial         
end
   
# keep this function call here    
puts FirstFactorial(STDIN.gets)  

# ALTERNATE SOLUTIONS

#1

def first_factorial(num)
  return 'Invalid number' if num < 0
  return 1 if num == 0

  (1..num).inject(:*)
end

p first_factorial(5)
