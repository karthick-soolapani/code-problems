# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 4, Test Change Method - Cash Register

# QUESTION
# Write a test for the method, CashRegister#change.

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

  def test_change
    change = @register.change(@shoe)

    assert_equal(10, change)
  end
end

# Discussion
# For this test we set up our initial objects, one CashRegister object and one Transaction object. We also make sure to set the amount paid. Recall, that in the last exercise we set it up so that the amount paid and the transaction cost were the same.
# In this case, we instead pay 40 dollars for a 30 dollar item. Hopefully we'll be getting some money back! We test the actual functionality of our CashRegister#change method with the assertion: assert_equal 10, register.change(transaction).
# We're expecting our change method to give back 10. After running the test it seems to do just that.
