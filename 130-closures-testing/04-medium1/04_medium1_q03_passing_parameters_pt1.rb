# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 3, Passing Parameters Part 1

# QUESTION
# Modify the method below so that the display/output of items is moved to a block, and its implementation is left up to the user of the gather method.

$stdout.sync = true # To display output immediately on windows using git bash

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) { |produce| puts produce.join('; ') }
gather(items) do |produce|
  puts "We've gathered some vegetables: #{produce[1]} and #{produce[2]}"
end

# Discussion

# To accomplish our task, we need to yield the items array to a block. Moving the implementation of our items formatting to a block gives the user more flexibility and choice for how they wish to use gather. By yielding items to a block, the user can join those items for presentation purposes or they can choose a completely different representation
