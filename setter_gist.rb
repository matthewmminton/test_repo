class Car
  def initialize(color, owner, cylinders)
    @color = color
    @owner = owner
    @cylinders = cylinders
  end

  def color
    @color
  end

  def color=(new_color)
    @color = new_color
  end

  def owner=(new_owner)
    @owner = new_owner
  end

  def cylinders=(cylinder_amount)
    @cylinders = cylinder_amount
  end
end
