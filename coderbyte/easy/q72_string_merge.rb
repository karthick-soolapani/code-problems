# Using the Ruby language, have the function StringMerge(str) read the str parameter being passed which will contain a large string of alphanumeric characters with a single asterisk character splitting the string evenly into two separate strings. Your goal is to return a new string by pairing up the characters in the corresponding locations in both strings. For example: if str is "abc1*kyoo" then your program should return the string akbyco1o because a pairs with k, b pairs with y, etc. The string will always split evenly with the asterisk in the center.

def StringMerge(str)
  arr1, arr2 = str.split('*').map(&:chars)
  arr1.zip(arr2).flatten.join
end

p StringMerge("abc1*kyoo") == "akbyco1o"
p StringMerge("aaa*bbb") == "ababab"
p StringMerge("123hg*aaabb") == "1a2a3ahbgb"
