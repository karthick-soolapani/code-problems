# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 2, Question 6, Comparing Wallets

# QUESTION
# Consider the following broken code:

$stdout.sync = true # To display output immediately on windows using git bash

class Wallet
  include Comparable
  attr_reader :amount
  protected :amount

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end
