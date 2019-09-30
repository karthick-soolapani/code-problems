# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 6, Reverse It (Part 2)

# QUESTION
# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# EXAMPLES
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

$stdout.sync = true # To display output immediately on windows using git bash

def reverse_words(sentence)
  return 'Invalid String' unless sentence.is_a?(String)

  sentence.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
p reverse_words('')
p reverse_words('  ')
puts reverse_words(666)
