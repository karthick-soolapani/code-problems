# Using the Ruby language, have the function BitwiseTwo(strArr) take the array of
# strings stored in strArr, which will only contain two strings of equal length that
# represent binary numbers, and return a final binary string that performed the bitwise
# AND operation on both strings. A bitwise AND operation places a 1 in the new string
# where there is a 1 in both locations in the binary strings, otherwise it places a 0
# in that spot. For example: if strArr is ["10111", "01101"] then your program should
# return the string "00101" 

def BitwiseTwo(strArr)
  result = strArr[0].to_i(2) & strArr[1].to_i(2)
  format("%0#{strArr[0].size}b", result)
end

p BitwiseTwo(["10111", "01101"]) == '00101'
p BitwiseTwo(["100", "000"]) == '000'
p BitwiseTwo(["10100", "11100"]) == '10100'
