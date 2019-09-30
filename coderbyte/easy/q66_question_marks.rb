# Using the Ruby language, have the function QuestionsMarks(str) take the str string parameter, which will contain single digit numbers, letters, and question marks, and check if there are exactly 3 question marks between every pair of two numbers that add up to 10. If so, then your program should return the string true, otherwise it should return the string false. If there aren't any two numbers that add up to 10 in the string, then your program should return false as well. 

# For example: if str is "arrb6???4xxbl5???eee5" then your program should return true because there are exactly 3 question marks between 6 and 4, and 3 question marks between 5 and 5 at the end of the string.

def QuestionsMarks(str)
  state = false

  while str.match?(/\d.*?\d/)
    matched_str = str.match(/\d.*?\d/).to_s
    sum = matched_str[0].to_i + matched_str[-1].to_i
    state = true if sum == 10
    return 'false' unless matched_str.count('?') == 3 || sum != 10
    str = str.sub(/\d/, '')
  end
  return 'false' unless state
  'true'
end

p QuestionsMarks("arrb6???4xxbl5???eee5") == "true"
p QuestionsMarks("aa6?9") == "false"
p QuestionsMarks("acc?7??sss?3rr1??????5?") == "true"
p QuestionsMarks("9???1???9??1???9") == "false"
p QuestionsMarks("acc?7??sss?3rr1??????5") == "true"
