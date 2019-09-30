# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 6, Method to Proc

# QUESTION
# fill in the missing part of the following code so we can convert an array of integers to base 8.

$stdout.sync = true # To display output immediately on windows using git bash

def convert_to_base_8(n)
  n.to_s(8).to_i # replace these two method calls
end

# The correct type of argument must be used below
base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
p [8, 10, 12, 14, 16, 33].map(&base8_proc) == [10, 12, 14, 16, 20, 41]

# ALTERNATE SOLUTION - it automatically calls to_proc on the method object
[8,10,12,14,16,33].map(&method(:convert_to_base_8))
