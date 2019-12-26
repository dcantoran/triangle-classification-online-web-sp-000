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
  
  def legal_triangle?
    @left + @right > @base || @left + @base > @right || @right + @base > @left
  end 
  
  def equilat 
    legal_triangle? && greater_than_zero? && @left == @right && @left == @base && @right == @base
  end 
  
  def isos 
    legal_triangle? && greater_than_zero? && @left == @right && @left != @base || @right == @base && @right != @left || @base == @left && @base != @right
  end 
  
  def scal 
    legal_triangle? && greater_than_zero? && @right != @left && @right != @base
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
    elsif !legal_triangle? || !greater_than_zero?
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
  end
end

