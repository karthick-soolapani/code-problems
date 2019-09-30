# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 4, When will I Retire?

# QUESTION
# Build a program that displays when the user will retire and how many years she has to work till retirement.

$stdout.sync = true # To display output immediately on windows using git bash

age = ''
loop do
  print 'What is your age? '
  age = gets.chomp

  break if age.to_i.to_s == age && age.to_i > 0
  puts 'Invalid age'
end

retire_age = ''
loop do
  print 'At what age would you like to retire? '
  retire_age = gets.chomp

  break if retire_age.to_i.to_s == retire_age && retire_age.to_i > 0
  puts 'Invalid retirement age'
end

age = age.to_i
retire_age = retire_age.to_i

if retire_age <= age
  puts 'Retirement age should be higher than your current age'
else
  current_year = Time.new.year
  retire_years_left = retire_age - age
  retire_year = current_year + retire_years_left

  puts "It's #{current_year}. You will retire in #{retire_year}."
  puts "You have only #{retire_years_left} years of work to go!"
end
