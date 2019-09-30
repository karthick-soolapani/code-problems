# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 4, Passing Parameters Part 2

# QUESTION
# write a method that takes an array as an argument. The method should yield the contents of the array to a block, which should assign your block variables in such a way that it ignores the first two elements, and groups all remaining elements as a raptors array.

$stdout.sync = true # To display output immediately on windows using git bash

birds = ['crow', 'finch', 'hawk', 'eagle']

def types(birds)
  yield birds
end

types(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')}."
end

# Discussion

# For our solution, we start with an array named birds. It contains four birds, where two of them are raptors. Above we use our block variables to organize it further. When we yield birds to the block, Ruby assigns the individual elements of birds to the different block variables. It assigns the first two birds, "crow" and "finch," to _; the underscore tells Ruby that we aren't interested in those values. The splat operator on the name block variable tells Ruby to treat it as an Array and assign all remaining arguments to it. Here, we group the last two elements from birds into the array, raptors.
