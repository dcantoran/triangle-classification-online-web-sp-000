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
    @left == @right && @left == @base
  end 
  
  def isos 
    @left == @right && @left != @base || @right == @base && @right != @left || @base == @left && @base != @right
  end 
  
  def scal 
    @right != @left && @right != @base
  end 

  def kind 
    if !greater_than_zero?
      raise TriangleError
    elsif @left + @right <= @base || @left + @base <= @right || @right + @base <= @left 
      raise TriangleError
    elsif equilat
      :equilateral
    elsif isos 
      :isosceles
    elsif scal
      :scalene
    end 
  end 
  
  class TriangleError < StandardError
  end
end

