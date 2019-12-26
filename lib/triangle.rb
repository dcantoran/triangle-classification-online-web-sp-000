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
  # @left + @right > @base || @left + @base > @right || @right + @base > @left 
  def kind 
    if greater_than_zero? && @left == @right && @left == @base
      :equilateral
    elsif greater_than_zero?
    end 
  end 
  
  class TriangleError < StandardError
    
  end
end
