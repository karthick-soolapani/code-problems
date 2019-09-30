# Using the Ruby language, have the function OtherProducts(arr) take the array of
# numbers stored in arr and return a new list of the products of all the other numbers
# in the array for each element. For example: if arr is [1, 2, 3, 4, 5] then the new
# array, where each location in the new array is the product of all other elements,
# is [120, 60, 40, 30, 24]. The following calculations were performed to get this
# answer: [(2*3*4*5), (1*3*4*5), (1*2*4*5), (1*2*3*5), (1*2*3*4)]. You should generate
# this new array and then return the numbers as a string joined by a hyphen: 120-60-40-30-24.
# The array will contain at most 10 elements and at least 1 element of only positive integers.

# problem understanding
# input - Array of positive Integers (1 to 10 integers)
# output - String (Integers delimited by hyphen)

# rules -
# At each index return the computation of product of all Array integers except the one at that index
# Capture these return in an array then join them

# algorithm
# total_product = product of all elements in the array
# products = Iterate(#map) through the arr, num as parameter
#   total_product / num
# join elements of total_product with '-'
# Return the above string

def OtherProducts(arr)
  total_product = arr.inject(:*)
  arr.map { |num| total_product / num }.join('-')
end

p OtherProducts([1, 2, 3, 4, 5]) == "120-60-40-30-24"
p OtherProducts([1,4,3]) == "12-3-4"
p OtherProducts([3,1,2,6]) == "12-36-18-6"
p OtherProducts([5]) == "1"
p OtherProducts([1,4,6,19,3]) == "1368-342-228-72-456"
