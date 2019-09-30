# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 2, Optional Blocks

# QUESTION
# Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply return the String 'Does not compute.'.

$stdout.sync = true # To display output immediately on windows using git bash

def compute(value = nil)
  block_given? ? yield(value) : 'Does not compute.'
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

p compute(10) { |n| n * 2 } == 20
p compute([]) { |arr| arr << 1 } == [1]
p compute(1) == 'Does not compute.'

# Discussion

# The Kernel#block_given? method can be used to determine if a block has been passed to a method, even if there is no mention of a block in the method arguments. We use it here to detect when we should return 'Does not compute.', and when we should return the value yielded by the block.
