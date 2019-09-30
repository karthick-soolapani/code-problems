# Using the Ruby language, have the function NumberSearch(str) take the str parameter,
# search for all the numbers in the string, add them together, then return that final
# number. For example: if str is "88Hello 3World!" the output should be 91. You will
# have to differentiate between single digit numbers and multiple digit numbers like in
# the example above. So "55Hello" and "5Hello 5" should return two different answers.
# Each string will contain at least one letter or symbol.

def NumberAddition(str)
  str.scan(/\d+/).map(&:to_i).sum
end

p NumberAddition("88Hello 3World!") == 91
p NumberAddition("55Hello") == 55
p NumberAddition("75Number9") == 84
p NumberAddition("10 2One Number*1*") == 13
p NumberAddition("3Hello 9") == 12
