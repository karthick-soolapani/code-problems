# Using the Ruby language, have the function SumMultiplier(arr) take the array of numbers stored in arr and return the string true if any two numbers can be multiplied so that the answer is greater than double the sum of all the elements in the array. If not, return the string false. For example: if arr is [2, 5, 6, -6, 16, 2, 3, 6, 5, 3] then the sum of all these elements is 42 and doubling it is 84. There are two elements in the array, 16 * 6 = 96 and 96 is greater than 84, so your program should return the string true.

def SumMultiplier(arr)
  combinations = arr.combination(2).to_a
  twice_sum = arr.sum * 2
  combinations.any? { |comb| comb.inject(:*) > twice_sum } ? 'true' : 'false'
end

p SumMultiplier([2, 5, 6, -6, 16, 2, 3, 6, 5, 3]) == "true"
p SumMultiplier([2, 2, 2, 2, 4, 1]) == "false"
p SumMultiplier([1, 1, 2, 10, 3, 1, 12]) == "true"
