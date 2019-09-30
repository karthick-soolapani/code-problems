# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 3 Question 6, Exclusive Or

# QUESTION
# The || operator returns a truthy value if either or both of its operands are
#  truthy, a falsey value if both operands are falsey. The && operator returns
#  a truthy value if both of its operands are truthy, and a falsey value if either
#  operand is falsey. This works great until you need only one of two conditions
# to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

$stdout.sync = true # To display output immediately on windows using git bash

def xor?(value1, value2)
  !value1 != !value2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# ALTERNATIVE SOLUTIONS
=begin

(value1 && !value2) || (value2 && !value1)

[!first, !second].count(true) == 1

(value1 && value2) != (value1 || value2)

=end
