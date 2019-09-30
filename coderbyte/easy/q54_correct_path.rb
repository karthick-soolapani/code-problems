# Using the Ruby language, have the function CorrectPath(str) read the str parameter being passed, which will represent the movements made in a 5x5 grid of cells starting from the top left position. The characters in the input string will be entirely composed of: r, l, u, d, ?. Each of the characters stand for the direction to take within the grid, for example: r = right, l = left, u = up, d = down. Your goal is to determine what characters the question marks should be in order for a path to be created to go from the top left of the grid all the way to the bottom right without touching previously travelled on cells in the grid. 

# For example: if str is "r?d?drdd" then your program should output the final correct string that will allow a path to be formed from the top left of a 5x5 grid to the bottom right. For this input, your program should therefore return the string rrdrdrdd. There will only ever be one correct path and there will always be at least one question mark within the input string. 

def CorrectPath(str)
  missing_count = str.count('?')
  combinations = %w(u d l r).repeated_combination(missing_count).to_a

  combinations.each do |comb|
    final = str.dup
    comb.each { |el| final.sub!('?', el) }
    horz_count, vert_count = 0, 0

    validity = final.each_char do |dir|
      horz_count += 1 if dir == 'r'
      horz_count -= 1 if dir == 'l'
      vert_count += 1 if dir == 'd'
      vert_count -= 1 if dir == 'u'
      
      break if horz_count < 0 || horz_count > 4
      break if vert_count < 0 || vert_count > 4
    end

    next unless validity
    return final if horz_count == 4 && vert_count == 4
  end
end

p CorrectPath("r?d?drdd") == 'rrdrdrdd'
p CorrectPath("???rrurdr?") == 'dddrrurdrd'
p CorrectPath("drdr??rrddd?") == 'drdruurrdddd'
p CorrectPath("rd?u??dld?ddrr") == 'rdlurrdldrddrr'
