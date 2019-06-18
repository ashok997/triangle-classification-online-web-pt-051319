require 'pry'

class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def illegal?
    if side_a==side_b==side_c==0
      true
    end
  end
   
  
  def kind
    
    if side_a==side_b && side_b==side_c
      :equilateral
    elsif side_a==side_b || side_b==side_c ||side_a==side_c
      :isosceles
    else
      :scalene
    end
    
  end
  
 
  class TriangleError < StandardError
    
  end
  
end
