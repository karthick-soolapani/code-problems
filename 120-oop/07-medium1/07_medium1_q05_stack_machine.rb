# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 5, Stack Machine Interpretation

# QUESTION
# Write a class that implements a miniature stack-and-register-based programming language

$stdout.sync = true # To display output immediately on windows using git bash

class MinilangRuntimeError < RuntimeError; end
class BadTokenError < MinilangRuntimeError; end
class EmptyStackError < MinilangRuntimeError; end

class Minilang
  def initialize(command)
    @command = command
    @register = 0
    @stack = []
  end
  
  def eval
    @command.split.each { |command| eval_token(command) }
  rescue MinilangRuntimeError => error
    puts error.message
  end

  private
  
  def eval_token(command)
    command = command.downcase
    if command.to_i.to_s == command
      @register = command.to_i
    elsif respond_to?(command, true) && !Object.new.respond_to?(command)
      send(command)
    else
      raise BadTokenError.new("Invalid token: #{command}")
    end
  end
  
  def push
    @stack << @register
  end

  def add
    @register += pop
  end
  
  def sub
    @register -= pop
  end
  
  def mult
    @register *= pop
  end
  
  def div
    @register /= pop
  end
  
  def mod
    @register %= pop
  end
  
  def pop
    empty_stack_error if @stack.empty?
    @register = @stack.pop
  end
  
  def print
    puts @register
  end
  
  def empty_stack_error
    raise EmptyStackError.new('Empty Stack')
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

# A quick way to write a math expression in terms of Minilang

# For example we have the following math expression:
# 4 - 3 * 2 + 1 

# There is a simple way to write this:
# Write the numbers in reversed order with 'PUSH' in between: 1 PUSH 2 PUSH 3 PUSH 4
# Write the remaining operations in order: SUB MULT ADD
# PRINT the return value of the register: PRINT
# Following the above steps we have:

# Minilang.new('1 PUSH 2 PUSH 3 PUSH 4 SUB MULT ADD PRINT').eval
# # => 3

# ALTERNATE SOLUTIONS

require 'set'

class MinilangRuntimeError < RuntimeError; end
class BadTokenError < MinilangRuntimeError; end
class EmptyStackError < MinilangRuntimeError; end

class Minilang
  ACTIONS = Set.new %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(program)
    @program = program
    @stack = []
    @register = 0
  end

  def eval
    @program.split.each { |token| eval_token(token) }
  rescue MinilangRuntimeError => error
    puts error.message
  end

  private

  def eval_token(token)
    if ACTIONS.include?(token)
      send(token.downcase)
    elsif token =~ /\A[-+]?\d+\z/
      @register = token.to_i
    else
      raise BadTokenError, "Invalid token: #{token}"
    end
  end

  def push
    @stack.push(@register)
  end

  def pop
    raise EmptyStackError, "Empty stack!" if @stack.empty?
    @register = @stack.pop
  end

  def add
    @register += pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def mult
    @register *= pop
  end

  def sub
    @register -= pop
  end

  def print
    puts @register
  end
end

