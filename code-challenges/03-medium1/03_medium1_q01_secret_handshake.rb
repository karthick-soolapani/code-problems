$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - Integer, String (binary - handle invalid binary)
# OUTPUT - Array (of binary commands)
# rules -
#   Convert decimal to binary
#   Invalid strings (^0-1) should be considered as 0 - return empty array
#   1 = wink
#   10 = double blink
#   100 = close your eyes
#   1000 = jump
#   10000 = Reverse the order of the operations in the secret handshake.

# ALGORITHM
# Define class SecretHandshake
# Define constructor(binary)
#   if an integer -> convert to binary str
#   if a string -> check for valid binary str else default to '0'
#   convert result to integer i.e. '101' -> 101 => @num
# Define method commands
#   Store command matrix as hash (can be constant too)
#   reverse_flag = false
#   if num >= 10000
#     num -= 10000
#     reverse_flag = !reverse_flag
#   end
#   commands = []
#   Iterate command hash, 2 params: value, command
#     next if num < value
#     num -= value
#     commands.unshift(command)
#   commands.reverse! if reverse_flag
#   return commands

class SecretHandshake
  COMMAND_MATRIX = {1000 => 'jump', 100 => 'close your eyes',
    10 => 'double blink', 1 => 'wink'}

  def initialize(binary)
    binary = binary.to_s(2) if binary.is_a?(Integer)
    @binary = binary.to_s.match?(/[^01]/) ? 0 : binary.to_i
  end

  def commands
    reverse_flag = false
    if @binary >= 10000
      @binary -= 10000
      reverse_flag = !reverse_flag
    end

    commands = []
    COMMAND_MATRIX.each do |value, command|
      next if @binary < value
      @binary -= value
      commands.unshift(command)
    end

    reverse_flag ? commands.reverse : commands
  end
end

# ALTERNATE SOLUTIONS

class SecretHandshake
  COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(binary)
    binary = binary.to_s(2) if binary.is_a?(Integer)
    @binary = binary.to_s.match?(/[^01]/) ? [0] : binary.to_i.digits
  end

  def commands
    handshake = COMMANDS.select.with_index { |_, idx| @binary[idx] == 1 }
    @binary.size >= 5 ? handshake.reverse : handshake
  end
end
