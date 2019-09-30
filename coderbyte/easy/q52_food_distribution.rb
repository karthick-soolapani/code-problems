# Using the Ruby language, have the function FoodDistribution(arr) read the array of numbers stored in arr which will represent the hunger level of different people ranging from 0 to 5 (0 meaning not hungry at all, 5 meaning very hungry). You will also have N sandwiches to give out which will range from 1 to 20. The format of the array will be [N, h1, h2, h3, ...] where N represents the number of sandwiches you have and the rest of the array will represent the hunger levels of different people. Your goal is to minimize the hunger difference between each pair of people in the array using the sandwiches you have available. 

# For example: if arr is [5, 3, 1, 2, 1], this means you have 5 sandwiches to give out. You can distribute them in the following order to the people: 2, 0, 1, 0. Giving these sandwiches to the people their hunger levels now become: [1, 1, 1, 1]. The difference between each pair of people is now 0, the total is also 0, so your program should return 0. Note: You may not have to give out all, or even any, of your sandwiches to produce a minimized difference. 

# Another example: if arr is [4, 5, 2, 3, 1, 0] then you can distribute the sandwiches in the following order: [3, 0, 1, 0, 0] which makes all the hunger levels the following: [2, 2, 2, 1, 0]. The differences between each pair of people is now: 0, 0, 1, 1 and so your program should return the final minimized difference of 2. 

def FoodDistribution(arr)
  total_food = arr[0]
  hunger_levels = arr[1..-1]
  
  permutations = (0..total_food).to_a.repeated_permutation(hunger_levels.size).to_a
  permutations = permutations.select { |comb| comb.sum <= total_food }
  
  min_diff = hunger_levels.max - hunger_levels.min
  permutations.each do |sub_arr|
    reduced_vals = hunger_levels.map.with_index do |hunger, idx|
      reduction = hunger - sub_arr[idx]
      break if reduction.negative?
      reduction
    end

    unless reduced_vals
      next
    else
      diff = []
      reduced_vals.each_cons(2) { |el1, el2| diff << (el2 - el1).abs }
      diff = diff.sum
      min_diff = diff if diff < min_diff
    end
  end
  min_diff
end

p FoodDistribution([5, 3, 1, 2, 1]) == 0
p FoodDistribution([4, 5, 2, 3, 1, 0]) == 2
p FoodDistribution([5, 2, 3, 4, 5]) == 1
p FoodDistribution([3, 2, 1, 0, 4, 1, 0]) == 4
