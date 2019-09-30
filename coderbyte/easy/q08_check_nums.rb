# Coderbyte - Challenges
# Easy Challenges
# Question 8 - Check Nums

# QUESTION
# Have the function CheckNums(num1,num2) take both parameters being passed and
# return the string true if num2 is greater than num1, otherwise return the string
# false. If the parameter values are equal to each other then return the string -1.

$stdout.sync = true # To display output immediately on windows using git bash

def CheckNums(num1,num2)
  case num1 <=> num2
  when -1 then true
  when 1 then false
  when 0 then '-1'
  end
end


# ALTERNATE SOLUTIONS

#1
def CheckNums(num1,num2)
  (num2 === num1) ? '-1' : (num2 > num1) ? 'true' : 'false'
end
