# Using the Ruby language, have the function TriangleRow(num) take num which will be a positive integer representing some row from Pascal's triangle. Pascal's triangle starts with a [1] at the 0th row of the triangle. Then the first row is [1, 1] and the second row is [1, 2, 1]. The next row begins with 1 and ends with 1, and the inside of the row is determined by adding the k-1 and kth elements from the previous row. The next row in the triangle would then be [1, 3, 3, 1], and so on. The input will be some positive integer and your goal is to return the sum of that row. For example: if num is 4 then your program should return the sum of 1 + 4 + 6 + 4 + 1 which is 16.

def TriangleRow(num)
  return 0 if num <= 0
  pascal_triangle = [1, 1]
  
  (2..num).each do |idx|
    new_triangle = []
    pascal_triangle.each_cons(2) do |num1, num2|
      new_triangle << (num1 + num2)
    end
    pascal_triangle = [pascal_triangle.first] + new_triangle + [pascal_triangle.last]
  end
  pascal_triangle.sum
end

p TriangleRow(4) == 16
p TriangleRow(1) == 2
p TriangleRow(2) == 4
