# Using the Ruby language, have the function PowersofTwo(num) take the num parameter
# being passed which will be an integer and return the string true if it's a power of two.
# If it's not return the string false. For example if the input is 16 then your program
# should return the string true but if the input is 22 then the output should be the string false.

def PowersofTwo(num)
  while num > 2
    return 'false' if num % 2 == 1
    num /= 2
  end
  'true'
end

p PowersofTwo(16) == 'true'
p PowersofTwo(22) == 'false'
p PowersofTwo(4) == 'true'
p PowersofTwo(124) == 'false'

def PowersofTwo(num)
  (num & (num - 1)) == 0 ? 'true' : 'false'
  # Integer#& method
  # Converts it to binary and checks char by char using AND
  # So 4 & 3 is 100 & 11 so 0 (1 AND nil, 0 AND 1, 0 AND 1)
end
