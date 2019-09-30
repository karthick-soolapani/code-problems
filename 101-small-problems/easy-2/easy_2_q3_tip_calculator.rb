# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 2 Question 3, Tip calculator

# QUESTION
# Create a simple tip calculator. The program should prompt for
# a bill amount and a tip rate. The program must compute the tip and
# then display both the tip and the total amount of the bill.

$stdout.sync = true # To display output immediately on windows using git bash

def check_float(num)
  num = num.to_s

  if /\d/.match(num) && /^[+-]?\d*\.?\d*$/.match(num)
    if num.to_f.positive?
      'positive'
    elsif num.to_f.negative?
      'negative'
    else
      'zero'
    end
  else
    'invalid'
  end
end

print 'What is the bill? '
bill_amount = gets.chomp
print 'What is the tip percentage? '
tip_rate = gets.chomp

if ['negative', 'invalid'].include?(check_float(bill_amount))
  puts 'Invalid bill amount'
elsif ['negative', 'invalid'].include?(check_float(tip_rate))
  puts 'Invalid tip percentage'
else
  tip_amount = bill_amount.to_f * (tip_rate.to_f / 100)
  total_amount = bill_amount + tip_amount

  puts "The tip is $#{tip_amount.round(2)}"
  puts "The total is $#{total_amount.round(2)}"
end
