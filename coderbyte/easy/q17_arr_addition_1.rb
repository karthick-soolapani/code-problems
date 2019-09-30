# Using the Ruby language, have the function ArrayAdditionI(arr) take the array
# of numbers stored in arr and return the string true if any combination of numbers
# in the array (excluding the largest number) can be added up to equal the largest number
# in the array, otherwise return the string false. For example: if arr contains
# [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23.
# The array will not be empty, will not contain all the same elements, and may
# contain negative numbers. 

def ArrayAdditionI(arr)
  max = arr.sort!.pop

  combinations = []
  (1..arr.size).each { |idx| combinations += arr.combination(idx).to_a }
  combinations.each { |element| return 'true' if element.sum == max }
  'false'
end

p ArrayAdditionI([4, 6, 23, 10, 1, 3]) == 'true'
p ArrayAdditionI([5, 7, 16, 1, 2]) == 'false'
p ArrayAdditionI([3, 5, -1, 8, 12]) == 'true'
