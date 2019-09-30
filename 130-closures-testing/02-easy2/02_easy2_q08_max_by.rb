# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 2, Question 8, max_by

# QUESTION
# Implement Enumerable#max_by

$stdout.sync = true # To display output immediately on windows using git bash

def max_by(arr)
  largest = arr.first
  largest_value = nil

  arr.each do |el|
    value = yield(el)
    return largest unless value.respond_to?(:>)

    if !largest_value || value > largest_value
      largest = el
      largest_value = value
    end
  end

  largest
end

def max_by(arr, &block)
  return nil if arr.empty?

  values = arr.map(&block)
  arr[values.index(values.sort.last)]
end

def max_by(arr)
  max = arr.first
  arr.each { |item| max = item if yield(item) > yield(max) }
  max
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil

p max_by([1, 2, 3]) { |value| nil } == 1
p max_by([1, 2, 3]) { |value| true } == 1
p max_by([1, 2, 3]) { |value| false } == 1
