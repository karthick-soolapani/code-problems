# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 7, Bubble Sort with Blocks

# QUESTION
# Implement Enumerable#all?

$stdout.sync = true # To display output immediately on windows using git bash

def bubble_sort!(arr)
  sorted = false
  limit = arr.size - 1

  until sorted
    sorted = true

    arr.each_index do |idx|
      break if idx == limit

      next if block_given? && yield(arr[idx], arr[idx + 1])
      next if !block_given? && arr[idx] <= arr[idx + 1]

      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      sorted = false
    end

    limit -= 1 # Optimizes by not checking sorted elements
  end
end

def bubble_sort!(arr)
  sorted = false

  until sorted
    sorted = true

    arr.each_cons(2).with_index do |(el1, el2), idx|
      next if block_given? && yield(el1, el2)
      next if !block_given? && el1 <= el2

      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      sorted = false
    end
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)

# FURTHER EXPLORATION
def bubble_sort_by!(arr)
  sorted = false

  until sorted
    sorted = true

    arr.each_cons(2).with_index do |(el1, el2), idx|
      next if block_given? && yield(el1) <= yield(el2)
      next if !block_given? && el1 <= el2

      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      sorted = false
    end
  end
end

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort_by!(array) { |value| value.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)

# RECURSIVE
def bubble_sort!(arr, n = arr.size, &block)
  n.zero? ? (return arr) : new_n = 0
  (1...n).each do |idx|
    a, b = arr[idx - 1, 2].map { |x| block&.arity == 1 ? block.call(x) : x }
    next if (block&.arity == 2 ? block.call(a, b) : a <= b)
    arr[idx - 1], arr[idx], new_n = arr[idx], arr[idx - 1], idx
  end
  bubble_sort!(arr, new_n, &block)
end

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |value| value % 7 }
p array == [14, 22, 12, 6, 27]
