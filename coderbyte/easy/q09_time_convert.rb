# Coderbyte - Challenges
# Easy Challenges
# Question 9 - Time Convert

# QUESTION
# Have the function TimeConvert(num) take the num parameter being passed and
# return the number of hours and minutes the parameter converts to (ie. if num = 63 then the output should be 1:3).
# Separate the number of hours and minutes with a colon.

$stdout.sync = true # To display output immediately on windows using git bash

def TimeConvert(num)
  hours = num / 60
  minutes = num % 60
  
  "#{hours}:#{minutes}"
end


# ALTERNATE SOLUTIONS

#1
#None
