# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 2 testing, Question 6, Test Prompt For Payment Method- Transaction

# QUESTION
# Write a test that verifies that Transaction#prompt_for_payment sets the amount_paid correctly. We've changed the transaction class a bit to make testing this a bit easier. The Transaction#prompt_for_payment now reads as:

$stdout.sync = true # To display output immediately on windows using git bash

def test_prompt_for_payment
  jeans = Transaction.new(299)
  # Kernel#gets automatically splits inputs by "\n"
  $stdin = StringIO.new("200\n300")
  $stdout = StringIO.new

  jeans.prompt_for_payment

  assert_match(/That is not the correct amount/, $stdout.string)
  assert_match(/Please make sure to pay the full cost./, $stdout.string)
ensure
  $stdin = STDIN
  $stdout = STDOUT
end

# ALTERNATE SOLUTIONS

#1
class Transaction
  def prompt_for_payment(input: $stdin) # We've set a default parameter for stdin
    loop do
      puts "You owe $#{item_cost}.\nHow much are you paying?"
      @amount_paid = input.gets.chomp.to_f # we call gets on input
      break if valid_payment? && sufficient_payment?
      puts 'That is not the correct amount. '\
          'Please make sure to pay the full cost.'
    end
  end
end

class TransactionTest < Minitest::Test
  def setup
    @shoe = Transaction.new(490)
    @shoe.amount_paid = 500
    @polo = Transaction.new(200)
    @jeans = Transaction.new(475)
  end

  def test_prompt_for_payment
    # Kernel#gets automatically splits inputs by "\n"
    input = StringIO.new("-50\n100\n350\n") # you can call #gets on IO objects
    output = <<~OUTPUT
      You owe $200.
      How much are you paying?
      That is not the correct amount. Please make sure to pay the full cost.
      You owe $200.
      How much are you paying?
      That is not the correct amount. Please make sure to pay the full cost.
      You owe $200.
      How much are you paying?
    OUTPUT

    assert_output(output) { @polo.prompt_for_payment(input: input) }
    assert_equal(350, @polo.amount_paid)
  end
end

#2
def prompt_for_payment(input: $stdin, output: $stdout) 
  # additional output param here, to save our output to the output variable
  loop do
    output.puts "You owe $#{item_cost}.\nHow much are you paying?"
    @amount_paid = input.gets.chomp.to_f
    break if valid_payment? && sufficient_payment?
    output.puts 'That is not the correct amount. ' \
         'Please make sure to pay the full cost.'
  end
end

def test_prompt_for_payment
  item_cost   = 199
  transaction = Transaction.new(item_cost)

  input  = StringIO.new("198\n199") # Kernel#gets automatically splits inputs by "\n"
  # we simulate input at first iteration as 198, next input as 199; this is to ensure that we can break out of the loop.
  output = StringIO.new
  transaction.prompt_for_payment(input: input, output: output) 
  # message is written to output whenever Kernel#puts is called

  assert_match(/That is not the correct amount/, output.string)
  assert_match(/Please make sure to pay the full cost./, output.string)
end
