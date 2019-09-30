# Using the Ruby language, have the function HammingDistance(strArr) take the array
# of strings stored in strArr, which will only contain two strings of equal length
# and return the Hamming distance between them. The Hamming distance is the number of
# positions where the corresponding characters are different. For example: if strArr is
# ["coder", "codec"] then your program should return 1. The string will always be of equal
# length and will only contain lowercase characters from the alphabet and numbers.

def HammingDistance(strArr)
  count = 0
  strArr[0].chars.each_with_index do |char, idx|
    count += 1 unless char == strArr[1][idx]
  end
  count
end

p HammingDistance(["coder", "codec"]) == 1
p HammingDistance(["10011", "10100"]) == 3
p HammingDistance(["helloworld", "worldhello"]) == 8
