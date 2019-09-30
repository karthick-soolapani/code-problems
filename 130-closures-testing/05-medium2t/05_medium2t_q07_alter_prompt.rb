# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 7, Alter Prompt For Payment Method - Transaction

# QUESTION
# Transaction#prompt_for_payment has a call to Kernel#puts and that output is showing up when we run our test. Your task for this exercise is to make it so that we have "clean" output when running this test. We want to see something like this:

$stdout.sync = true # To display output immediately on windows using git bash

def test_prompt_for_payment
  io_in, $stdin = $stdin, StringIO.new("50\n", mode='r')
  io_out, $stdout = $stdout, StringIO.new(mode='w')
  @transaction.prompt_for_payment
  assert_equal(50, @transaction.amount_paid)
ensure
  $stdin, $stdout = io_in, io_out
end

# ALTERNATE SOLUTIONS

#1
def silenced
  $stdout = StringIO.new
  yield
ensure
  $stdout = STDOUT
end

def test_prompt_for_payment
  @transaction.amount_paid = 0
  io = StringIO.new('30')
  silenced { @transaction.prompt_for_payment(input: io) }
  assert_equal 30, @transaction.amount_paid
end

#2
def test_prompt_for_payment
  test_amount = StringIO.new("10\n")
  capture_io { @transaction.prompt_for_payment(input: test_amount) }
  assert_equal(10, @transaction.amount_paid)
end
