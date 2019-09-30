# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 1, From-To-Step Sequence Generator

# QUESTION
# The Range#step method lets you iterate over a range of values where each value in the iteration is the previous value plus a "step" value. It returns the original range.
# Write a method that does the same thing as Range#step, but does not operate on a range. Instead, your method should take 3 arguments: the starting value, the ending value, and the step value to be applied to each iteration. Your method should also take a block to which it will yield (or call) successive iteration values.

$stdout.sync = true # To display output immediately on windows using git bash

def step(start, stop, step)
  arr = []
  counter = start

  while counter <= stop
    arr << counter
    yield(counter)
    counter += step
  end

  arr
end

def step(start, stop, step)
  (start..stop).each { |num| yield(num) if (num - start) % step == 0 }
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
