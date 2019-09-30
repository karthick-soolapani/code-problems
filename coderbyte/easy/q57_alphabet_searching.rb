# Using the Ruby language, have the function AlphabetSearching(str) take the str parameter
# being passed and return the string true if every single letter of the English alphabet
# exists in the string, otherwise return the string false. For example: if str is
# "zacxyjbbkfgtbhdaielqrm45pnsowtuv" then your program should return the string true
# because every character in the alphabet exists in this string even though some characters
# appear more than once.

def AlphabetSearching(str)
  str.chars.uniq.join.downcase.count('a-z') == 26 ? 'true' : 'false'
end

p AlphabetSearching("zacxyjbbkfgtbhdaielqrm45pnsowtuv") == 'true'
p AlphabetSearching("abcdefghijklmnopqrstuvwxyyyy") == 'false'
p AlphabetSearching("abc123456kmo") == 'false'
