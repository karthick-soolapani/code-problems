# Using the Ruby language, have the function SwapCase(str) take the str parameter
# and swap the case of each character. For example: if str is "Hello World" the
# output should be hELLO wORLD. Let numbers and symbols stay the way they are.

def SwapCase(str)
  str.chars.map do |char|
    if (97..122).include?(char.ord)
      diff = char.ord - 'a'.ord
      ('A'.ord + diff).chr 
    elsif (65..90).include?(char.ord)
      diff = char.ord - 'A'.ord
      ('a'.ord + diff).chr
    else
      char
    end
  end.join
end

p SwapCase("Hello World") == 'hELLO wORLD'
p SwapCase("Hello-LOL") == "hELLO-lol"
p SwapCase("Sup DUDE!!?") == "sUP dude!!?"
