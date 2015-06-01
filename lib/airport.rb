class Airport

  def initialize
    @planes = []
  end

  def accept(plane)
      @planes << plane
  end

  def release(plane)
    @planes.pop
  end

  def plane_count
    @planes.count
  end

end
