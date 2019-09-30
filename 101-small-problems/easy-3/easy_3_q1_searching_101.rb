# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 1, Searching 101

# QUESTION
# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.

$stdout.sync = true # To display output immediately on windows using git bash

num_arr = []
suffixes = %w(1st 2nd 3rd 4th 5th last)


suffixes.each do |suffix|
  num = nil
  loop do
    puts "==> Enter your #{suffix} number:"
    num = gets.chomp

    break if num.to_i.to_s == num
    puts "Invalid number"
  end
  num_arr << num.to_i
end

last = num_arr.pop
puts "The number #{last} #{num_arr.include?(last) ? 'appears' : 'does not appear'} in #{num_arr}."
