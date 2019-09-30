# Using the Ruby language, have the function MeanMode(arr) take the array of numbers
# stored in arr and return 1 if the mode equals the mean, 0 if they don't equal
# each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the
# mean (3)). The array will not be empty, will only contain positive integers,
# and will not contain more than one mode.

def MeanMode(arr)
  mean = arr.sum / arr.size
  
  mode, count = nil, 0
  arr.uniq.each do |num|
    if arr.count(num) > [1, count].max
      mode, count = num, arr.count(num)
    end
  end
  mean == mode ? 1 : 0
end

p MeanMode([5, 3, 3, 3, 1]) == 1
p MeanMode([1, 2, 3]) == 0
p MeanMode([4, 4, 4, 6, 2]) == 1
