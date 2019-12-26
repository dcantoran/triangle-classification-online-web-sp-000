class Triangle
  attr_accessor :left, :right, :base
  
  def initialize(left, right, base)
    @left = left 
    @right = right
    @base = base
  end 
  
  def greater_than_zero?
    @left > 0 && @right > 0 && @base > 0
  end 
  
  def equilat 
    greater_than_zero? && @left == @right && @left == @base && @right == @base
  end 
  
  def isos 
    greater_than_zero? && @left == @right && @left != @base || @right == @base && @right != @left || @base == @left && @base != @right
  end 
  
  def scal 
    greater_than_zero? && @right != @left && @right != @base
  end 

  def kind 
    if equilat
      :equilateral
    elsif isos 
      :isosceles
    elsif scal
      :scalene
    elsif !greater_than_zero?
      raise TriangleError
    elsif !equilat
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
  end
end

