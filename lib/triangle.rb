  class Triangle
  
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
    class TriangleError < StandardError
    end
end