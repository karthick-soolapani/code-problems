# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 10, Test word_count method - Text

# QUESTION
# Recall that in the last exercise we only had to test one method of our Text class. One of the useful facets of the setup and teardown methods is that they are automatically run before and after each test respectively. To show this we'll be adding one more method to our Text class, word_count.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample.txt', 'r')
    @text = Text.new(@file.read)
  end

  def teardown
    @file.close
  end

  def test_word_count
    assert_equal(72, @text.word_count)
  end
end
