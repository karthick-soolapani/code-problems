# Using the Ruby language, have the function ThirdGreatest(strArr) take the array of
# strings stored in strArr and return the third largest word within in. So for example:
# if strArr is ["hello", "world", "before", "all"] your output should be world because
# "before" is 6 letters long, and "hello" and "world" are both 5, but the output should
# be world because it appeared as the last 5 letter word in the array. If strArr was
# ["hello", "world", "after", "all"] the output should be after because the first
# three words are all 5 letters long, so return the last one.
# Each string will only contain letters.

def ThirdGreatest(strArr)
  idx = 1
  result = nil

  until idx > 3 || strArr.empty?
    result = strArr.max_by { |word| word.size }
    strArr -= [result]
    idx += 1
  end
  result
end

p ThirdGreatest(["hello", "world", "after", "all"]) == "after"
p ThirdGreatest(["coder","pits","code"]) == "code"
p ThirdGreatest(["abc","defg","z","hijk"]) == "abc"
p ThirdGreatest(["possible"]) == "possible"

def ThirdGreatest(strArr)
  first, second, third = '', '', ''

  strArr.each do |word|
    if word.length > first.length
      first, second, third = word, first, second
    elsif word.length > second.length
      second, third = word, second
    elsif word.length > third.length
      third = word
    end
  end

  return third unless third == ''
  return second unless second == ''
  first
end
