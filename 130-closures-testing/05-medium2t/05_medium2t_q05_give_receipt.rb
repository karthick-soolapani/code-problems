# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 5, Test Give Receipt Method - Cash Register

# QUESTION
# Write a test for method CashRegister#give_receipt that ensures it displays a valid receipt.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(1000)
    @shoe = Transaction.new(490)
    @shoe.amount_paid = 500
    @polo = Transaction.new(200)
    @jeans = Transaction.new(475)
  end

  def test_give_receipt
    assert_output("You've paid $490.\n") { @register.give_receipt(@shoe) }
  end
end

# Discussion
# For this test, we'll be testing that our method outputs a certain message. To test this, we need to use the assertion, assert_output. Outputting a message is also considered a side effect, so it is something we would want to test. This is especially true since our message should reflect a state of our current transaction. assert_output uses a slightly different syntax than something like assert and assert_equal. We pass in code that will produce the "actual" output via a block.
# Then, internally assert_ouput compares that output to the expected value passed in as an argument. In this case that expected value is: "You've paid $#{item_cost}.\n"
# Notice that we include a newline character at the end there. Any little nuances related to the implementation of our method have to be taken into account. puts appends a newline to the message that is output. We must include that newline character in our expected value as well when making an assertion with assert_output.
