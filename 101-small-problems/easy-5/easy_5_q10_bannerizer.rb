# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 5 Question 10, Bannerizer

# QUESTION
# Write a method that will take a short line of text, and print it within a box.

# FURTHER EXPLORATION
# With word wrap, single word not split into multiple lines, no leading whitespace

$stdout.sync = true # To display output immediately on windows using git bash

WRAP_WIDTH = 80

def word_wrap(string)
  return [string] if string.empty?

  arr = string.scan(/\b.{1,#{WRAP_WIDTH - 4}}(?=\s)/) # this won't include the last word
  last_word = ' ' + string.scan(/\S+\Z/).first
  combined_length = arr.last.size + last_word.size
  combined_length > WRAP_WIDTH - 4 ? arr << last_word : arr.last << last_word
  arr.map(&:strip)
end

def print_in_box(string)
  wrapped_arr = word_wrap(string)
  width = wrapped_arr.length > 1 ? WRAP_WIDTH - 4 : wrapped_arr.first.length
  
  content = wrapped_arr.map { |line| '| ' + line.ljust(width) + ' |' }
  border = '+-' + ('-' * width) + '-+'
  empty_line = '| ' + (' ' * width) + ' |'

  puts border
  puts empty_line
  puts content
  puts empty_line
  puts border
end

print_in_box("General relativity (GR, also known as the general theory of relativity or GTR) is the geometric theory of gravitation published by Albert Einstein in 1915 and the current description of gravitation in modern physics. General relativity generalizes special relativity and Newton's law of universal gravitation, providing a unified description of gravity as a geometric property of space and time, or spacetime. In particular, the curvature of spacetime is directly related to the energy and momentum of whatever matter and radiation are present. The relation is specified by the Einstein field equations, a system of partial differential equations.")
print_in_box('')
print_in_box("General relativity (GR, also known as GTR)")

# ALTERNATE SOLUTION

def word_wrap_v2(string)
  return [string] if string.empty

  lines = []
  line = ''
  
  string.split(/\s+/).each do |word|
    if line.empty?
      line = word
    elsif line.size + 1 + word.size > 76
      lines << line
      line = word
    else
      line << ' ' << word
    end
  end
  lines << line unless line.empty?
  lines.map(&:strip)
end
