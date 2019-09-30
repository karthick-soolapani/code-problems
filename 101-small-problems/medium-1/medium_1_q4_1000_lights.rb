# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Medium 1, Question 4, 1000 Lights

# QUESTION
# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row of
# switches and toggle every one of them. You go back to the beginning, and on this
# second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back
# again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this
# process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

$stdout.sync = true # To display output immediately on windows using git bash

def initialize_lights(num)
  (1..num).to_a.zip(Array.new(num, false)).to_h
end

def on_lights(lights)
  lights.select { |switch_num, status| status == true }.keys
end

def display_lights_status(lights, iteration)
  on_lights = on_lights(lights)
  off_lights = lights.keys - on_lights
  
  on_lights = on_lights.join(', ')
  off_lights = off_lights.join(', ')
  on_lights = 'no' if on_lights.empty?
  off_lights = 'no' if off_lights.empty?
  
  puts "[ROUND #{iteration}] #{off_lights} lights are now off; #{on_lights} lights are now on"
end

def toggle_lights(num)
  lights = initialize_lights(num)

  1.upto(num) do |iteration|
    lights.each do |switch_num, status|
      lights[switch_num] = !status if switch_num % iteration == 0
    end
    display_lights_status(lights, iteration)
  end

  on_lights(lights)
end

p toggle_lights(5)

#1 - USING ONLY ARRAY
def toggle_lights(num)
  switch_status = Array.new(num, false)
  
  1.upto(num) do |n|
    switch_status.map!.with_index { |status, idx| (idx + 1) % n == 0 ? !status : status }
  end
  
  switch_status.map.with_index { |status, idx| idx + 1 if status }.compact
end

#2 - JUST GET ONLY PERFECT SQUARES
def toggle_lights(num)
  (1..num).select { |n| Math.sqrt(n) == Math.sqrt(n).to_i }
end

#3 - GET BASED ON FACTORS COUNT
def factors_count(num)
  (1..num).select { |n| num % n == 0 }.size
end

def toggle_lights(num)
  (1..num).select { |n| factors_count(n).odd? }
end
