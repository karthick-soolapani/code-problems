# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Debugging, Question 6, Sorting Distances

# QUESTION
# When attempting to sort an array of various lengths, we are surprised to see that an ArgumentError is raised. Make the necessary changes to our code so that the various lengths can be properly sorted and line 62 produces the expected output.

$stdout.sync = true # To display output immediately on windows using git bash

class Length
  attr_reader :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def as_kilometers
    convert_to(:km, { km: 1, mi: 1.609344, nmi: 1.8519993 })
  end

  def as_miles
    convert_to(:mi, { km: 0.62137119, mi: 1, nmi: 0.8689762419 })
  end

  def as_nautical_miles
    convert_to(:nmi, { km: 0.539957, mi: 1.15078, nmi: 1 })
  end

  def ==(other)
    case unit
    when :km  then value == other.as_kilometers.value
    when :mi  then value == other.as_miles.value
    when :nmi then value == other.as_nautical_miles.value
    end
  end

  def <(other)
    case unit
    when :km  then value < other.as_kilometers.value
    when :mi  then value < other.as_miles.value
    when :nmi then value < other.as_nautical_miles.value
    end
  end

  def <=(other)
    self < other || self == other
  end

  def >(other)
    !(self <= other)
  end

  def >=(other)
    self > other || self == other
  end

  def to_s
    "#{value} #{unit}"
  end

  def <=>(other)
    if self < other
      -1
    elsif self == other
      0
    else
      1
    end
  end

  private

  def convert_to(target_unit, conversion_factors)
    Length.new((value * conversion_factors[unit]).round(4), target_unit)
  end
end

# Example

puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# => comparison of Length with Length failed (ArgumentError)
# expected output:
# 1 km
# 1 nmi
# 1 mi

# DISCUSSION

# On line 62, we invoke Array#sort. It sorts the elements based on comparisons done by the <=> method. Therefore, the objects in the collection we are sorting must have access to a <=> method. Since our Length class does not implement a <=> method, we get an error saying that the "comparison of Length with Length failed".

# In order to sort this array of Length objects, we need to implement a Length#<=> method, which we do.

# If you want, you can remove the ==, <, <=, >, and >= methods by adding include Comparable (see this link), as it implements all of the comparison methods based on <=>. However, you don't need to perform this step.
