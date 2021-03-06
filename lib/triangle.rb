  class Triangle
  
 attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a ==b || b==c || a==c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    true_triangle = [(a+b>c), (a+c>b), (b+c>a)]
    [a,b,c].each do |s|
      true_triangle << false if s <= 0
    end
      raise TriangleError if true_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
  
end