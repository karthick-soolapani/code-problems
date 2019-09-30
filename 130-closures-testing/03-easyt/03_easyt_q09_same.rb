# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy testing, Question 9, Same Object Assertions

# QUESTION
# Write a unit test that will fail if list and the return value of list.process are different objects.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

class TestSame < Minitest::Test
  def setup
    @list = [1, 2, 3]
    @list.define_singleton_method(:process) { self }
  end
  
  def test_list_process_returns_same_object
    assert_same(@list, @list.process)
  end
end

# Discussion
# #assert_same tests whether its first and second arguments are the same object, as determined by #equal?.

def test_list_process
  list = [1, 2, 3]
  list.define_singleton_method(:process) { self }
  assert_same(list, list.process)
  assert(list.equal?(list.process))
  assert(list.object_id == list.process.object_id)
end
