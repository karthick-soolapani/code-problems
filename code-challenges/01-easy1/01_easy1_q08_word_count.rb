$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - String (phrase - of words)
# OUTPUT - Hash (count of each word)
# RULES -
#   (scan only the words to array)
#   a-z, 0-9, apostrophe within a word only
#   case insensitive

# ALGORITHM
# Define class Phrase
# Define constructor, 1 param: phrase
# Define method word_count
#   Scan only words (including any apostrophe in between a word) => array
#   hash = Hash.new(0)
#   Iterate array
#     increase the count based on freq
#   return hash

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    phrase = @phrase.gsub(/'(\w+'?\w*)'/, '\1') # remove paired quotes
    words = phrase.scan(/\w+'?\w*/) # reject quotes when in beginning like 'computer
    words.each_with_object(Hash.new(0)) { |word, hsh| hsh[word] += 1 }
  end
end

# ALTERNATE SOLUTIONS

class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    count = Hash.new(0)
    @words.scan(/\b[\w']+\b/) { |word| count[word.downcase] += 1 }
    count
  end
end