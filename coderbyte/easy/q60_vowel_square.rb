# Using the Ruby language, have the function VowelSquare(strArr) take the strArr parameter being passed which will be a 2D matrix of some arbitrary size filled with letters from the alphabet, and determine if a 2x2 square composed entirely of vowels exists in the matrix. For example: strArr is ["abcd", "eikr", "oufj"] then this matrix looks like the following: 

# a b c d
# e i k r
# o u f j 

# Within this matrix there is a 2x2 square of vowels starting in the second row and first column, namely, ei, ou. If a 2x2 square of vowels is found your program should return the top-left position (row-column) of the square, so for this example your program should return 1-0. If no 2x2 square of vowels exists, then return the string not found. If there are multiple squares of vowels, return the one that is at the most top-left position in the whole matrix. The input matrix will at least be of size 2x2. 

def VowelSquare(strArr)
  vowels = %w(a e i o u)
  matrix = strArr.map(&:chars)
  
  matrix.each_with_index do |sub_arr, y|
    next if y >= matrix.size - 1
    sub_arr.each_with_index do |el, x|
      next if x >= matrix[0].size - 1
      combined_value = [matrix[y][x]]     + [matrix[y + 1][x]] +
                       [matrix[y][x + 1]] + [matrix[y + 1][x + 1]]
      return [y, x].join('-') if (combined_value - vowels).empty?      
    end
  end
  'not found'
end

p VowelSquare(["abcd", "eikr", "oufj"]) == "1-0"
p VowelSquare(["aqrst", "ukaei", "ffooo"]) == "1-2"
p VowelSquare(["gg", "ff"]) == "not found"
