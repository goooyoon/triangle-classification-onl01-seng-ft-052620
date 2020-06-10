  class Triangle
  
  attr_accessor :side1, :side2, :side3, :allsides

  def initialize(side1, side2, side3)
    @allsides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
    class TriangleError < StandardError
    end
end