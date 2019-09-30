# Coderbyte - Challenges
# Easy Challenges
# Question 5 - Simple Adding

# QUESTION
# Have the function SimpleAdding(num) add up all the numbers from 1 to num.
# For example: if the input is 4 then your program should return 10 because
# 1 + 2 + 3 + 4 = 10. For the test cases, the parameter num will be any number
# from 1 to 1000.

$stdout.sync = true # To display output immediately on windows using git bash

def SimpleAdding(num)
  (1..num).inject(:+)
end
   
puts SimpleAdding(8)


# ALTERNATE SOLUTIONS

#1
def SimpleAdding(num)
  # This is based on sum = n(n+1) / 2 proof
  return (num*(num+1))/2
end
