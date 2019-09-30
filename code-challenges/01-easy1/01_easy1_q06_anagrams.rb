$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# input - String (base), Array (of strings to be matched against base)
# output - Array (of strings - filtered from input array)
# rules -
#   Case insensitive i.e. Cron is an anagram of corn
#   Same words are not anagrams i.e. Corn in array is not an anagram of corn in base
#   return empty array when no match
#   Anagram have the same number of each letter - check by sorting the chars in words

# ALGORITHM
# Define class Anagram
# Define constructor, 1 param: base
# Define method match, 1 param: words
#   Iterate(select) words, 1 param: word
#   base.downcase != word.downcase &&
#   base.downcase.chars.sort == word.downcase.chars.sort
# return filtered array

class Anagram
  def initialize(base)
    @base = base
  end
  
  def match(words)
    words.select do |word|
      @base.downcase != word.downcase &&
      @base.downcase.chars.sort == word.downcase.chars.sort
    end
  end
end
