# Using the Ruby language, have the function BitwiseOne(strArr) take the array of
# strings stored in strArr, which will only contain two strings of equal length that
# represent binary numbers, and return a final binary string that performed the bitwise
# OR operation on both strings. A bitwise OR operation places a 0 in the new string where
# there are zeroes in both binary strings, otherwise it places a 1 in that spot.
# For example: if strArr is ["1001", "0100"] then your program should return the string "1101"

def BitwiseOne(strArr)
  result = ''
  strArr[0].chars.each_with_index do |char, idx|
    char == '0' && strArr[1][idx] == '0' ? result << '0' : result << '1'
  end
  result
end

p BitwiseOne(["1001", "0100"]) == "1101"
p BitwiseOne(["100", "000"]) == "100"
p BitwiseOne(["00011", "01010"]) == "01011"
