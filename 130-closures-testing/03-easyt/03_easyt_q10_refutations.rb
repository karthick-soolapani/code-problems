# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 10, Refutations

# QUESTION
# Write a unit test that will fail if 'xyz' is one of the elements in the Array list:

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestValue < Minitest::Test
  def setup
    @list = %w[abc hij]
    @value = 'xyz'
  end
  
  def test_not_include_value_in_list
    refute_includes(@list, @value)
  end
end
