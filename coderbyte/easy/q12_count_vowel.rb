# Using the Ruby language, have the function VowelCount(str) take the str string
# parameter being passed and return the number of vowels the string contains
# (ie. "All cows eat grass and moo" would return 8). Do not count y as a vowel
# for this challenge.  

def VowelCount(str)
  str.count('aeiouAEIOU')
end

p VowelCount("All cows eat grass and moo") == 8
p VowelCount("hello") == 2
p VowelCount("coderbyte") == 3
