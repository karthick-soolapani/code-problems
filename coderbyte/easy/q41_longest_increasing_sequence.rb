# Using the Ruby language, have the function LongestIncreasingSequence(arr) take
# the array of positive integers stored in arr and return the length of the longest
# increasing subsequence (LIS). A LIS is a subset of the original list where the
# numbers are in sorted order, from lowest to highest, and are in increasing order.
# The sequence does not need to be contiguous or unique, and there can be several
# different subsequences. For example: if arr is [4, 3, 5, 1, 6] then a possible
# LIS is [3, 5, 6], and another is [1, 6]. For this input, your program should return
# 3 because that is the length of the longest increasing subsequence.

def LongestIncreasingSequence(arr)
  size = arr.size
  
  while size > 1
    sub_seq = arr.combination(size).to_a
    sub_seq.each do |seq|
      inc_seq = true
      seq.each_cons(2) { |num1, num2| break inc_seq = false unless num2 > num1 }
      return seq.size if inc_seq
    end 
    size -= 1
  end
  1
end

p LongestIncreasingSequence([4, 3, 5, 1, 6]) == 3
p LongestIncreasingSequence([9, 9, 4, 2]) == 1
p LongestIncreasingSequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90]) == 7
p LongestIncreasingSequence([10, 12, 4, 6, 100, 2, 56, 34, 79]) == 4
