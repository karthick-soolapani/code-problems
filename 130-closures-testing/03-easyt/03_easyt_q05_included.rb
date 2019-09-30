# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 5, Included Object Assertions

# QUESTION
# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestValue < Minitest::Test
  def setup
    @list = %w[abc xyz]
    @value = 'xyz'
  end
  
  def test_list_includes_value
    assert_includes(@list, @value)
  end
end

# Discussion

# #assert_includes tests whether its first argument contains the second argument.

assert_send([list, :include?, 'xyz'])
