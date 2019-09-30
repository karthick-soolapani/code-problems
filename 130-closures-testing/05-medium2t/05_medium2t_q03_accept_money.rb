# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 3, Test Accept Money Method - Cash Register

# QUESTION
# We now have the foundation of our CashRegister test class set up. Let's start testing! We'll start with the CashRegister#accept_money method. Write a test for the #accept_money method.

$stdout.sync = true # To display output immediately on windows using git bash

require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(1000)
    @shoe = Transaction.new(100)
    @shoe.amount_paid = 550.95
    @polo = Transaction.new(200.5)
    @jeans = Transaction.new(475)
  end
  
  def test_accept_money
    previous_amount = @register.total_money
    @register.accept_money(@shoe)
    current_amount = @register.total_money

    assert_equal(previous_amount + 550.95, current_amount)
  end
end

# Discussion
# When you first consider this test, it may seem really simple to write. Yet, there is quite a bit of groundwork to lay here. First, we need to create some objects to test the #accept_money method. #accept_money is a method from class CashRegister, so we'll need an instance of that class. We also need an instance of class Transaction. The method #accept_money takes a Transaction object as an argument.

# Once we have our objects, we then set the amount_paid via the attr_accessor in the Transaction class. This is the value we'll be checking. If our method does work as intended, then when we process a transaction, the amount in register should increase exactly by the amount paid.

# We test this value by setting variables that represent the money in the register before and after a transaction takes place. Finally, we implement the approach/algorithm for this exercise with our assertion: assert_equal previous_amount + 20, current_amount. This assertion does indeed pass, and we have finished testing our accept money method.
