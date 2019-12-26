class Triangle
  attr_accessor :equilateral, :isosceles, :
  
  def initialize(left, right, base)
    @left = left 
    @right = right
    @base = base
  end 
  
  def kind 
    if @left == @right && @left == @base 
      equilateral
    end 
  end 
end
