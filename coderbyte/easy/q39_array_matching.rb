# Using the Ruby language, have the function array_matching(str_arr) read the array
# of strings stored in str_arr which will contain only two elements, both of which will
# represent an array of positive integers. For example: if str_arr is ["[1, 2, 5, 6]",
# "[5, 2, 8, 11]"], then both elements in the input represent two integer arrays, and
# your goal for this challenge is to add the elements in corresponding locations from both
# arrays. For the example input, your program should do the following additions:
# [(1 + 5), (2 + 2), (5 + 8), (6 + 11)] which then equals [6, 4, 13, 17]. Your program
# should finally return this resulting array in a string format with each element separated
# by a hyphen: 6-4-13-17.

# If the two arrays do not have the same amount of elements, then simply append the
# remaining elements onto the new array (example shown below). Both arrays will be
# in the format: [e1, e2, e3, ...] where at least one element will exist in each array.

# problem understanding
# input - 2 Arrays given in string form
# output - String formed from joining an Array of integers

# rules -
# Convert string version of Array to Array of integers
# The new array elements are formed by arr1[0] + arr2[0], arr1[1] + arr2[1] and so on
# When one array is longer than another then just include the elements as if it is arr1[x] + 0
#   Use fetch to return 0 when it is out of bounds

# algorithm
# Define method array_matching with 1 parameter str_arr
# From each string extract the numbers into a new array -> nums1, nums2 (using scan)
# set result = []
# set limit = size of the longest array
# Iterate limit times, parameter: idx
#   result << nums1[idx] + nums2[idx] using fetch to account for out of range
# Join and Return the result

def array_matching(str_arr)
  nums1 = str_arr[0].scan(/\d+/).map(&:to_i)
  nums2 = str_arr[1].scan(/\d+/).map(&:to_i)
  
  limit = [nums1.size, nums2.size].max
  result = []
  
  limit.times do |idx|
    result << (nums1.fetch(idx) { 0 } + nums2.fetch(idx) { 0 })
  end
  result.join('-')
end

p array_matching(["[5, 2, 3]", "[2, 2, 3, 10, 6]"]) == "7-4-6-10-6"
p array_matching(["[1, 2, 1]", "[2, 1, 5, 2]"]) == "3-3-6-2"
p array_matching(["[1, 2, 5, 6]", "[5, 2, 8, 11]"]) == "6-4-13-17"

def array_matching(str_arr)
  short, long = str_arr.map { |str| str.scan(/\d+/).map(&:to_i) }.sort_by { |arr| arr.size }
  long.map.with_index { |num1, idx| idx >= short.size ? num1 : num1 + short[idx] }.join('-')
end
