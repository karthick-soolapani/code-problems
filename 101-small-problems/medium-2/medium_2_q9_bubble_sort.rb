# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 2, Question 9, Bubble Sort

# QUESTION
# Bubble Sort is one of the simplest sorting algorithms available. It isn't an
# efficient algorithm, but it's a great exercise for student developers. In this
# exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are swapped.
# This process is repeated until a complete pass is made without performing any
# swaps; at that point, the Array is completely sorted.

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be "in-place";
# that is, you will mutate the Array passed as an argument. You may assume that
# the Array contains at least 2 elements.

$stdout.sync = true # To display output immediately on windows using git bash

def bubble_sort!(arr)
  sorted = false
  limit = arr.size - 1

  until sorted
    sorted = true
    arr.each_index do |idx|
      break if idx == limit
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        sorted = false
      end
    end
    limit -= 1
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

def bubble_sort!(arr)
  n = arr.size - 1
  n.times { n.times { |i| arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1] } }
end
