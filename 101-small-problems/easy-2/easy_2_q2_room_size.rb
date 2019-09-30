# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 2, How big is the room?

# QUESTION
# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# EXAMPLES
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

$stdout.sync = true # To display output immediately on windows using git bash

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters:'
length = gets.chomp.to_f
puts '==> Enter the width of the room in meters:'
width = gets.chomp.to_f

area_sq_meters = length * width
area_sq_feet = area_sq_meters * SQMETERS_TO_SQFEET

area_sq_meters = area_sq_meters.round(2)
area_sq_feet = area_sq_feet.round(2)

puts "The area of the room is #{area_sq_meters} square meters (#{area_sq_feet} square feet)."
