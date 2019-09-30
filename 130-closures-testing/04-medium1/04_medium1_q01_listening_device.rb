# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 1, Listening Device

# QUESTION
# Below we have a listening device. It lets us record something that is said and store it for later use. In general, this is how the device should be used:
# Listen for something, and if anything is said, record it for later use. If nothing is said, then do not record anything.
# Anything that is said is retrieved by this listening device via a block. If nothing is said, then no block will be passed in. The listening device can also output what was recently recorded using a Device#play method.

$stdout.sync = true # To display output immediately on windows using git bash

class Device
  def initialize
    @recordings = []
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts @recordings.empty? ? 'Nothing to play' : @recordings.last
  end

  private

  def record(recording)
    @recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"

# prevents recording if block returns nil/false
def listen
  recording = yield if block_given?
  record(recording) if recording
end

def listen(&block)
  block && record(block.call)
end
