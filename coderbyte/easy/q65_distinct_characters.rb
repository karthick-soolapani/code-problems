# Using the Ruby language, have the function DistinctCharacters(str) take the str parameter being passed and determine if it contains at least 10 distinct characters, if so, then your program should return the string true, otherwise it should return the string false. For example: if str is "abc123kkmmmm?" then your program should return the string false because this string contains only 9 distinct characters: a, b, c, 1, 2, 3, k, m, ? adds up to 9.

def DistinctCharacters(str)
  str.chars.uniq.size >= 10 ? 'true' : 'false'
end

p DistinctCharacters("abc123kkmmmm?") == "false"
p DistinctCharacters("12334bbmma:=6") == "true"
p DistinctCharacters("eeeemmmmmmmmm1000") == "false"

