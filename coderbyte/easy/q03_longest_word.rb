# Coderbyte - Challenges
# Easy Challenges
# Question 3 - Longest Word

# QUESTION
# Have the function LongestWord(sen) take the sen parameter being passed and
# return the largest word in the string. If there are two or more words that are
# the same length, return the first word from the string with that length.
# Ignore punctuation and assume sen will not be empty. 

$stdout.sync = true # To display output immediately on windows using git bash

def LongestWord(sen)
  sen = sen.split
  sen.map do |word|
    word.gsub!(/[^0-9a-zA-Z ]/, '')
  end
  
  longest_word = ''
  sen.each do |word|
    longest_word = word.to_s if word.to_s.length > longest_word.length
  end
  longest_word
end


# ALTERNATE SOLUTIONS

#1
def LongestWord(sen)

  # we use the regex match function which searches the string for the
  # pattern and returns an array of strings it finds
  # in our case the pattern we define below returns words with
  # only the characters a through z and 0 through 9, stripping away punctuation
  # e.g. "hello$% ##all" becomes [hello, all]
  arr = sen.split.map do |w| 
    /[a-zA-Z0-9\s]+/.match(w) 
  end
  
  # no need to sort and get the last word, you can
  # easily find largest word in array using max_by
  longest = arr.max_by do |w| 
      w.to_s.length 
  end
  longest
end
