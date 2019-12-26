class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(left, right, base)
    @left = left 
    @right = right
    @base = base
  end 
  
  def kind 
    if @left > 0 && @right > 0 && @base > 0 && @left + @right > @base || @left + @base > @right || @right + @base > @left 
      :equilateral
    end 
  end 
  
  class TriangleError < StandardError
    
  end
end
