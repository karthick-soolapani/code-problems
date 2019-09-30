# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 5, drop_while

# QUESTION
# Implement Enumerable#drop_while

$stdout.sync = true # To display output immediately on windows using git bash

def drop_while(col)
  col.each_with_index { |el, idx| return col[idx..-1] unless yield(el) }
  []
end

def drop_while(arr)
  arr.each_with_index { |n, i| return arr[i..-1] unless yield(n) } & []
end

def drop_while(arr)
  return_arr = arr.dup
  arr.each { |el| yield(el) ? return_arr.shift : break }
  return_arr
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []

# recursive:
def drop_while(arr, &block)
  (arr.empty? || !block.call(arr.first)) ? arr : drop_while(arr[1..-1], &block)
end

# using Array#index:
def drop_while(arr)
  arr[(arr.index { |elem| !yield(elem) } || arr.size)..-1]
end
