# Using the Ruby language, have the method changing_sequence(arr) take the array
# of numbers stored in arr and return the index at which the numbers stop increasing
# and begin decreasing or stop decreasing and begin increasing. For example: if arr is
# [1, 2, 4, 6, 4, 3, 1] then your program should return 3 because 6 is the last point in
# the array where the numbers were increasing and the next number begins a decreasing sequence.
# The array will contain at least 3 numbers and it may contains only a single sequence,
# increasing or decreasing. If there is only a single sequence in the array, then your program
# should return -1. Indexing should begin with 0.

def changing_sequence(arr)
  pattern = arr[1] - arr[0]
  arr.each_cons(2).with_index do |(num1, num2), idx|
    return idx if (num2 - num1) * pattern < 0
  end
  -1
end

p changing_sequence([1, 2, 4, 6, 4, 3, 1]) == 3
p changing_sequence([-4, -2, 9, 10]) == -1
p changing_sequence([5, 4, 3, 2, 10, 11]) == 3
p changing_sequence([1, 2, 1]) == 1
p changing_sequence([-3, -2, -1, 0, 2]) == -1
