class Whiteboard
  attr_accessor :contents

  def initialize(contents = [])
    @contents = contents
  end
end

class DryEraseMarker
  attr_reader :color, :capacity
  def initialize(color)
    @color = color
    @capacity = 100
  end

  INK_USE_PER_CHARACTER = 0.01
  def write(contents, whiteboard)
    @capacity = @capacity - (INK_USE_PER_CHARACTER * contents.length)
    whiteboard.contents << contents
  end

  def empty?
    if @capacity == 0
      true
    else
      false
    end
  end
end

marker = DryEraseMarker.new('blue')
whiteboard = Whiteboard.new
puts marker.color
puts marker.empty?
puts marker.capacity

marker.write('Hello', whiteboard)
puts marker.capacity
puts marker.empty?
