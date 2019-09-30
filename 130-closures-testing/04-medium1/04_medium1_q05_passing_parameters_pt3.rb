# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 5, Passing Parameters Part 3

# QUESTION
# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

$stdout.sync = true # To display output immediately on windows using git bash

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*assorted, wheat|
  puts assorted.join(', ')
  puts wheat
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |apples, *assorted, wheat|
  puts apples
  puts assorted.join(', ')
  puts wheat
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |apples, *assorted|
  puts apples
  puts assorted.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!
