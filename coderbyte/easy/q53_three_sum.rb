# Using the Ruby language, have the function ThreeSum(arr) take the array of integers
# stored in arr, and determine if any three distinct numbers (excluding the first element)
# in the array can sum up to the first element in the array. For example: if arr is
# [8, 2, 1, 4, 10, 5, -1, -1] then there are actually three sets of triplets that sum
# to the number 8: [2, 1, 5], [4, 5, -1] and [10, -1, -1]. Your program should return
# the string true if 3 distinct elements sum to the first element, otherwise your program
# should return the string false. The input array will always contain at least 4 elements.

def ThreeSum(arr)
  total = arr.first
  ints = arr[1..-1]
  
  combinations = ints.combination(3).to_a
  combinations.select! { |sub_arr| sub_arr.sum == total }
  combinations.empty? ? 'false' : 'true'
end

p ThreeSum([8, 2, 1, 4, 10, 5, -1, -1]) == 'true'
p ThreeSum([10, 2, 3, 1, 5, 3, 1, 4, -4, -3, -2]) == 'true'
p ThreeSum([12, 3, 1, -5, -4, 7]) == 'false'
p ThreeSum([8, 2, 1, 4, 10, 5, -1, -1]) == 'true'
