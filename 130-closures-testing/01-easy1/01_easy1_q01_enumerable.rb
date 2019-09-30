# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 1, Enumerable Class Creation

# QUESTION
# A binary tree is just one of many forms of collections, such as Arrays, Hashes, Stacks, Sets, and more. All of these collection classes include the Enumerable module, which means they have access to an each method, as well as many other iterative methods such as map, reduce, select, and more.
# For this exercise, modify the Tree class to support the methods of Enumerable. You do not have to actually implement any methods -- just show the methods that you must provide.

$stdout.sync = true # To display output immediately on windows using git bash

class Tree
  include Enumerable

  def each
    # implementation for Tree objects
  end

  def <=>
    # code to determine what values are used for comparison
  end
end

# DISCUSSION

# After including the Enumerable module, the Tree#each and Tree#<=> methods will provide the underlying functionality necessary for the Enumerable instance methods to work on Tree objects.
