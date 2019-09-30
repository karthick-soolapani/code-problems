# Using the Ruby language, have the function NonrepeatingCharacter(str) take the str
# parameter being passed, which will contain only alphabetic characters and spaces, and
# return the first non-repeating character. For example: if str is "agettkgaeee" then
# your program should return k. The string will always contain at least one character
# and there will always be at least one non-repeating character.

def NonrepeatingCharacter(str)
  str.each_char { |char| return char if str.count(char) <= 1 }
end

p NonrepeatingCharacter('agettkgaeee') == 'k'
p NonrepeatingCharacter('abcdef') == 'a'
p NonrepeatingCharacter("hello world hi hey") == 'w'

def NonrepeatingCharacter(str)
  str.chars.each_with_index do |char1, idx1|
    count = 1
    str.chars.each_with_index do |char2, idx2|
      next if idx1 == idx2
      count += 1 if char1 == char2
    end
    return char1 if count <= 1
  end
end
