# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 3, Nil Assertions

# QUESTION
# Write a minitest assertion that will fail if value is not nil.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestValue < Minitest::Test
  def setup
    @value = nil
  end

  def test_value_is_nil
    assert_nil(@value)
  end
end

# Discussion

#assert_nil tests whether its first argument is nil.

assert_instance_of(NilClass, value)

assert_predicate(value, :nil?)
