# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 7, Type Assertions

# QUESTION
# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. value may not be an instance of one of Numeric's superclasses.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestInstance < Minitest::Test
  def setup
    @value = Numeric.new
  end
  
  def test_value_is_an_instance_of_Numeric
    assert_instance_of(Numeric, @value)
  end
end

# Discussion

# #assert_instance_of uses Object#instance_of? to ensure that its second argument is an instance of the class named as its first argument.

assert_equal Numeric, value.class

assert_equal true, value.instance_of?(Numeric)
