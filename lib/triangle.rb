class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(left, right, base)
    @left = left 
    @right = right
    @base = base
  end 
  
  def greater_than_zero?
    @left > 0 && @right > 0 && @base > 0
  end 
  
  def kind 
    if greater_than_zero? && @left + @right > @base || @left + @base > @right || @right + @base > @left 
      :equilateral
    elsif greater_than_zero?
    end 
  end 
  
  class TriangleError < StandardError
    
  end
end
