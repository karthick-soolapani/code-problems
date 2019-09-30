# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 4, Empty Object Assertions

# QUESTION
# Write a minitest assertion that will fail if the Array list is not empty.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestArray < Minitest::Test
  def setup
    @list = []
  end
  
  def test_array_list_is_empty
    assert_empty(@list)
  end
end

# Discussion

# # assert_empty tests whether its first argument responds to the method #empty? with a true value.

assert_equal(0, list.size)

assert_send([list, :empty?])

assert_predicate(list, :empty?)
