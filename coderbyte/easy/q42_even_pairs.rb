# Using the Ruby language, have the function EvenPairs(str) take the str parameter
# being passed and determine if a pair of adjacent even numbers exists anywhere in
# the string. If a pair exists, return the string true, otherwise return false. For
# example: if str is "f178svg3k19k46" then there are two even numbers at the end of
# the string, "46" so your program should return the string true. Another example:
# if str is "7r5gg812" then the pair is "812" (8 and 12) so your program should return
# the string true.

def EvenPairs(str)
  str.scan(/\d+/).each do |num_str|
    num_str.length.times do |idx|
      first, second = num_str[0...idx].to_i, num_str[idx..-1].to_i
      return 'true' if first.even? && second.even? && ![first, second].include?(0)
    end
  end
  'false'
end

p EvenPairs("3gy41d216") == "true"
p EvenPairs("f09r27i8e67") == "false"
p EvenPairs("f178svg3k19k46") == "true"
p EvenPairs("7r5gg812") == "true"
p EvenPairs("jfb735f9ph8152") == "true"

def EvenPairs(str)
  str.match?(/[02468]\d*[02468]/) ? 'true' : 'false'
end
