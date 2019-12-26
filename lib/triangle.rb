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
    if greater_than_zero? && @left == @right && @left == @base && @right == @base
      :equilateral
    elsif greater_than_zero? && @left == @right && @left != @base || @right == @base && @right != @left || @base == @left && @base != @right
      :isosceles
    elsif greater_than_zero? && @right != @left && @right != @base
      :scalene
    elsif !greater_than_zero?
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
  end
end

