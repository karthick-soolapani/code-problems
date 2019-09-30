# Using the Ruby language, have the function OffLineMinimum(strArr) take the strArr
# parameter being passed which will be an array of integers ranging from 1...n and the
# letter "E" and return the correct subset based on the following rules. The input will
# be in the following format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for
# integers and the E means take out the smallest integer currently in the whole set. When
# finished, your program should return that new set with integers separated by commas.
# For example: if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your program
# should return 4,1,5.

def OffLineMinimum(strArr)
  num_arr = []
  result = []
  strArr.each do |element|
    if element == 'E'
      result << num_arr.sort!.shift
    else
      num_arr << element.to_i
    end
  end
  result.join(',')
end

p OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"]) == "4,1,5"
p OffLineMinimum(["1","2","E","E","3"]) == "1,2"
p OffLineMinimum(["4","E","1","E","2","E","3","E"]) == "4,1,2,3"
