# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 7, Unlucky Days

# QUESTION
# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

$stdout.sync = true # To display output immediately on windows using git bash

require 'date'

def friday_13th(year)
  (1..12).select { |month| Time.new(year, month, 13).friday? }.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# FURTHER EXPLORATION
def five_fridays(year)
  friday_counts =  (1..12).zip(Array.new(12, 0)).to_h
  (Date.new(year, 1, 1)..Date.new(year, 12, 31)).each do |date|
    friday_counts[date.month] += 1 if date.friday?
  end
  friday_counts.values.count(5)
end

p five_fridays(2019) == 4

#1 - WITHOUT USING DATE CLASS
SECONDS_PER_DAY = 24 * 60 * 60

def five_fridays(year)
  friday_counts =  (1..12).zip(Array.new(12, 0)).to_h
  days = ((Time.new(year + 1) - Time.new(year)) / SECONDS_PER_DAY).to_i
  
  days.times do |idx|
    current_date = Time.new(year) + idx * SECONDS_PER_DAY
    friday_counts[current_date.month] += 1 if current_date.friday?
  end
  friday_counts.values.count(5)
end
