# Using the Ruby language, have the method rectangle_area(str_arr) take the array
# of strings stored in str_arr, which will only contain 4 elements and be in the
# form (x y) where x and y are both integers, and return the area of the rectangle
# formed by the 4 points on a Cartesian grid. The 4 elements will be in arbitrary
# order. For example: if str_arr is ["(0 0)", "(3 0)", "(0 2)", "(3 2)"] then your
# program should return 6 because the width of the rectangle is 3 and the height is 2
# and the area of a rectangle is equal to the width * height.

def rectangle_area(str_arr)
  str_arr = str_arr.sort.map do |co_ord|
    co_ord.delete('()').split.map(&:to_i)
  end
  width = str_arr[2][0] - str_arr[0][0]
  height = str_arr[1][1] - str_arr[0][1]
  width * height
end

p rectangle_area(["(0 0)", "(3 0)", "(0 2)", "(3 2)"]) == 6
p rectangle_area(["(1 1)","(1 3)","(3 1)","(3 3)"]) == 4
p rectangle_area(["(0 0)","(1 0)","(1 1)","(0 1)"]) == 1
p rectangle_area(["(-1 -1)","(0 0)","(-1 0)","(0 -1)"]) == 1
