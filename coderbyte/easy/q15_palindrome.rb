# Using the Ruby language, have the function Palindrome(str) take the str
# parameter being passed and return the string true if the parameter is a
# palindrome, (the string is the same forward as it is backward) otherwise
# return the string false. For example: "racecar" is also "racecar" backwards.
# Punctuations will not be part of the string. 

def Palindrome(str)
  str = str.gsub(/[^a-zA-Z0-9]/, '')
  
  str.chars.each_with_index do |char, idx|
    return false unless char == str[-idx - 1] 
  end
  true
end

p Palindrome("racecar") == true
p Palindrome("never odd or even") == true
p Palindrome("e2y2e") == true
p Palindrome("eyes") == false
