# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 1, Repeat Yourself

# QUESTION
# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

$stdout.sync = true # To display output immediately on windows using git bash

def check_interger(num)
  num = num.to_s

  if /^[+-]?\d*\.?0*$/.match(num) && /\d/.match(num)
    if num.to_i.positive?
      'positive'
    elsif num.to_i.negative?
      'negative'
    else
      'zero'
    end
  else
    'invalid'
  end
end

def repeat(string, number_of_times)
  return 'Enter a valid string' unless string.is_a?(String)
  return 'Positive number only' unless check_interger(number_of_times) == 'positive'

  number_of_times.times { puts string }
end

repeat('Hello', 3)
repeat('Hello', 0)
repeat(5, 4)
