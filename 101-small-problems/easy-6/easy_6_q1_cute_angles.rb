# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 6 Question 1, Cute angles

# QUESTION
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

$stdout.sync = true # To display output immediately on windows using git bash

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle)
  total_degree = angle.truncate
  minutes_and_seconds = ((angle - total_degree) * MINUTES_PER_DEGREE).round(5).abs

  degree = total_degree.remainder(360)
  minutes = minutes_and_seconds.truncate
  seconds = ((minutes_and_seconds - minutes) * SECONDS_PER_MINUTE).round
  
  format("#{degree}#{DEGREE}%02d'%02d\"", minutes, seconds)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(-76.733343)
p dms(-450.045)
