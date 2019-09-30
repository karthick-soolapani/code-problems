# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 4, Leap Years (Part 2)

# QUESTION
# A continuation of the previous exercise.
# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.
# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

$stdout.sync = true # To display output immediately on windows using git bash

def leap_year?(year)
  return 'Invalid year' if year.to_i <= 0
  year = year.to_i

  year < 1752 ? year % 4 == 0 : (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# ALTERNATE SOLUTION

def leap_year_v2?(int)
  int % 4 == 0 && (int < 1752 || int % 400 == 0 || int % 100 != 0)
end
