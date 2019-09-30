# Using the Ruby language, have the function NumberStream(str) take the str parameter being passed which will contain the numbers 2 through 9, and determine if there is a consecutive stream of digits of at least N length where N is the actual digit value. If so, return the string true, otherwise return the string false. For example: if str is "6539923335" then your program should return the string true because there is a consecutive stream of 3's of length 3. The input string will always contain at least one digit.


def NumberStream(str)
  return 'true' if str.include?('1')
  repeated_nums = str.scan(/([0-9])\1+/).flatten
  repeated_nums.each do |num|
    total_num = str.scan(/#{num}{2,}/)
    return 'true' if num.to_i <= total_num.first.size
  end
  "false"
end

def NumberStream(str)
  str.chars.each { |chr| return 'true' if str.match?(chr * chr.to_i) }
  'false'
end

p NumberStream("6539923335") == "true"
p NumberStream("5556293383563665") == "false"
p NumberStream("5788888888882339999") == "true"

