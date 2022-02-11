class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 15
  
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end
end