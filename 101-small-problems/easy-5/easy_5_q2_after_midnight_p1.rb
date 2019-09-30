# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 2, After Midnight (Part 1)

# QUESTION
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
# You may not use ruby's Date and Time classes.

$stdout.sync = true # To display output immediately on windows using git bash

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(total_minutes)
  offset = total_minutes.remainder(1440)
  offset = 1440 + offset if offset.negative?

  hours = offset / 60
  minutes = offset % 60

  format('%<hours>02d:%<minutes>02d', { hours: hours, minutes: minutes}) 
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


# ALTERNATIVE SOLUTION

def time_of_day(total_minutes)
  offset = total_minutes % MINUTES_PER_DAY
  hours, minutes = offset.divmod(MINUTES_PER_HOUR)

  format('%<hours>02d:%<minutes>02d', { hours: hours, minutes: minutes}) 
end

# FURTHER EXPLORATION
def time_of_day_v2(total_minutes)
  focal_time = Time.new(2018, 7, 8, 0, 0 , 0)
  final_time = focal_time + (total_minutes * SECONDS_PER_MINUTE)
  
  final_time.strftime("%A %H:%M")
end

puts
p time_of_day_v2(0)
p time_of_day_v2(-3)
p time_of_day_v2(35)
p time_of_day_v2(-1437)
p time_of_day_v2(3000)
p time_of_day_v2(800)
p time_of_day_v2(-4231)
