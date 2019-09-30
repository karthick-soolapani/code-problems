# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Advanced 1, Question 1, Internal vs External Iterators

# QUESTION
# Let's start things from the ground up. We want to make a simple test suite for our CashRegister class. Setup the initial testing file. You don't have to have any tests in your test file. For this exercise, write everything you would need to start testing CashRegister, excluding the tests themselves (necessary requires, test class, etc.).

$stdout.sync = true # To display output immediately on windows using git bash

factorials = Enumerator.new do |y|
  n = 1
  y << 1

  loop do
    fact = (1..n).inject(:*)
    y << fact
    n += 1
  end
end

p factorials.first(7)

7.times { puts factorials.next }
factorials.rewind

factorials.each_with_index do |number, index|
  puts number
  break if index == 6
end

# ALTERNATE SOLUTIONS

#1
factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

#2
fac = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a *= b
    b += 1
  end
end

p (1..7).map { fac.next }
p fac.rewind.take 7
