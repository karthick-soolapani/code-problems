# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 3, After Midnight (Part 2)

# QUESTION
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
# You may not use ruby's Date and Time methods.

$stdout.sync = true # To display output immediately on windows using git bash

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  offset = time[0..1].to_i * MINUTES_PER_HOUR + time[3..4].to_i
  offset > 1439 ? 0 : offset
end

def before_midnight(time)
  minutes = time[0..1].to_i * MINUTES_PER_HOUR + time[3..4].to_i
  offset = MINUTES_PER_DAY - minutes
  offset > 1439 ? 0 : offset 
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

def after_midnight_v2(time)
  hours, minutes = time.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight_v2(time)
  (MINUTES_PER_DAY - after_midnight_v2(time)) % MINUTES_PER_DAY
end

puts
p after_midnight_v2('00:00') == 0
p before_midnight_v2('00:00') == 0
p after_midnight_v2('12:34') == 754
p before_midnight_v2('12:34') == 686
p after_midnight_v2('24:00') == 0
p before_midnight_v2('24:00') == 0
