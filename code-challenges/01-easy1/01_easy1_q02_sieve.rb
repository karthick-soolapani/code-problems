$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# input - Integer (limit)
# output - Array of integers (prime numbers)
# rules -
# Ignore 1, start from 2
# Assume input to be valid positive integer higher than 2

# ALGORITHM
# Define Sieve class
# Define constructor, 1 param: limit
# Define primes
#   Form an array numbers = 2..limit
#   Iterate numbers, 2 params: num1, idx
#     Iterate numbers[idx+1..-1], 1 param: num2
#       if num2 is divisible by num1
#         delete num2 from numbers
# return numbers

class Sieve
  def initialize(limit)
    @limit = limit
    @numbers = (2..limit).to_a
  end

  def primes
    @numbers.each do |num|
      break @numbers if num.abs2 > @limit
      num.abs2.step(@limit, num) { |multiple| @numbers.delete(multiple) }
    end
  end
end

# ALTERNATE SOLUTIONS

#1
class Sieve
  attr_reader :nums, :limit

  def initialize(limit)
    raise ArgumentError, 'Input has to be greater than 2.' if limit < 2
    @limit = limit
    @nums = (0..limit).to_a
  end

  def primes
    nums[0] = nums[1] = nil
    nums.each do |n|
      next unless n
      break if n.abs2 > limit
      n.abs2.step(limit, n) {|m| nums[m] = nil}
    end
    nums.compact
  end
end

# benchmark efficiency test:
require 'prime'

def benchmark
  start_time = Time.now
  yield
  puts "Seconds: #{Time.now - start_time}"
end

benchmark { p Sieve.new(1_000_000).primes == Prime.entries(1_000_000) }
# => 'true', 'Seconds: ~ 0.32'
