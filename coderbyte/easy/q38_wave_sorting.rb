# Using the Ruby language, have the function WaveSorting(arr) take the array of
# positive integers stored in arr and return the string true if the numbers can be
# arranged in a wave pattern: a1 > a2 < a3 > a4 < a5 > ..., otherwise return the string
# false. For example, if arr is: [0, 1, 2, 4, 1, 4], then a possible wave ordering of
# the numbers is: [2, 0, 4, 1, 4, 1]. So for this input your program should return the
# string true. The input array will always contain at least 2 elements.

# problem understanding
# input - Array of Integers
# output - 'true' or 'false'

# rules -
# The Integers in array can be in any sequence (I will have to come up with all sequences)
# Even indexed numbers should be greater than the next number
# Odd indexed numbers should be less than the next number
# No need to perform this for last number

# algorithm -
# permutations = find all permutations for the given array
# Iterate through the permutations, waves as parameter
#   Iterate through waves, num, idx as parameters
#     if idx >= waves.size - 1
#     elsif idx.even? && current element <= next element
#       Break with 'false'
#     elsif idx.odd? && current element >= next element
#       Break with 'false'
#     end
# 'true'

def WaveSorting(arr)
  # The idea is this is not possible only if 1 number has more than half the occurences
  # Otherwise you can always form a wave sequence
  arr.each{|num| return 'false' if arr.count(num) > (arr.length / 2.0) }
  'true'
end

p WaveSorting([0, 1, 2, 4, 1, 4]) == "true"
p WaveSorting([0, 1, 2, 4, 1, 1, 1]) == "false"
p WaveSorting([0, 4, 22, 4, 14, 4, 2]) == "true"
p WaveSorting([0, 1, 2, 3, 3, 3, 3, 3, 8, 9])

def WaveSorting(arr)
  permutations = arr.permutation(arr.size).to_a
  
  permutations.each do |waves|
    result = true
    waves.each_with_index do |num, idx|
      if idx >= waves.size - 1
        next
      elsif idx.even? && num <= waves[idx + 1]
        result = false
        break
      elsif idx.odd? && num >= waves[idx + 1]
        result = false
        break
      end
    end
    return 'true' if result
  end
  'false'
end
