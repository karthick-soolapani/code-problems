# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 8, Kind Assertions

# QUESTION
# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestInstance < Minitest::Test
  def setup
    @value = 5
  end
  
  def test_value_is_kind_of_Numeric
    assert_kind_of(Numeric, @value)
  end
end

# Discussion
# #assert_kind_of uses Object#kind_of? to check if the class of its second argument is an instance of the named class or one of the named class's subclasses.
