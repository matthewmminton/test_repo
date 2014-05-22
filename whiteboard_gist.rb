class Whiteboard
  attr_accessor :contents

  def initialize(contents = [])
    @contents = contents
  end

  def erase
    @contents = []
  end
end
