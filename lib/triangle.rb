class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(left, right, base)
    @left = left 
    @right = right
    @base = base
  end 
  
  def kind 
    if @left == @right && @left == @base 
      @left + @right
    end 
  end 
  
  class TriangleError < StandardError
    
  end
end
