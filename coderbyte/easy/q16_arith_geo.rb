# Using the Ruby language, have the function ArithGeo(arr) take the array of
# numbers stored in arr and return the string "Arithmetic" if the sequence
# follows an arithmetic pattern or return "Geometric" if it follows a geometric
# pattern. If the sequence doesn't follow either pattern return -1. An arithmetic
# sequence is one where the difference between each of the numbers is consistent,
# where as in a geometric sequence, each term after the first is multiplied by
# some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric
# example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will
# not be entered, and no array will contain all the same elements.

def ArithGeo(arr)
  arith_result, geo_result = true, true
  arith_pattern = arr[1] - arr[0]
  geo_pattern   = arr[1] / arr[0]
  
  arr.each_cons(2) do |num1, num2|
    arith_result = false if num2 - num1 != arith_pattern
    geo_result   = false if num2 / num1 != geo_pattern
  end
  
  return 'Arithmetic' if arith_result
  return 'Geometric'  if geo_result
  -1
end

p ArithGeo([5,10,15]) == 'Arithmetic'
p ArithGeo([2, 6, 18, 54]) == 'Geometric'
p ArithGeo([2,4,16,24]) == -1
