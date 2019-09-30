# Using the Ruby language, have the function LetterCountI(str) take the str parameter being
# passed and return the first word with the greatest number of repeated letters.
# For example: "Today, is the greatest day ever!" should return greatest because it has
# 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words
# with repeating letters return -1. Words will be separated by spaces.

def LetterCountI(str)
  g_word, g_count = '', 0
  str.split.each do |word|
    word.chars.each do |char|
      if word.downcase.count(char) > g_count
        g_count = word.downcase.count(char)
        g_word = word
      end
    end
  end

  g_count <= 1 ? -1 : g_word
end

p LetterCountI("Today, is the greatest day ever!") == 'greatest'
p LetterCountI("Hello apple pie") == 'Hello'
p LetterCountI("No words") == -1

def LetterCountI(str)
  word_count = Hash.new(0)
  str.split.each do |word|
    word.chars.each do |char|
      word_count[word] = word.downcase.count(char) if word.downcase.count(char) > word_count[word]
    end
  end

  max_word = word_count.max_by { |key, value| value }
  return -1 if max_word.last <= 1
  max_word.first
end
