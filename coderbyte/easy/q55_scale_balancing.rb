# Using the Ruby language, have the function ScaleBalancing(strArr) read strArr which will contain two elements, the first being the two positive integer weights on a balance scale (left and right sides) and the second element being a list of available weights as positive integers. Your goal is to determine if you can balance the scale by using the least amount of weights from the list, but using at most only 2 weights. For example: if strArr is ["[5, 9]", "[1, 2, 6, 7]"] then this means there is a balance scale with a weight of 5 on the left side and 9 on the right side. It is in fact possible to balance this scale by adding a 6 to the left side from the list of weights and adding a 2 to the right side. Both scales will now equal 11 and they are perfectly balanced. Your program should return a comma separated string of the weights that were used from the list in ascending order, so for this example your program should return the string 2,6 

# There will only ever be one unique solution and the list of available weights will not be empty. It is also possible to add two weights to only one side of the scale to balance it. If it is not possible to balance the scale then your program should return the string not possible. 

def scale_balancing(str_arr)
  l_side, r_side = str_arr[0].scan(/\d+/).map(&:to_i)
  abs_diff = (l_side - r_side).abs
  weights = str_arr[1].scan(/\d+/).map(&:to_i)
  
  return abs_diff.to_s if weights.include?(abs_diff)
  
  combinations = weights.combination(2).to_a
  combinations.each do |comb|
    comb = comb.sort
    sum = comb.sum
    
    return comb.join(',') if l_side + sum     == r_side
    return comb.join(',') if l_side           == r_side + sum
    return comb.join(',') if l_side + comb[0] == r_side + comb[1]
    return comb.join(',') if l_side + comb[1] == r_side + comb[0]
  end
  'not possible'
end

p scale_balancing(["[5, 9]", "[1, 6, 2, 7]"]) == '2,6'
p scale_balancing(["[3, 4]", "[1, 2, 7, 7]"]) == '1'
p scale_balancing(["[13, 4]", "[1, 2, 3, 6, 14]"]) == '3,6'
