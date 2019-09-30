# Using the Ruby language, have the function WordCount(str) take the str string
# parameter being passed and return the number of words the string contains
# (e.g. "Never eat shredded wheat or cake" would return 6). Words will be
# separated by single spaces.  

def WordCount(str)
  str.split.size
end

p WordCount("Never eat shredded wheat or cake") == 6
p WordCount("Hello World") == 2
p WordCount("one 22 three") == 3
