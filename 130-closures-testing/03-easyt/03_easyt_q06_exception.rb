# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 6, Exception Assertions

# QUESTION
# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class NoExperienceError < StandardError; end

class Employee
  def initialize(experience)
    @experience = experience
    @hired = false
  end

  def hire
    raise NoExperienceError if @experience < 10
    @hired = true
  end
end

class TestHire < Minitest::Test
  def setup
    @employee = Employee.new(5)
  end
  
  def test_raise_error_if_exp_not_met
    assert_raises(NoExperienceError) { @employee.hire }
  end
end

# Discussion

# #assert_raises checks if the given block raises an exception of the named type. If it does not, the assertion fails.

NoExperienceError = Class.new(StandardError)

def test_no_experience_error
  employee = 'employee'
  employee.define_singleton_method(:hire) { raise NoExperienceError }
  assert_raises(NoExperienceError) { employee.hire }
end
