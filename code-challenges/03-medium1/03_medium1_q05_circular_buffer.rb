$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - Integer (size of buffer)
# OUTPUT - Element in Array, Error
# RULES -
#   read when empty -> error BufferEmptyException
#   'nil' writes should be ignored both for write and write!
#   write when full -> error BufferFullException
#   write! when full should overwrite the oldest value

class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(max_size)
    @max_size = max_size
    @buffer = []
  end
  
  def read
    raise BufferEmptyException if @buffer.empty?
    @buffer.shift
  end
  
  def write(element)
    raise BufferFullException if @buffer.size >= @max_size
    add(element)
  end
  
  def write!(element)
    add(element)
    @buffer.shift if @buffer.size > @max_size
  end
  
  def clear
    @buffer = []
  end
  
  private
  
  def add(element)
    @buffer << element unless element.nil?
  end
end

# ALTERNATE SOLUTIONS

#1
class CircularBuffer
  def initialize(max_size)
    @max_size = max_size
    @buffer = []
  end

  def read
    buffer.shift || (raise BufferEmptyException)
  end

  def write(element)
    update_buffer(element) { raise BufferFullException }
  end

  def write!(element)
    update_buffer(element) { buffer.shift }
  end

  def clear
    self.buffer = []
  end

  private

  attr_accessor :buffer
  attr_reader :max_size

  def update_buffer(element)
    return if element.nil?
    yield if buffer.size == max_size
    buffer << element
  end

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end
end

#2
class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(size)
    @buffer = Array.new(size)
    @end_index = 0
    @start_index = 0
    @size = size
  end

  def read
    fail BufferEmptyException if @buffer.all?(&:nil?)
    show = @buffer[@start_index]
    @buffer[@start_index] = nil
    @start_index = increment(@start_index)
    show
  end

  def write(element)
    return if element.nil?
    fail BufferFullException if @buffer.all?
    @buffer[@end_index] = element
    @end_index = increment(@end_index)
  end

  def clear
    initialize(@size)
  end

  def write!(element)
    return if element.nil?
    read if @buffer.all?
    write(element)
  end

  private

  def increment(index)
    return 0 if index == @size - 1
    index + 1
  end
end