# Using the Ruby language, have the function PalindromeCreator(str) take the str parameter
# being passed and determine if it is possible to create a palindromic string of at least 3
# characters by removing 1 or 2 characters. For example: if str is "abjchba" then you can remove
# the characters jc to produce "abhba" which is a palindrome. For this example your program should
# return the two characters that were removed with no delimiter and in the order they appear in
# the string, so jc. If 1 or 2 characters cannot be removed to produce a palindrome, then return
# the string not possible. If the input string is already a palindrome, your program should
# return the string palindrome.

# The input will only contain lowercase alphabetic characters. Your program should
# always attempt to create the longest palindromic substring by removing 1 or 2
# characters (see second sample test case as an example). The 2 characters you remove
# do not have to be adjacent in the string.

def PalindromeCreator(str)
  return 'palindrome' if str == str.reverse && str.size > 1
  
  str.chars.each_with_index do |char, idx|
    new_str = str.dup
    new_str.slice!(idx)
    return char if new_str == new_str.reverse && new_str.size >= 3
  end
  
  combinations = str.chars.combination(2).to_a
  combinations.each do |comb|
    new_str = str.sub(comb[0], '').sub(comb[1], '')
    return comb.join if new_str == new_str.reverse && new_str.size >= 3
  end
  'not possible'
end

p PalindromeCreator('abjchba') == 'jc'
p PalindromeCreator("mmop") == "not possible"
p PalindromeCreator("kjjjhjjj") == "k"
p PalindromeCreator("annak") == "k"
