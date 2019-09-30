# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 9, ddaaiillyy ddoouubbllee

# QUESTION
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

$stdout.sync = true # To display output immediately on windows using git bash

def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

def crunch_v2(string)
  string.chars.reject.with_index { |char, idx| char == string[idx + 1] }.join
end

puts
p crunch_v2('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch_v2('4444abcabccba') == '4abcabcba'
p crunch_v2('ggggggggggggggg') == 'g'
p crunch_v2('a') == 'a'
p crunch_v2('') == ''

def crunch_v3(string)
  crunched_str = ''
  string.each_char do |char|
    crunched_str << char unless char == crunched_str[-1]
  end
  crunched_str
end

puts
p crunch_v3('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch_v3('4444abcabccba') == '4abcabcba'
p crunch_v3('ggggggggggggggg') == 'g'
p crunch_v3('a') == 'a'
p crunch_v3('') == ''
