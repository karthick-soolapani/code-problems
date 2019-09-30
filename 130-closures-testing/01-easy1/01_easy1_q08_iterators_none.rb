# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 8, Iterators: True for None?

# QUESTION
# Implement Enumerable#none?

$stdout.sync = true # To display output immediately on windows using git bash

def none?(arr)
  arr.each { |element| return false if yield(element) }
  true
end

def none?(collection, &block)
  !any?(collection, &block)
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true

# DISCUSSION

# However, since #none? is effectively the negation of #any?, you would think that we can write:
# def none?(collection)
#   !any?(collection)
# end

# However, this fails with a:
# no block given (yield) (LocalJumpError)

# error message. The reason for this is that blocks aren't passed down the calling chain by default. Instead, you need to explicitly pass the block to #any?; to do that, #none? must require a block argument with an & as shown in the alternate solution. We then pass &block to any?, where it is treated as if the call to any? included the block.

# recursive:
def none?(arr, &block)
  return true if arr.empty?
  block.call(arr.first) ? false : none?(arr.drop(1), &block)
end

# using each:
def none?(arr)
  !!arr.each { |elem| yield(elem) && (return false) }
end

# using all?:
def none?(arr)
  all?(arr) { |elem| !yield(elem) }
end
