# Using the Ruby language, have the function BinaryReversal(str) take the str parameter
# being passed, which will be a positive integer, take its binary representation
# (padded to the nearest N * 8 bits), reverse that string of bits, and then finally
# return the new reversed string in decimal form. For example: if str is "47" then the
# binary version of this integer is 101111 but we pad it to be 00101111. Your program should
# reverse this binary string which then becomes: 11110100 and then finally return the decimal
# version of this string, which is 244.

# PROBLEM UNDERSTANDING

# input - String version of a positive integer
# output - string version of a decimal number

# rules -
# Integer string -> Integer -> Binary string -> pad with 0s -> Reverse string -> Integer -> Integer string
# Pad with leading 0s until the total char size is 8

# ALGORITM

# Define a method: binary_reversal with 1 parameter: str
# Convert str to an integer: int
# Convert int to a binary: binary_num
# format binary_num by adding leading 0s and total char size == 8
# reverse the above binary_num
# Convert binary_num to an integer: bin_as_int
# Convert bin_as_int to a String and return

def BinaryReversal(str)
  binary = str.to_i.to_s(2)
  pad_size = binary.size % 8 == 0 ? binary.size : (8 - binary.size % 8) + binary.size
  format("%0#{pad_size}d", binary).reverse.to_i(2).to_s
end

p BinaryReversal("47") == "244"
p BinaryReversal("213") == "171"
p BinaryReversal("4567") == "60296"

def BinaryReversal(str, digits= 8)
  binary = str.to_i.to_s(2).reverse
  
  digits += 8 until digits >= binary.length
  binary += "0" until binary.length == digits
  
  p binary.to_i(2).to_s
end
