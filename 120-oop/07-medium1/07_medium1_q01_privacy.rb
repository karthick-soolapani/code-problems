# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 1, Fix the Program - Mailable

# QUESTION
# Correct the following program so it will work properly. Assume that the Customer and Employee classes have complete implementations; just make the smallest possible change to ensure that objects of both types have access to the print_address method.

$stdout.sync = true # To display output immediately on windows using git bash

class Machine
  def initialize
    puts ": Use the instance method 'status' to obtain the status of the machine"
  end

  def status
    puts "The machine is '#{switch}'"
  end

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

mach1 = Machine.new
mach1.start
print mach1.status
mach1.stop
print mach1.status
