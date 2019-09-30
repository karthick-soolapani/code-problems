# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 2, Equality Assertions

# QUESTION
# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestDowncase < Minitest::Test
  def setup
    @value = 'XyZ'
  end
  
  def test_value_downcase_returns_xyz
    assert_equal('xyz', @value.downcase)
  end
end

# Discussion

#assert_equal tests whether its first two arguments are equal using #==. Failure messages issued by #assert_equal assume that the first argument represents the expected value, while the second argument represents the actual value to be tested. It's important to maintain this convention so that failure messages make sense.
