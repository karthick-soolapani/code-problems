# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 4, Divisors

# QUESTION
# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.

$stdout.sync = true # To display output immediately on windows using git bash

def divisors(num)
  (1..num).select { |n| num % n == 0 }
end

def divisors(max)
  result = []

  1.upto(max) do |n|
    break if result.include?(n)
    if max % n == 0
      result << n
      result << (max / n)
    end
  end

  result.uniq.sort 
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
