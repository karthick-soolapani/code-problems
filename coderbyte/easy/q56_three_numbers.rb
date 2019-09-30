# Using the Ruby language, have the function ThreeNumbers(str) take the str parameter
# being passed and determine if exactly three unique, single-digit integers occur within
# each word in the string. The integers can appear anywhere in the word, but they cannot
# be all adjacent to each other. If every word contains exactly 3 unique integers somewhere
# within it, then return the string true, otherwise return the string false. For example: if
# str is "2hell6o3 wor6l7d2" then your program should return "true" but if the string is
# "hell268o w6or2l4d" then your program should return "false" because all the integers are
# adjacent to each other in the first word.

def ThreeNumbers(str)
  words = str.split
  result = words.all? do |word|
    nums = word.scan(/\d+/).map(&:to_i)
    all_single_digits = nums.all? do |num|
      num < 10
    end
    true if all_single_digits && nums.size == 3
  end
  result ? 'true' : 'false'
end

p ThreeNumbers("2hell6o3 wor6l7d2") == 'true'
p ThreeNumbers("hell268o w6or2l4d") == 'false'
p ThreeNumbers("2a3b5 w1o2rl3d g1gg92") == 'false'
p ThreeNumbers("21aa3a ggg4g4g6ggg") == 'false'
